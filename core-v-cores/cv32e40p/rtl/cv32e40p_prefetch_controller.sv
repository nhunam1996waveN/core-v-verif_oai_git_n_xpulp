// Copyright 2020 Silicon Labs, Inc.
//
// This file, and derivatives thereof are licensed under the
// Solderpad License, Version 2.0 (the "License").
//
// Use of this file means you agree to the terms and conditions
// of the license and are in full compliance with the License.
//
// You may obtain a copy of the License at:
//
//     https://solderpad.org/licenses/SHL-2.0/
//
// Unless required by applicable law or agreed to in writing, software
// and hardware implementations thereof distributed under the License
// is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED.
//
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// Engineer:       Arjan Bink - arjan.bink@silabs.com                         //
//                                                                            //
// Design Name:    Prefetcher Controller                                      //
// Project Name:   CV32E40P                                                   //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Prefetch Controller which receives control flow            //
//                 information (req_i, branch_*) from the Fetch stage         //
//                 and based on that performs transactions requests to the    //
//                 bus interface adapter instructions. Prefetching based on   //
//                 incrementing addressed is performed when no new control    //
//                 flow change is requested. New transaction requests are     //
//                 only performed if it can be guaranteed that the fetch FIFO //
//                 will not overflow (resulting in a maximum of DEPTH         //
//                 outstanding transactions.                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

module cv32e40p_prefetch_controller 
  import cv32e40p_pkg::*;
  import cv32e40p_apu_core_pkg::*;
  #(
    parameter PULP_OBI = 0,  // Legacy PULP OBI behavior
    parameter DEPTH = 4,  // Prefetch FIFO Depth
    parameter FIFO_ADDR_DEPTH = (DEPTH > 1) ? $clog2(DEPTH) : 1  // Do not override this parameter
) (
    input logic clk,
    input logic rst_n,

    // Fetch stage interface
    input  logic        req_i,  // Fetch stage requests instructions
    input  logic        branch_i,  // Taken branch
    input  logic [31:0] branch_addr_i,  // Taken branch address (only valid when branch_i = 1)
    output logic        busy_o,  // Prefetcher busy

    // input alu_opcode_e  alu_operator_i,
    // input logic        instr64_oe_i,

    // Transaction request interface
    output logic trans_valid_o,  // Transaction request valid (to bus interface adapter)
    input  logic                     trans_ready_i,           // Transaction request ready (transaction gets accepted when trans_valid_o and trans_ready_i are both 1)
    output logic [31:0]              trans_addr_o,            // Transaction address (only valid when trans_valid_o = 1). No stability requirements.

    // Transaction response interface
    input logic resp_valid_i,  // Note: Consumer is assumed to be 'ready' whenever resp_valid_i = 1

    // Fetch interface is ready/valid
    input  logic fetch_ready_i,
    output logic fetch_valid_o,

    // FIFO interface
    output logic fifo_push_o,  // PUSH an instruction into the FIFO
    output logic fifo_pop_o,  // POP an instruction from the FIFO
    output logic fifo_flush_o,  // Flush the FIFO
    output logic                     fifo_flush_but_first_o,  // Flush the FIFO, but keep the first instruction if present
    input logic [FIFO_ADDR_DEPTH:0] fifo_cnt_i,  // Number of valid items/words in the prefetch FIFO
    input logic fifo_empty_i  // FIFO is empty
);

  import cv32e40p_pkg::*;

  prefetch_state_e state_q, next_state;

  logic [FIFO_ADDR_DEPTH:0] cnt_q;  // Transaction counter
  logic [FIFO_ADDR_DEPTH:0] next_cnt;  // Next value for cnt_q
  logic                          count_up;                        // Increment outstanding transaction count by 1 (can happen at same time as count_down)
  logic                          count_down;                      // Decrement outstanding transaction count by 1 (can happen at same time as count_up)

  logic  [FIFO_ADDR_DEPTH:0]     flush_cnt_q;                     // Response flush counter (to flush speculative responses after branch)
  logic [FIFO_ADDR_DEPTH:0] next_flush_cnt;  // Next value for flush_cnt_q

  // Transaction address
  logic [31:0] trans_addr_q, trans_addr_incr;

  // Word-aligned branch target address
  logic [31:0] aligned_branch_addr;  // Word aligned branch target address

  // FIFO auxiliary signal
  logic fifo_valid;  // FIFO output valid (if !fifo_empty)
  logic [FIFO_ADDR_DEPTH:0]      fifo_cnt_masked;                 // FIFO_cnt signal, masked when we are branching to allow a new memory request in that cycle

  //////////////////////////////////////////////////////////////////////////////
  // Prefetch buffer status
  //////////////////////////////////////////////////////////////////////////////

  // Busy if there are ongoing (or potentially outstanding) transfers
  assign busy_o = (cnt_q != 3'b000) || trans_valid_o;

  //////////////////////////////////////////////////////////////////////////////
  // IF/ID interface
  //////////////////////////////////////////////////////////////////////////////

  // Fectch valid control. Fetch never valid if jumping or flushing responses.
  // Fetch valid if there are instructions in FIFO or there is an incoming
  // instruction from memory.
  assign fetch_valid_o = (fifo_valid || resp_valid_i) && !(branch_i || (flush_cnt_q > 0));

  //////////////////////////////////////////////////////////////////////////////
  // Transaction request generation
  //
  // Assumes that corresponding response is at least 1 cycle after request
  //
  // - Only request transaction when fetch stage requires fetch (req_i), and
  // - make sure that FIFO (cv32e40p_fetch_fifo) never overflows (fifo_cnt_i + cnt_q < DEPTH)
  //////////////////////////////////////////////////////////////////////////////

  // Prefetcher will only perform word fetches
  assign aligned_branch_addr = {branch_addr_i[31:2], 2'b00};

  // Increment address (always word fetch)
  assign trans_addr_incr = {trans_addr_q[31:2], 2'b00} + 32'd4;
  logic test_a;
  assign test_a = fifo_cnt_masked + cnt_q < DEPTH;
  // Transaction request generation
  generate
    if (PULP_OBI == 0) begin : gen_no_pulp_obi
      // OBI compatible (avoids combinatorial path from instr_rvalid_i to instr_req_o).
      // Multiple trans_* transactions can be issued (and accepted) before a response
      // (resp_*) is received.
      assign trans_valid_o = req_i && (fifo_cnt_masked + cnt_q < DEPTH);
    end else begin : gen_pulp_obi
      // Legacy PULP OBI behavior, i.e. only issue subsequent transaction if preceding transfer
      // is about to finish (re-introducing timing critical path from instr_rvalid_i to instr_req_o)
      assign trans_valid_o = (cnt_q == 3'b000) ? req_i && (fifo_cnt_masked + cnt_q < DEPTH) : 
                                                 req_i && (fifo_cnt_masked + cnt_q < DEPTH) && (resp_valid_i );
    end
  endgenerate

  // Optimization:
  // fifo_cnt is used to understand if we can perform new memory requests
  // When branching, we flush both the FIFO and the outstanding requests. Therefore,
  // there is surely space for a new request.
  // Masking fifo_cnt in this case allows for making a new request when the FIFO
  // is not empty and we are jumping, and (fifo_cnt_i + cnt_q == DEPTH)
  assign fifo_cnt_masked = branch_i ? '0 : fifo_cnt_i;

  // FSM (state_q, next_state) to control OBI A channel signals.
  always_comb begin
    next_state   = state_q;
    trans_addr_o = trans_addr_q;

    case (state_q)
      // Default state (pass on branch target address or transaction with incremented address)
      IDLE: begin
        begin
          if (branch_i) begin
            // Jumps must have the highest priority (e.g. an interrupt must
            trans_addr_o = aligned_branch_addr;
          end else begin
            trans_addr_o = trans_addr_incr;
          end
        end
        if ((branch_i) && !(trans_valid_o && trans_ready_i)) begin
          // Taken branch, but transaction not yet accepted by bus interface adapter.
          next_state = BRANCH_WAIT;
        end
      end  // case: IDLE

      BRANCH_WAIT: begin
        // Replay previous branch target address (trans_addr_q) or new branch address (this can
        // occur if for example an interrupt is taken right after a taken jump which did not
        // yet have its target address accepted by the bus interface adapter.
        trans_addr_o = branch_i ? aligned_branch_addr : trans_addr_q;
        if (trans_valid_o && trans_ready_i) begin
          // Transaction with branch target address has been accepted. Start regular prefetch again.
          next_state = IDLE;
        end
      end  // case: BRANCH_WAIT
    endcase
  end

  //////////////////////////////////////////////////////////////////////////////
  // FIFO management
  //////////////////////////////////////////////////////////////////////////////

  // Pass on response transfer directly to FIFO (which should be ready, otherwise
  // the corresponding transfer would not have been requested via trans_valid_o).
  // Upon a branch (branch_i) all incoming responses (resp_valid_i) are flushed
  // until the flush count is 0 again. (The flush count is initialized with the
  // number of outstanding transactions at the time of the branch).
  assign fifo_valid = !fifo_empty_i;
  assign fifo_push_o = resp_valid_i && (fifo_valid || !fetch_ready_i) && !(branch_i || (flush_cnt_q > 0));
  assign fifo_pop_o = fifo_valid && fetch_ready_i;

  //////////////////////////////////////////////////////////////////////////////
  // Counter (cnt_q, next_cnt) to count number of outstanding OBI transactions
  // (maximum = DEPTH)
  //
  // Counter overflow is prevented by limiting the number of outstanding transactions
  // to DEPTH. Counter underflow is prevented by the assumption that resp_valid_i = 1
  // will only occur in response to accepted transfer request (as per the OBI protocol).
  //////////////////////////////////////////////////////////////////////////////

  assign count_up = trans_valid_o && trans_ready_i;  // Increment upon accepted transfer request
  assign count_down = resp_valid_i;  // Decrement upon accepted transfer response

  always_comb begin
    case ({
      count_up, count_down
    })
      2'b00: begin
        next_cnt = cnt_q;
      end
      2'b01: begin
        next_cnt = cnt_q - 1'b1;
      end
      2'b10: begin
        next_cnt = cnt_q + 1'b1;
      end
      2'b11: begin
        next_cnt = cnt_q;
      end
    endcase
  end

  //gen_no_hwlp
  // Flush the FIFO if it is not empty
  assign fifo_flush_o             = branch_i;
  assign fifo_flush_but_first_o   = 1'b0;

  //////////////////////////////////////////////////////////////////////////////
  // Counter (flush_cnt_q, next_flush_cnt) to count reseponses to be flushed.
  //////////////////////////////////////////////////////////////////////////////

  always_comb begin
    next_flush_cnt = flush_cnt_q;

    // Number of outstanding transfers at time of branch equals the number of
    // responses that will need to be flushed (responses already in the FIFO will
    // be flushed there)
    if (branch_i) begin
      next_flush_cnt = cnt_q;
      if (resp_valid_i && (cnt_q > 0)) begin
        next_flush_cnt = cnt_q - 1'b1;
      end
    end else if (resp_valid_i && (flush_cnt_q > 0)) begin
      next_flush_cnt = flush_cnt_q - 1'b1;
    end
  end

  //////////////////////////////////////////////////////////////////////////////
  // Registers
  //////////////////////////////////////////////////////////////////////////////

  always_ff @(posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0) begin
      state_q      <= IDLE;
      cnt_q        <= '0;
      flush_cnt_q  <= '0;
      trans_addr_q <= '0;
    end else begin
      state_q     <= next_state;
      cnt_q       <= next_cnt;
      flush_cnt_q <= next_flush_cnt;
      if (branch_i || (trans_valid_o && trans_ready_i)) begin
        trans_addr_q <= trans_addr_o;
      end
    end
  end

endmodule  // cv32e40p_prefetch_controller
