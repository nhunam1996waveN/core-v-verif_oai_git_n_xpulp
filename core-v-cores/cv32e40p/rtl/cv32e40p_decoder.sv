// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// Engineer        Andreas Traber - atraber@iis.ee.ethz.ch                    //
//                                                                            //
// Additional contributions by:                                               //
//                 Matthias Baer - baermatt@student.ethz.ch                   //
//                 Igor Loi - igor.loi@unibo.it                               //
//                 Sven Stucki - svstucki@student.ethz.ch                     //
//                 Davide Schiavone - pschiavo@iis.ee.ethz.ch                 //
//                                                                            //
// Design Name:    Decoder                                                    //
// Project Name:   RI5CY                                                      //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Decoder                                                    //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

module cv32e40p_decoder import cv32e40p_pkg::*; import cv32e40p_apu_core_pkg::*; import cv32e40p_fpu_pkg::*;
#(
  parameter PULP_XPULP        = 1,              // PULP ISA Extension (including PULP specific CSRs and hardware loop, excluding p.elw)
  parameter PULP_CLUSTER      =  0,
  parameter A_EXTENSION       = 0,
  parameter FPU               = 0,
  parameter PULP_SECURE       = 0,
  parameter USE_PMP           = 0,
  parameter APU_WOP_CPU       = 6,
  parameter DEBUG_TRIGGER_EN  = 1
)
(
  // singals running to/from controller
  input  logic        deassert_we_i,           // deassert we, we are stalled or not active

  output logic        illegal_insn_o,          // illegal instruction encountered
  output logic        ebrk_insn_o,             // trap instruction encountered

  output logic        mret_insn_o,             // return from exception instruction encountered (M)
  output logic        uret_insn_o,             // return from exception instruction encountered (S)
  output logic        dret_insn_o,             // return from debug (M)

  output logic        mret_dec_o,              // return from exception instruction encountered (M) without deassert
  output logic        uret_dec_o,              // return from exception instruction encountered (S) without deassert
  output logic        dret_dec_o,              // return from debug (M) without deassert

  output logic        ecall_insn_o,            // environment call (syscall) instruction encountered
  output logic        wfi_o       ,            // pipeline flush is requested

  output logic        fencei_insn_o,           // fence.i instruction

  output logic        rega_used_o,             // rs1 is used by current instruction
  output logic        regb_used_o,             // rs2 is used by current instruction
  output logic        regc_used_o,             // rs3 is used by current instruction

  output logic        reg_fp_a_o,              // fp reg a is used
  output logic        reg_fp_b_o,              // fp reg b is used
  output logic        reg_fp_c_o,              // fp reg c is used
  output logic        reg_fp_d_o,              // fp reg d is used

  output logic [ 0:0] bmask_a_mux_o,           // bit manipulation mask a mux
  output logic [ 1:0] bmask_b_mux_o,           // bit manipulation mask b mux
  output logic        alu_bmask_a_mux_sel_o,   // bit manipulation mask a mux (reg or imm)
  output logic        alu_bmask_b_mux_sel_o,   // bit manipulation mask b mux (reg or imm)

  // from IF/ID pipeline
  input  logic [31:0] instr_rdata_i,           // instruction read from instr memory/cache
  input  logic        illegal_c_insn_i,        // compressed instruction decode failed
  // ALU signals
  output logic        alu_en_o,                // ALU enable
  output alu_opcode_e alu_operator_o, // ALU operation selection
  output logic        instr64_oe_o,
  output logic [2:0]  alu_op_a_mux_sel_o,      // operand a selection: reg value, PC, immediate or zero
  output logic [2:0]  alu_op_b_mux_sel_o,      // operand b selection: reg value or immediate
  output logic [1:0]  alu_op_c_mux_sel_o,      // operand c selection: reg value or jump target
  output logic [1:0]  alu_vec_mode_o,          // selects between 32 bit, 16 bit and 8 bit vectorial modes
  output logic        scalar_replication_o,    // scalar replication enable
  output logic        scalar_replication_c_o,  // scalar replication enable for operand C
  output logic [0:0]  imm_a_mux_sel_o,         // immediate selection for operand a
  output logic [3:0]  imm_b_mux_sel_o,         // immediate selection for operand b
  output logic [1:0]  regc_mux_o,              // register c selection: S3, RD or 0
  output logic        is_clpx_o,               // whether the instruction is complex (pulpv3) or not
  output logic        is_subrot_o,

  // MUL related control signals
  output mul_opcode_e mult_operator_o,         // Multiplication operation selection
  output logic        mult_int_en_o,           // perform integer multiplication
  output logic        mult_dot_en_o,           // perform dot multiplication
  output logic [0:0]  mult_imm_mux_o,          // Multiplication immediate mux selector
  output logic        mult_sel_subword_o,      // Select subwords for 16x16 bit of multiplier
  output logic [1:0]  mult_signed_mode_o,      // Multiplication in signed mode
  output logic [1:0]  mult_dot_signed_o,       // Dot product in signed mode

  // FPU
  input  logic [C_RM-1:0]             frm_i,   // Rounding mode from float CSR

  output logic [cv32e40p_fpu_pkg::FP_FORMAT_BITS-1:0]  fpu_dst_fmt_o,   // fpu destination format
  output logic [cv32e40p_fpu_pkg::FP_FORMAT_BITS-1:0]  fpu_src_fmt_o,   // fpu source format
  output logic [cv32e40p_fpu_pkg::INT_FORMAT_BITS-1:0] fpu_int_fmt_o,   // fpu integer format (for casts)

  // APU
  output logic                apu_en_o,
  output logic [APU_WOP_CPU-1:0]  apu_op_o,
  output logic [1:0]          apu_lat_o,
  output logic [2:0]          fp_rnd_mode_o,

  // register file related signals
  output logic        regfile_mem_we_o,        // write enable for regfile
  output logic        regfile_alu_we_o,        // write enable for 2nd regfile port
  output logic        regfile_alu_we_dec_o,    // write enable for 2nd regfile port without deassert
  output logic        regfile_alu_waddr_sel_o, // Select register write address for ALU/MUL operations

  // CSR manipulation
  output logic        csr_access_o,            // access to CSR
  output logic        csr_status_o,            // access to xstatus CSR
  output csr_opcode_e csr_op_o,                // operation to perform on CSR
  input  PrivLvl_t    current_priv_lvl_i,      // The current privilege level

  // LD/ST unit signals
  output logic        data_req_o,              // start transaction to data memory
  output logic        data_we_o,               // data memory write enable
  output logic        prepost_useincr_o,       // when not active bypass the alu result for address calculation
  output logic [1:0]  data_type_o,             // data type on data memory: byte, half word or word
  output logic [1:0]  data_sign_extension_o,   // sign extension on read data from data memory / NaN boxing
  output logic [1:0]  data_reg_offset_o,       // offset in byte inside register for stores
  output logic        data_load_event_o,       // data request is in the special event range

  // Atomic memory access
  output  logic [5:0] atop_o,

  // hwloop signals
  output logic [2:0]  hwlp_we_o,               // write enable for hwloop regs
  output logic        hwlp_target_mux_sel_o,   // selects immediate for hwloop target
  output logic        hwlp_start_mux_sel_o,    // selects hwloop start address input
  output logic        hwlp_cnt_mux_sel_o,      // selects hwloop counter input

  input  logic        debug_mode_i,            // processor is in debug mode
  input  logic        debug_wfi_no_sleep_i,    // do not let WFI cause sleep

  // jump/branches
  output logic [1:0]  ctrl_transfer_insn_in_dec_o,  // control transfer instruction without deassert
  output logic [1:0]  ctrl_transfer_insn_in_id_o,   // control transfer instructio is decoded
  output logic [1:0]  ctrl_transfer_target_mux_sel_o,        // jump target selection

  // HPM related control signals
  input  logic [31:0] mcounteren_i
);

  // write enable/request control
  logic       regfile_mem_we;
  logic       regfile_alu_we;
  logic       data_req;
  logic [2:0] hwlp_we;
  logic       csr_illegal;
  logic [1:0] ctrl_transfer_insn;

  csr_opcode_e csr_op;

  logic       alu_en;
  logic       mult_int_en;
  logic       mult_dot_en;
  logic       apu_en;

  // this instruction needs floating-point rounding-mode verification
  logic check_fprm;

  logic [cv32e40p_fpu_pkg::OP_BITS-1:0] fpu_op;     // fpu operation
  logic                      fpu_op_mod; // fpu operation modifier
  logic                      fpu_vec_op; // fpu vectorial operation
  // unittypes for latencies to help us decode for APU
  enum logic[1:0] {ADDMUL, DIVSQRT, NONCOMP, CONV} fp_op_group;


  /////////////////////////////////////////////
  //   ____                     _            //
  //  |  _ \  ___  ___ ___   __| | ___ _ __  //
  //  | | | |/ _ \/ __/ _ \ / _` |/ _ \ '__| //
  //  | |_| |  __/ (_| (_) | (_| |  __/ |    //
  //  |____/ \___|\___\___/ \__,_|\___|_|    //
  //                                         //
  /////////////////////////////////////////////
  logic debug_csr;
  logic debug_add_decode;
  csr_opcode_e debug_csr_op;
  always_comb
  begin
    debug_csr                   = 'b0;
    debug_add_decode            = 'b0;
    instr64_oe_o                = 'b0;
    ctrl_transfer_insn          = BRANCH_NONE;
    ctrl_transfer_target_mux_sel_o       = JT_JAL;
    alu_en                      = 1'b1;
    alu_operator_o              = ALU_SLTU;
    alu_op_a_mux_sel_o          = OP_A_REGA_OR_FWD;
    alu_op_b_mux_sel_o          = OP_B_REGB_OR_FWD;
    alu_op_c_mux_sel_o          = OP_C_REGC_OR_FWD;
    alu_vec_mode_o              = VEC_MODE32;
    scalar_replication_o        = 1'b0;
    scalar_replication_c_o      = 1'b0;
    regc_mux_o                  = REGC_ZERO;
    imm_a_mux_sel_o             = IMMA_ZERO;
    imm_b_mux_sel_o             = IMMB_I;

    mult_operator_o             = MUL_I;
    mult_int_en                 = 1'b0;
    mult_dot_en                 = 1'b0;
    mult_imm_mux_o              = MIMM_ZERO;
    mult_signed_mode_o          = 2'b00;
    mult_sel_subword_o          = 1'b0;
    mult_dot_signed_o           = 2'b00;

    apu_en                      = 1'b0;
    apu_op_o                    = '0;
    apu_lat_o                   = '0;
    fp_rnd_mode_o               = '0;
    fpu_op                      = cv32e40p_fpu_pkg::SGNJ;
    fpu_op_mod                  = 1'b0;
    fpu_vec_op                  = 1'b0;
    fpu_dst_fmt_o               = cv32e40p_fpu_pkg::FP32;
    fpu_src_fmt_o               = cv32e40p_fpu_pkg::FP32;
    fpu_int_fmt_o               = cv32e40p_fpu_pkg::INT32;
    check_fprm                  = 1'b0;
    fp_op_group                 = ADDMUL;

    regfile_mem_we              = 1'b0;
    regfile_alu_we              = 1'b0;
    regfile_alu_waddr_sel_o     = 1'b1;

    prepost_useincr_o           = 1'b1;

    hwlp_we                     = 3'b0;
    hwlp_target_mux_sel_o       = 1'b0;
    hwlp_start_mux_sel_o        = 1'b0;
    hwlp_cnt_mux_sel_o          = 1'b0;

    csr_access_o                = 1'b0;
    csr_status_o                = 1'b0;
    csr_illegal                 = 1'b0;
    csr_op                      = CSR_OP_READ;
    mret_insn_o                 = 1'b0;
    uret_insn_o                 = 1'b0;

    dret_insn_o                 = 1'b0;

    data_we_o                   = 1'b0;
    data_type_o                 = 2'b00;
    data_sign_extension_o       = 2'b00;
    data_reg_offset_o           = 2'b00;
    data_req                    = 1'b0;
    data_load_event_o           = 1'b0;

    atop_o                      = 6'b000000;

    illegal_insn_o              = 1'b0;
    ebrk_insn_o                 = 1'b0;
    ecall_insn_o                = 1'b0;
    wfi_o                       = 1'b0;

    fencei_insn_o               = 1'b0;

    rega_used_o                 = 1'b0;
    regb_used_o                 = 1'b0;
    regc_used_o                 = 1'b0;
    reg_fp_a_o                  = 1'b0;
    reg_fp_b_o                  = 1'b0;
    reg_fp_c_o                  = 1'b0;
    reg_fp_d_o                  = 1'b0;

    bmask_a_mux_o               = BMASK_A_ZERO;
    bmask_b_mux_o               = BMASK_B_ZERO;
    alu_bmask_a_mux_sel_o       = BMASK_A_IMM;
    alu_bmask_b_mux_sel_o       = BMASK_B_IMM;

    is_clpx_o                   = 1'b0;
    is_subrot_o                 = 1'b0;

    mret_dec_o                  = 1'b0;
    uret_dec_o                  = 1'b0;
    dret_dec_o                  = 1'b0;

    unique case (instr_rdata_i[6:0])

      //////////////////////////////////////
      //      _ _   _ __  __ ____  ____   //
      //     | | | | |  \/  |  _ \/ ___|  //
      //  _  | | | | | |\/| | |_) \___ \  //
      // | |_| | |_| | |  | |  __/ ___) | //
      //  \___/ \___/|_|  |_|_|   |____/  //
      //                                  //
      //////////////////////////////////////

      OPCODE_JAL: begin   // Jump and Link
        ctrl_transfer_target_mux_sel_o = JT_JAL;
        ctrl_transfer_insn    = BRANCH_JAL;
        // Calculate and store PC+4
        alu_op_a_mux_sel_o  = OP_A_CURRPC;
        alu_op_b_mux_sel_o  = OP_B_IMM;
        imm_b_mux_sel_o     = IMMB_PCINCR;
        alu_operator_o      = ALU_ADD;
        regfile_alu_we      = 1'b1;
        // Calculate jump target (= PC + UJ imm)
      end

      OPCODE_JALR: begin  // Jump and Link Register
        ctrl_transfer_target_mux_sel_o = JT_JALR;
        ctrl_transfer_insn    = BRANCH_JALR;
        // Calculate and store PC+4
        alu_op_a_mux_sel_o  = OP_A_CURRPC;
        alu_op_b_mux_sel_o  = OP_B_IMM;
        imm_b_mux_sel_o     = IMMB_PCINCR;
        alu_operator_o      = ALU_ADD;
        regfile_alu_we      = 1'b1;
        // Calculate jump target (= RS1 + I imm)
        rega_used_o         = 1'b1;

        if (instr_rdata_i[14:12] != 3'b0) begin
          ctrl_transfer_insn = BRANCH_NONE;
          regfile_alu_we     = 1'b0;
          illegal_insn_o     = 1'b1;
        end
      end

      OPCODE_BRANCH: begin // Branch
        ctrl_transfer_target_mux_sel_o = JT_COND;
        ctrl_transfer_insn    = BRANCH_COND;
        alu_op_c_mux_sel_o    = OP_C_JT;
        rega_used_o           = 1'b1;
        regb_used_o           = 1'b1;

        unique case (instr_rdata_i[14:12])
          3'b000: alu_operator_o = ALU_EQ;
          3'b001: alu_operator_o = ALU_NE;
          3'b100: alu_operator_o = ALU_LTS;
          3'b101: alu_operator_o = ALU_GES;
          3'b110: alu_operator_o = ALU_LTU;
          3'b111: alu_operator_o = ALU_GEU;
        endcase
      end


      //////////////////////////////////
      //  _     ____    ______ _____  //
      // | |   |  _ \  / / ___|_   _| //
      // | |   | | | |/ /\___ \ | |   //
      // | |___| |_| / /  ___) || |   //
      // |_____|____/_/  |____/ |_|   //
      //                              //
      //////////////////////////////////

      OPCODE_STORE,
      OPCODE_STORE_POST: begin
        debug_add_decode = 1'b1;
        // if (PULP_XPULP || (instr_rdata_i[6:0] == OPCODE_STORE)) begin //nhunammm
        begin
          data_req       = 1'b1;
          data_we_o      = 1'b1;
          rega_used_o    = 1'b1;
          regb_used_o    = 1'b1;
          alu_operator_o = ALU_ADD;
          // pass write data through ALU operand c
          alu_op_c_mux_sel_o = OP_C_REGB_OR_FWD;

          // post-increment setup
          if (instr_rdata_i[6:0] == OPCODE_STORE_POST) begin
            prepost_useincr_o       = 1'b0;
            regfile_alu_waddr_sel_o = 1'b0;
            regfile_alu_we          = 1'b1;
          end

          if (instr_rdata_i[14] == 1'b0) begin
            // offset from immediate
            imm_b_mux_sel_o     = IMMB_S;
            alu_op_b_mux_sel_o  = OP_B_IMM;
          end else begin
            // offset from register
            regc_used_o        = 1'b1;
            alu_op_b_mux_sel_o = OP_B_REGC_OR_FWD;
            regc_mux_o         = REGC_RD;
          end

          // store size
          unique case (instr_rdata_i[13:12])
            2'b00: data_type_o = 2'b10; // SB
            2'b01: data_type_o = 2'b01; // SH
            2'b10: data_type_o = 2'b00; // SW
            default: begin
              data_req       = 1'b0;
              data_we_o      = 1'b0;
              illegal_insn_o = 1'b1;
            end
          endcase
        end
      end

      OPCODE_LOAD,
      OPCODE_LOAD_POST: begin
        // if (PULP_XPULP || (instr_rdata_i[6:0] == OPCODE_LOAD)) begin //nhunammm
        begin
          debug_add_decode = 1'b1;
          data_req         = 1'b1;
          regfile_mem_we   = 1'b1;
          rega_used_o      = 1'b1;
          data_type_o      = 2'b00;
          // offset from immediate
          alu_operator_o      = ALU_ADD;
          alu_op_b_mux_sel_o  = OP_B_IMM;
          imm_b_mux_sel_o     = IMMB_I;

          // post-increment setup
          if (instr_rdata_i[6:0] == OPCODE_LOAD_POST) begin
            prepost_useincr_o       = 1'b0;
            regfile_alu_waddr_sel_o = 1'b0;
            regfile_alu_we          = 1'b1;
          end

          // sign/zero extension
          data_sign_extension_o = {1'b0,~instr_rdata_i[14]};

          // load size
          unique case (instr_rdata_i[13:12])
            2'b00:   data_type_o = 2'b10; // LB
            2'b01:   data_type_o = 2'b01; // LH
            2'b10:   data_type_o = 2'b00; // LW
            default: data_type_o = 2'b00; // illegal or reg-reg
          endcase

          // reg-reg load (different encoding)
          if (instr_rdata_i[14:12] == 3'b111) begin
            // offset from RS2
            regb_used_o        = 1'b1;
            alu_op_b_mux_sel_o = OP_B_REGB_OR_FWD;

            // sign/zero extension
            data_sign_extension_o = {1'b0, ~instr_rdata_i[30]};

            // load size
            unique case (instr_rdata_i[31:25])
              7'b0000_000,
              7'b0100_000: data_type_o = 2'b10; // LB, LBU
              7'b0001_000,
              7'b0101_000: data_type_o = 2'b01; // LH, LHU
              7'b0010_000: data_type_o = 2'b00; // LW
              default: begin
                illegal_insn_o = 1'b1;
              end
            endcase
          end

          // special p.elw (event load)
          if (instr_rdata_i[14:12] == 3'b110) begin
            if (PULP_CLUSTER && (instr_rdata_i[6:0] == OPCODE_LOAD)) begin
              data_load_event_o = 1'b1;
            end else begin
              // p.elw only valid for PULP_CLUSTER = 1; p.elw with post increment does not exist
              illegal_insn_o = 1'b1;
            end
          end

          if (instr_rdata_i[14:12] == 3'b011) begin
            // LD -> RV64 only
            illegal_insn_o = 1'b1;
          end
        end
      end

      OPCODE_AMO: begin
        if (A_EXTENSION) begin : decode_amo
          if (instr_rdata_i[14:12] == 3'b010) begin // RV32A Extension (word)
            data_req          = 1'b1;
            data_type_o       = 2'b00;
            rega_used_o       = 1'b1;
            regb_used_o       = 1'b1;
            regfile_mem_we    = 1'b1;
            prepost_useincr_o = 1'b0; // only use alu_operand_a as address (not a+b)
            alu_op_a_mux_sel_o = OP_A_REGA_OR_FWD;

            data_sign_extension_o = 1'b1;

            // Apply AMO instruction at `atop_o`.
            atop_o = {1'b1, instr_rdata_i[31:27]};

            unique case (instr_rdata_i[31:27])
              AMO_LR: begin
                data_we_o = 1'b0;
              end
              AMO_SC,
              AMO_SWAP,
              AMO_ADD,
              AMO_XOR,
              AMO_AND,
              AMO_OR,
              AMO_MIN,
              AMO_MAX,
              AMO_MINU,
              AMO_MAXU: begin
                data_we_o = 1'b1;
                alu_op_c_mux_sel_o = OP_C_REGB_OR_FWD; // pass write data through ALU operand c
              end
              default : illegal_insn_o = 1'b1;
            endcase
          end
          else begin
            illegal_insn_o = 1'b1;
          end
        end else begin : no_decode_amo
          illegal_insn_o = 1'b1;
        end
      end


      //////////////////////////
      //     _    _    _   _  //
      //    / \  | |  | | | | //
      //   / _ \ | |  | | | | //
      //  / ___ \| |__| |_| | //
      // /_/   \_\_____\___/  //
      //                      //
      //////////////////////////

      OPCODE_LUI: begin  // Load Upper Immediate
        alu_op_a_mux_sel_o  = OP_A_IMM;
        alu_op_b_mux_sel_o  = OP_B_IMM;
        imm_a_mux_sel_o     = IMMA_ZERO;
        imm_b_mux_sel_o     = IMMB_U;
        alu_operator_o      = ALU_ADD;
        regfile_alu_we      = 1'b1;
      end

      OPCODE_AUIPC: begin  // Add Upper Immediate to PC
        alu_op_a_mux_sel_o  = OP_A_CURRPC;
        alu_op_b_mux_sel_o  = OP_B_IMM;
        imm_b_mux_sel_o     = IMMB_U;
        alu_operator_o      = ALU_ADD;
        regfile_alu_we      = 1'b1;
      end

      OPCODE_OPIMM: begin // Register-Immediate ALU Operations
        alu_op_b_mux_sel_o  = OP_B_IMM;
        imm_b_mux_sel_o     = IMMB_I;
        regfile_alu_we      = 1'b1;
        rega_used_o         = 1'b1;

        unique case (instr_rdata_i[14:12])
          3'b000: alu_operator_o = ALU_ADD;  // Add Immediate
          3'b010: alu_operator_o = ALU_SLTS; // Set to one if Lower Than Immediate
          3'b011: alu_operator_o = ALU_SLTU; // Set to one if Lower Than Immediate Unsigned
          3'b100: alu_operator_o = ALU_XOR;  // Exclusive Or with Immediate
          3'b110: alu_operator_o = ALU_OR;   // Or with Immediate
          3'b111: alu_operator_o = ALU_AND;  // And with Immediate

          3'b001: begin
            if(instr_rdata_i[31:25] == 7'b0110000 && instr_rdata_i[24:20] == 4'b0000) begin 
              alu_operator_o     = CLZ;
            end
            else begin 
              alu_operator_o = ALU_SLL;  // Shift Left Logical by Immediate
              if (instr_rdata_i[31:25] != 7'b0)
                illegal_insn_o = 1'b1;
            end
          end

          3'b101: begin
            if (instr_rdata_i[31:26] == 6'b011010) begin
              if(instr_rdata_i[25:20] == 5'b001000) begin 
                alu_operator_o = REV8H;
                debug_csr      = 1;
              end
              else if (instr_rdata_i[25:20] == 5'b01111) alu_operator_o = REV;
            end
            else if(instr_rdata_i[26]) begin 
              alu_en         = 1;
              alu_operator_o = FSRI;
              regc_mux_o  = REGC_S4;
              regc_used_o         = 1'b1;
            end
            else if (instr_rdata_i[31:25] == 7'b0)
              alu_operator_o = ALU_SRL;  // Shift Right Logical by Immediate
            else if (instr_rdata_i[31:25] == 7'b010_0000)
              alu_operator_o = ALU_SRA;  // Shift Right Arithmetically by Immediate
            else
              illegal_insn_o = 1'b1;
          end


        endcase
      end

      OPCODE_OP: begin  // Register-Register ALU operation
        
        // PREFIX 11
        if (instr_rdata_i[31:30] == 2'b11) begin
          if (PULP_XPULP) begin
            //////////////////////////////
            // IMMEDIATE BIT-MANIPULATION
            //////////////////////////////

            regfile_alu_we = 1'b1;
            rega_used_o    = 1'b1;

            // bit-manipulation instructions
            bmask_a_mux_o       = BMASK_A_S3;
            bmask_b_mux_o       = BMASK_B_S2;
            alu_op_b_mux_sel_o  = OP_B_IMM;

            unique case (instr_rdata_i[14:12])
              3'b000: begin
                alu_operator_o  = ALU_BEXT;
                imm_b_mux_sel_o = IMMB_S2;
                bmask_b_mux_o   = BMASK_B_ZERO;
              end
              3'b001: begin
                alu_operator_o  = ALU_BEXTU;
                imm_b_mux_sel_o = IMMB_S2;
                bmask_b_mux_o   = BMASK_B_ZERO;
              end
              3'b010: begin
                alu_operator_o  = ALU_BINS;
                imm_b_mux_sel_o = IMMB_S2;
                regc_used_o     = 1'b1;
                regc_mux_o      = REGC_RD;
              end
              3'b011: begin
                alu_operator_o = ALU_BCLR;
              end
              3'b100: begin
                alu_operator_o = ALU_BSET;
              end
              3'b101: begin
                alu_operator_o        = ALU_BREV;
                // Enable write back to RD
                regc_used_o           = 1'b1;
                regc_mux_o            = REGC_RD;
                // Extract the source register on operand a
                imm_b_mux_sel_o       = IMMB_S2;
                // Map the radix to bmask_a immediate
                alu_bmask_a_mux_sel_o = BMASK_A_IMM;
              end
              default: illegal_insn_o = 1'b1;
            endcase
          end else begin
            illegal_insn_o = 1'b1;
          end
        end

        // PREFIX 10
        else if (instr_rdata_i[31:30] == 2'b10) begin
          //////////////////////////////
          // REGISTER BIT-MANIPULATION
          //////////////////////////////
          if (instr_rdata_i[29:25]==5'b00000) begin
            if (PULP_XPULP) begin
              regfile_alu_we = 1'b1;
              rega_used_o    = 1'b1;

              bmask_a_mux_o       = BMASK_A_S3;
              bmask_b_mux_o       = BMASK_B_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;

              unique case (instr_rdata_i[14:12])
                3'b000: begin
                  alu_operator_o  = ALU_BEXT;
                  imm_b_mux_sel_o = IMMB_S2;
                  bmask_b_mux_o   = BMASK_B_ZERO;
                  //register variant
                  alu_op_b_mux_sel_o     = OP_B_BMASK;
                  alu_bmask_a_mux_sel_o  = BMASK_A_REG;
                  regb_used_o            = 1'b1;
                end
                3'b001: begin
                  alu_operator_o  = ALU_BEXTU;
                  imm_b_mux_sel_o = IMMB_S2;
                  bmask_b_mux_o   = BMASK_B_ZERO;
                  //register variant
                  alu_op_b_mux_sel_o     = OP_B_BMASK;
                  alu_bmask_a_mux_sel_o  = BMASK_A_REG;
                  regb_used_o            = 1'b1;
                end
                3'b010: begin
                  alu_operator_o      = ALU_BINS;
                  imm_b_mux_sel_o     = IMMB_S2;
                  regc_used_o         = 1'b1;
                  regc_mux_o          = REGC_RD;
                  //register variant
                  alu_op_b_mux_sel_o     = OP_B_BMASK;
                  alu_bmask_a_mux_sel_o  = BMASK_A_REG;
                  alu_bmask_b_mux_sel_o  = BMASK_B_REG;
                  regb_used_o            = 1'b1;
                end
                3'b011: begin
                  alu_operator_o = ALU_BCLR;
                  //register variant
                  regb_used_o            = 1'b1;
                  alu_bmask_a_mux_sel_o  = BMASK_A_REG;
                  alu_bmask_b_mux_sel_o  = BMASK_B_REG;
                end
                3'b100: begin
                  alu_operator_o = ALU_BSET;
                  //register variant
                  regb_used_o            = 1'b1;
                  alu_bmask_a_mux_sel_o  = BMASK_A_REG;
                  alu_bmask_b_mux_sel_o  = BMASK_B_REG;
                end
                default: illegal_insn_o = 1'b1;
              endcase
            end else begin
              illegal_insn_o = 1'b1;
            end

          ///////////////////////
          // VECTORIAL FLOAT OPS
          ///////////////////////
          end else begin
            // Vectorial FP not available in 'old' shared FPU
            if (FPU==1 && C_XFVEC) begin

              // using APU instead of ALU
              apu_en           = 1'b1;
              alu_en           = 1'b0;
              // by default, set all registers to FP registers and use 2
              rega_used_o      = 1'b1;
              regb_used_o      = 1'b1;
              reg_fp_a_o       = 1'b1;
              reg_fp_b_o       = 1'b1;
              reg_fp_d_o       = 1'b1;
              fpu_vec_op       = 1'b1;
              // replication bit comes from instruction (can change for some ops)
              scalar_replication_o = instr_rdata_i[14];
              // by default we need to verify rm is legal but assume it is for now
              check_fprm       = 1'b1;
              fp_rnd_mode_o    = frm_i; // all vectorial ops have rm from fcsr

              // Decode Formats
              unique case (instr_rdata_i[13:12])
                // FP32
                2'b00: begin
                  fpu_dst_fmt_o  = cv32e40p_fpu_pkg::FP32;
                  alu_vec_mode_o = VEC_MODE32;
                end
                // FP16ALT
                2'b01: begin
                  fpu_dst_fmt_o  = cv32e40p_fpu_pkg::FP16ALT;
                  alu_vec_mode_o = VEC_MODE16;
                end
                // FP16
                2'b10: begin
                  fpu_dst_fmt_o  = cv32e40p_fpu_pkg::FP16;
                  alu_vec_mode_o = VEC_MODE16;
                end
                // FP8
                2'b11: begin
                  fpu_dst_fmt_o  = cv32e40p_fpu_pkg::FP8;
                  alu_vec_mode_o = VEC_MODE8;
                end
              endcase

              // By default, src=dst
              fpu_src_fmt_o = fpu_dst_fmt_o;

              // decode vectorial FP instruction
              unique case (instr_rdata_i[29:25]) inside
                // vfadd.vfmt - Vectorial FP Addition
                5'b00001: begin
                  fpu_op      = cv32e40p_fpu_pkg::ADD;
                  fp_op_group = ADDMUL;
                  // FPnew needs addition operands as operand B and C
                  alu_op_b_mux_sel_o     = OP_B_REGA_OR_FWD;
                  alu_op_c_mux_sel_o     = OP_C_REGB_OR_FWD;
                  scalar_replication_o   = 1'b0;
                  scalar_replication_c_o = instr_rdata_i[14];
                end
                // vfsub.vfmt - Vectorial FP Subtraction
                5'b00010: begin
                  fpu_op      = cv32e40p_fpu_pkg::ADD;
                  fpu_op_mod  = 1'b1;
                  fp_op_group = ADDMUL;
                  // FPnew needs addition operands as operand B and C
                  alu_op_b_mux_sel_o     = OP_B_REGA_OR_FWD;
                  alu_op_c_mux_sel_o     = OP_C_REGB_OR_FWD;
                  scalar_replication_o   = 1'b0;
                  scalar_replication_c_o = instr_rdata_i[14];
                end
                // vfmul.vfmt - Vectorial FP Multiplication
                5'b00011: begin
                  fpu_op      = cv32e40p_fpu_pkg::MUL;
                  fp_op_group = ADDMUL;
                end
                // vfdiv.vfmt - Vectorial FP Division
                5'b00100: begin
                  fpu_op      = cv32e40p_fpu_pkg::DIV;
                  fp_op_group = DIVSQRT;
                end
                // vfmin.vfmt - Vectorial FP Minimum
                5'b00101: begin
                  fpu_op        = cv32e40p_fpu_pkg::MINMAX;
                  fp_rnd_mode_o = 3'b000; // min
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0; // instruction encoded in rm
                end
                // vfmax.vfmt - Vectorial FP Maximum
                5'b00110: begin
                  fpu_op        = cv32e40p_fpu_pkg::MINMAX;
                  fp_rnd_mode_o = 3'b001; // max
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0; // instruction encoded in rm
                end
                // vfsqrt.vfmt - Vectorial FP Square Root
                5'b00111: begin
                  regb_used_o = 1'b0;
                  fpu_op      = cv32e40p_fpu_pkg::SQRT;
                  fp_op_group = DIVSQRT;
                  // rs2 and R must be zero
                  if ((instr_rdata_i[24:20] != 5'b00000) || instr_rdata_i[14]) begin
                    illegal_insn_o = 1'b1;
                  end
                end
                // vfmac.vfmt - Vectorial FP Multiply-Accumulate
                5'b01000: begin
                  regc_used_o = 1'b1;
                  regc_mux_o  = REGC_RD; // third operand is rd
                  reg_fp_c_o  = 1'b1;
                  fpu_op      = cv32e40p_fpu_pkg::FMADD;
                  fp_op_group = ADDMUL;
                end
                // vfmre.vfmt - Vectorial FP Multiply-Reduce
                5'b01001: begin
                  regc_used_o = 1'b1;
                  regc_mux_o  = REGC_RD; // third operand is rd
                  reg_fp_c_o  = 1'b1;
                  fpu_op      = cv32e40p_fpu_pkg::FMADD;
                  fpu_op_mod  = 1'b1;
                  fp_op_group = ADDMUL;
                end
                // Moves, Conversions, Classifications
                5'b01100: begin
                  regb_used_o          = 1'b0;
                  scalar_replication_o = 1'b0;
                  // Decode Operation in rs2
                  unique case (instr_rdata_i[24:20]) inside
                    // vfmv.{x.vfmt/vfmt.x} - Vectorial FP Reg <-> GP Reg Moves
                    5'b00000: begin
                      alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD; // set rs2 = rs1 so we can map FMV to SGNJ in the unit
                      fpu_op             = cv32e40p_fpu_pkg::SGNJ;
                      fp_rnd_mode_o      = 3'b011;  // passthrough without checking nan-box
                      fp_op_group        = NONCOMP;
                      check_fprm         = 1'b0;
                      // GP reg to FP reg
                      if (instr_rdata_i[14]) begin
                        reg_fp_a_o        = 1'b0; // go from integer regfile
                        fpu_op_mod        = 1'b0; // nan-box result
                      end
                      // FP reg to GP reg
                      else begin
                        reg_fp_d_o        = 1'b0; // go to integer regfile
                        fpu_op_mod        = 1'b1; // sign-extend result
                      end
                    end
                    // vfclass.vfmt - Vectorial FP Classifications
                    5'b00001: begin
                      reg_fp_d_o    = 1'b0; // go to integer regfile
                      fpu_op        = cv32e40p_fpu_pkg::CLASSIFY;
                      fp_rnd_mode_o = 3'b000;
                      fp_op_group   = NONCOMP;
                      check_fprm    = 1'b0;
                      // R must not be set
                      if (instr_rdata_i[14]) illegal_insn_o = 1'b1;
                    end
                    // vfcvt.{x.vfmt/vfmt.x} - Vectorial FP <-> Int Conversions
                    5'b0001?: begin
                      fp_op_group = CONV;
                      fpu_op_mod  = instr_rdata_i[14]; // signed/unsigned switch
                      // Integer width matches FP width
                      unique case (instr_rdata_i[13:12])
                        // FP32
                        2'b00 : fpu_int_fmt_o = cv32e40p_fpu_pkg::INT32;
                        // FP16[ALT]
                        2'b01,
                        2'b10: fpu_int_fmt_o = cv32e40p_fpu_pkg::INT16;
                        // FP8
                        2'b11: fpu_int_fmt_o = cv32e40p_fpu_pkg::INT8;
                      endcase
                      // Int to FP conversion
                      if (instr_rdata_i[20]) begin
                        reg_fp_a_o = 1'b0; // go from integer regfile
                        fpu_op     = cv32e40p_fpu_pkg::I2F;
                      end
                      // FP to Int conversion
                      else begin
                        reg_fp_d_o = 1'b0; // go to integer regfile
                        fpu_op     = cv32e40p_fpu_pkg::F2I;
                      end
                    end
                    // vfcvt.vfmt.vfmt - Vectorial FP <-> FP Conversions
                    5'b001??: begin
                      fpu_op      = cv32e40p_fpu_pkg::F2F;
                      fp_op_group = CONV;
                      // check source format
                      unique case (instr_rdata_i[21:20])
                        // Only process instruction if corresponding extension is active (static)
                        2'b00: begin
                          fpu_src_fmt_o = cv32e40p_fpu_pkg::FP32;
                          if (~C_RVF) illegal_insn_o = 1'b1;
                        end
                        2'b01: begin
                          fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                          if (~C_XF16ALT) illegal_insn_o = 1'b1;
                        end
                        2'b10: begin
                          fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16;
                          if (~C_XF16) illegal_insn_o = 1'b1;
                        end
                        2'b11: begin
                          fpu_src_fmt_o = cv32e40p_fpu_pkg::FP8;
                          if (~C_XF8) illegal_insn_o = 1'b1;
                        end
                      endcase
                      // R must not be set
                      if (instr_rdata_i[14]) illegal_insn_o = 1'b1;
                    end
                    // others
                    default : illegal_insn_o = 1'b1;
                  endcase
                end
                // vfsgnj.vfmt - Vectorial FP Sign Injection
                5'b01101: begin
                  fpu_op        = cv32e40p_fpu_pkg::SGNJ;
                  fp_rnd_mode_o = 3'b000; // sgnj
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfsgnjn.vfmt - Vectorial FP Negated Sign Injection
                5'b01110: begin
                  fpu_op        = cv32e40p_fpu_pkg::SGNJ;
                  fp_rnd_mode_o = 3'b001; // sgnjn
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfsgnjx.vfmt - Vectorial FP Xored Sign Injection
                5'b01111: begin
                  fpu_op        = cv32e40p_fpu_pkg::SGNJ;
                  fp_rnd_mode_o = 3'b010; // sgnjx
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfeq.vfmt - Vectorial FP Equals
                5'b10000: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fp_rnd_mode_o = 3'b010; // eq
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfne.vfmt - Vectorial FP Not Equals
                5'b10001: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fpu_op_mod    = 1'b1; // invert output
                  fp_rnd_mode_o = 3'b010; // eq
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vflt.vfmt - Vectorial FP Less Than
                5'b10010: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fp_rnd_mode_o = 3'b001; // lt
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfge.vfmt - Vectorial FP Greater Than or Equals
                5'b10011: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fpu_op_mod    = 1'b1; // invert output
                  fp_rnd_mode_o = 3'b001; // lt
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfle.vfmt - Vectorial FP Less Than or Equals
                5'b10100: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fp_rnd_mode_o = 3'b000; // le
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfgt.vfmt - Vectorial FP Greater Than
                5'b10101: begin
                  reg_fp_d_o    = 1'b0; // go to integer regfile
                  fpu_op        = cv32e40p_fpu_pkg::CMP;
                  fpu_op_mod    = 1'b1; // invert output
                  fp_rnd_mode_o = 3'b000; // le
                  fp_op_group   = NONCOMP;
                  check_fprm    = 1'b0;
                end
                // vfcpk{a-d}.vfmt.s/d
                5'b110??: begin
                  // vfcpk{{a/c}/{b/d}} selection in R bit
                  fpu_op_mod           = instr_rdata_i[14];
                  fp_op_group          = CONV;
                  scalar_replication_o = 1'b0;

                  if (instr_rdata_i[25]) fpu_op = cv32e40p_fpu_pkg::CPKCD; // vfcpk{c/d}
                  else fpu_op = cv32e40p_fpu_pkg::CPKAB; // vfcpk{a/b}

                  // vfcpk{a-d}.vfmt.d - from double
                  if (instr_rdata_i[26]) begin
                    fpu_src_fmt_o  = cv32e40p_fpu_pkg::FP64;
                    if (~C_RVD) illegal_insn_o = 1'b1;
                  end
                  // vfcpk{a-d}.vfmt.s
                  else begin
                    fpu_src_fmt_o  = cv32e40p_fpu_pkg::FP32;
                    if (~C_RVF) illegal_insn_o = 1'b1;
                  end
                  // Resolve legal vfcpk / format combinations (mostly static)
                  if (fpu_op == cv32e40p_fpu_pkg::CPKCD) begin // vfcpk{c/d} not possible unless FP8 and FLEN>=64
                    if (~C_XF8 || ~C_RVD) illegal_insn_o = 1'b1;
                  end else begin
                    if (instr_rdata_i[14]) begin // vfcpkb
                      // vfcpkb not possible for FP32
                      if (fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP32) illegal_insn_o = 1'b1;
                      // vfcpkb not possible for FP16[ALT] if not RVD
                      if (~C_RVD && (fpu_dst_fmt_o != cv32e40p_fpu_pkg::FP8)) illegal_insn_o = 1'b1;
                    end
                  end
                end
                // Rest are illegal instructions
                default: begin
                  illegal_insn_o = 1'b1;
                end
              endcase

              // check enabled formats (static)
              // need RVD for F vectors
              if ((~C_RVF || ~C_RVD) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP32) illegal_insn_o = 1'b1;
              // need RVF for F16 vectors
              if ((~C_XF16 || ~C_RVF) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16) illegal_insn_o = 1'b1;
              // need RVF for F16 vectors
              if ((~C_XF16ALT || ~C_RVF) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16ALT) begin
                illegal_insn_o = 1'b1;
              end
              // need F16 for F8 vectors
              if ((~C_XF8 || (~C_XF16 && ~C_XF16ALT)) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP8) begin
                illegal_insn_o = 1'b1;
              end

              // check rounding mode
              if (check_fprm) begin
                unique case (frm_i) inside
                  [3'b000:3'b100] : ; //legal rounding modes
                  default         : illegal_insn_o = 1'b1;
                endcase
              end

              // Set latencies for FPnew from config. The C_LAT constants contain the number
              // of pipeline registers. the APU takes the following values:
              // 1 = single cycle (no latency), 2 = one pipestage, 3 = two or more pipestages
              case (fp_op_group)
                // ADDMUL has format dependent latency
                ADDMUL : begin
                  unique case (fpu_dst_fmt_o)
                    cv32e40p_fpu_pkg::FP32    : apu_lat_o = (C_LAT_FP32<2)    ? C_LAT_FP32+1    : 2'h3;
                    cv32e40p_fpu_pkg::FP16    : apu_lat_o = (C_LAT_FP16<2)    ? C_LAT_FP16+1    : 2'h3;
                    cv32e40p_fpu_pkg::FP16ALT : apu_lat_o = (C_LAT_FP16ALT<2) ? C_LAT_FP16ALT+1 : 2'h3;
                    cv32e40p_fpu_pkg::FP8     : apu_lat_o = (C_LAT_FP8<2)     ? C_LAT_FP8+1     : 2'h3;
                    default : ;
                  endcase
                end
                // DIVSQRT is iterative and takes more than 2 cycles
                DIVSQRT : apu_lat_o = 2'h3;
                // NONCOMP uses the same latency for all formats
                NONCOMP : apu_lat_o = (C_LAT_NONCOMP<2) ? C_LAT_NONCOMP+1 : 2'h3;
                // CONV uses the same latency for all formats
                CONV    : apu_lat_o = (C_LAT_CONV<2) ? C_LAT_CONV+1 : 2'h3;
              endcase

              // Set FPnew OP and OPMOD as the APU op
              apu_op_o = {fpu_vec_op, fpu_op_mod, fpu_op};
            end
            // FPU!=1 or no Vectors or old shared unit
            else begin
              illegal_insn_o = 1'b1;
            end
          end // Vectorial Float Ops

        end  // prefix 10
        else if (instr_rdata_i[14:12] == 3'b001 && instr_rdata_i[26:25] == 2'b11) begin 
          alu_en      = 1'b1;
          regb_used_o = 1'b1;
          regc_used_o = 1'b1;
          rega_used_o = 1'b1;
          regc_mux_o  = REGC_S4;
          regfile_alu_we = 1'b1;
          alu_operator_o = CMIX;
        end
        else if (instr_rdata_i[14:12] == 3'b101 && instr_rdata_i[26:25] == 2'b10) begin 
          alu_en      = 1'b1;
          regb_used_o = 1'b1;
          regc_used_o = 1'b1;
          regc_mux_o  = REGC_S4;
          rega_used_o = 1'b1;
          regfile_alu_we = 1'b1;
          alu_operator_o = FSR;
        end
        else if (instr_rdata_i[31:25] == 7'b0000_101) begin
          regfile_alu_we = 1'b1;
          rega_used_o    = 1'b1;
          regb_used_o    = 1'b1;
          unique case (instr_rdata_i[14:12])
            3'b110: alu_operator_o = ALU_MAX;
            3'b100: alu_operator_o = ALU_MIN;
            default : /* default */;
          endcase
          
        end
        // PREFIX 00/01
        else begin
          // non bit-manipulation instructions
          regfile_alu_we = 1'b1;
          rega_used_o    = 1'b1;

          if (~instr_rdata_i[28]) regb_used_o = 1'b1;

          unique case ({instr_rdata_i[31:25], instr_rdata_i[14:12]})
            // RV32I ALU operations
            {6'b00_0000, 3'b000}: alu_operator_o = ALU_ADD;   // Add
            {6'b10_0000, 3'b000}: alu_operator_o = ALU_SUB;   // Sub
            {6'b00_0000, 3'b010}: alu_operator_o = ALU_SLTS;  // Set Lower Than
            {6'b00_0000, 3'b011}: alu_operator_o = ALU_SLTU;  // Set Lower Than Unsigned
            {6'b00_0000, 3'b100}: alu_operator_o = ALU_XOR;   // Xor
            {6'b00_0000, 3'b110}: alu_operator_o = ALU_OR;    // Or
            {6'b00_0000, 3'b111}: alu_operator_o = ALU_AND;   // And
            {6'b00_0000, 3'b001}: alu_operator_o = ALU_SLL;   // Shift Left Logical
            {6'b00_0000, 3'b101}: alu_operator_o = ALU_SRL;   // Shift Right Logical
            {6'b10_0000, 3'b101}: alu_operator_o = ALU_SRA;   // Shift Right Arithmetic
            {6'b0000100, 3'b100}: alu_operator_o = PACK;
            {6'b0100100, 3'b100}: alu_operator_o = PACKU;
            // supported RV32M instructions
            {6'b00_0001, 3'b000}: begin // mul
              alu_en          = 1'b0;
              mult_int_en     = 1'b1;
              mult_operator_o = MUL_MAC32;
              regc_mux_o      = REGC_ZERO;
            end
            {6'b00_0001, 3'b001}: begin // mulh
              alu_en             = 1'b0;
              regc_used_o        = 1'b1;
              regc_mux_o         = REGC_ZERO;
              mult_signed_mode_o = 2'b11;
              mult_int_en        = 1'b1;
              mult_operator_o    = MUL_H;
            end
            {6'b00_0001, 3'b010}: begin // mulhsu
              alu_en             = 1'b0;
              regc_used_o        = 1'b1;
              regc_mux_o         = REGC_ZERO;
              mult_signed_mode_o = 2'b01;
              mult_int_en        = 1'b1;
              mult_operator_o    = MUL_H;
            end
            {6'b00_0001, 3'b011}: begin // mulhu
              alu_en             = 1'b0;
              regc_used_o        = 1'b1;
              regc_mux_o         = REGC_ZERO;
              mult_signed_mode_o = 2'b00;
              mult_int_en        = 1'b1;
              mult_operator_o    = MUL_H;
            end
            {6'b00_0001, 3'b100}: begin // div
              alu_op_a_mux_sel_o = OP_A_REGB_OR_FWD;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              regb_used_o        = 1'b1;
              alu_operator_o     = ALU_DIV;
            end
            {6'b00_0001, 3'b101}: begin // divu
              alu_op_a_mux_sel_o = OP_A_REGB_OR_FWD;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              regb_used_o        = 1'b1;
              alu_operator_o     = ALU_DIVU;
            end
            {6'b00_0001, 3'b110}: begin // rem
              alu_op_a_mux_sel_o = OP_A_REGB_OR_FWD;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              regb_used_o        = 1'b1;
              alu_operator_o     = ALU_REM;
            end
            {6'b00_0001, 3'b111}: begin // remu
              alu_op_a_mux_sel_o = OP_A_REGB_OR_FWD;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              regb_used_o        = 1'b1;
              alu_operator_o     = ALU_REMU;
            end

            // PULP specific instructions
            {6'b00_0100, 3'b101}: begin         // Rotate Right - p.ror
              if (PULP_XPULP) begin
                alu_operator_o = ALU_ROR;
              end else begin
                illegal_insn_o = 1'b1;
              end
            end

            // PULP specific instructions using only one source register

            {6'b00_1000, 3'b000}: begin         // Find First 1 - p.ff1
              if (PULP_XPULP) begin
                alu_operator_o = ALU_FF1;
              end else begin
                illegal_insn_o = 1'b1;
              end
            end
            {6'b00_1000, 3'b001}: begin         // Find Last 1 - p.fl1
              if (PULP_XPULP) begin
                alu_operator_o = ALU_FL1;
              end else begin
                illegal_insn_o = 1'b1;
              end
            end
            {6'b00_1000, 3'b010}: begin         // Count Leading Bits - p.clb
              if (PULP_XPULP) begin
                alu_operator_o = ALU_CLB;
              end else begin
                illegal_insn_o = 1'b1;
              end
            end
            {6'b00_1000, 3'b011}: begin         // Count set bits (popcount) - p.cnt
              if (PULP_XPULP) begin
                alu_operator_o = ALU_CNT;
              end else begin
                illegal_insn_o = 1'b1;
              end
            end

            default: begin
              illegal_insn_o = 1'b1;
            end
          endcase
        end
      end
      /////////////////////////////////////////////////
      //  _____            _____  __    __ ________  //
      // |  __ \          | ____| \ \  / / |__  ___| //
      // | |__) |  ____   | |___   \ \/ /     | |    //
      // |  ___/  |____|  |  ___|  /\/\/      | |    //
      // | |              | |___  / /\ \      | |    //
      // |_|              |_____|/_/  \_\     |_|    //
      //                                             //
      /////////////////////////////////////////////////
      OPCODE_OPP :begin
        regfile_alu_we = 1'b1;
        rega_used_o    = 1'b1;
        regb_used_o    = 1'b1;
        if (instr_rdata_i[14:12] == 3'b011) begin
          alu_en          = 1'b1;
          alu_operator_o  = BPICK;
        end
        else begin 
          unique case ({instr_rdata_i[31:25], instr_rdata_i[14:12]})
            {7'b0100100, 3'b000}: begin // add8
              alu_en          = 1'b1;
              alu_operator_o  = ADD8;
              // imm_b_mux_sel_o = IMMB_VS;
              debug_add_decode= 1'd1;
            end
            {7'b0000100,3'b000}:begin
              alu_en         = 1'b1;
              alu_operator_o = RADD8;
            end
            {7'b0010100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URADD8;
            end
            {7'b0001100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KADD8;
            end
            {7'b0011100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKADD8;
            end
            //     // ADD16
            {7'b0100000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = ADD16;
            end
            {7'b0000000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = RADD16;
            end
            {7'b0010000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URADD16;
            end
            {7'b0001000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KADD16;
            end
            {7'b0011000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKADD16;
            end
            {7'b0100101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SUB8;
            end
            {7'b0000101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = RSUB8;
            end
            {7'b0010101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URSUB8;
            end
            {7'b0001101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSUB8;
            end
            {7'b0011101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSUB8;
            end
            // SUB16
            {7'b0100001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SUB16;
            end
            // RSUB16
            {7'b0000001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = RSUB16;
            end
            // URSUB16
            {7'b0010001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URSUB16;
            end
            // KSUB16
            {7'b0001001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSUB16;
            end
            // UKSUB16
            {7'b0011001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSUB16;
            end
            {7'b0101000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRA16; 
            end
            {7'b0110000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRA16U;
              // imm_b_mux_sel_o = IMMB_S2;
              // alu_op_b_mux_sel_o  = OP_B_IMM;
            end
            {7'b0111000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRAI16; 
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end

            {7'b0110001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRL16U; 
            end

            {7'b0101001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRL16; 
            end

            {7'b0110010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLL16; 
            end

            {7'b0111010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLLI16; // == slii16; != r2[4]
              // imm_select             = PIMM;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end
            {7'b0101011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRA16;
            end

            {7'b0110011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRA16U; // == slii16; != r2[4]
            end
            {7'b0101010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SLL16;
            end
            //  CRAS16
            {7'b0100010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = CRAS16; 
            end
            {7'b0000010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = RCRAS16; 
            end

            {7'b0010010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URCRAS16; 
            end

            {7'b0001010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KCRAS16; 
            end

            {7'b0011010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKCRAS16; 
              // intr_en        = 1;
            end

            {7'b0100011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = CRSA16; 
            end

            {7'b0000011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = RCRSA16; 
            end
            {7'b0010011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = URCRSA16; 
            end
            {7'b0001011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KCRSA16; 
            end

            {7'b0011011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKCRSA16; 
            end

            {7'b1111010,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = STAS16; 
            end

            {7'b1011010,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = RSTAS16; 
            end
            {7'b1101010,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = URSTAS16; 
            end
            {7'b1100010,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSTAS16; 
            end

            {7'b1110010,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSTAS16; 
            end

            {7'b1111011,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = STSA16; 
            end

            {7'b1011011,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = RSTSA16; 
            end
            {7'b1101011,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = URSTSA16; 
            end
            {7'b1100011,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSTSA16; 
            end

            {7'b1110011,3'b010}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSTSA16; 
            end

            {7'b0111001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRLI16;
              // imm_select             = PIMM ; 
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end
            // {7'b0111001,3'b000}: begin
            //   alu_en          = 1'b1;
            //   alu_operator_o       = SRLI16U; 
            // end
            //1
            {7'b0101100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRA8; 
            end

            {7'b0110100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRA8U; 
            end

            {7'b0111100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRAI8; // === SRAI8U, [24:23] bits are different.
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end

            {7'b0101101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRL8; 
            end

            {7'b0110101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRL8U; 
            end

            {7'b0111101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SRLI8; // == SRLI8U, [24:23] bits are different.
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end

            {7'b0101110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SLL8; // KSLLI8
            end

            {7'b0111110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SLLI8; 
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end

            {7'b0110110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLL8; 
            end

            // {7'b0111110,3'b000}: begin
            //   alu_en          = 1'b1;
            //   alu_operator_o       = KSLLI8; 
            // end

            {7'b0101111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRA8; 
            end

            {7'b0110111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRA8U; 
            end
            //  CMP16
            {7'b0100110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = CMPEQ16; 
            end

            {7'b0000110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCMPLT16; 
            end

            {7'b0001110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCMPLE16; 
            end

            {7'b0010110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UCMPLT16; 
            end
            {7'b0011110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UCMPLE16; 
            end

            //  CMP8
            {7'b0100111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = CMPEQ8; 
            end

            {7'b0000111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCMPLT8; 
            end

            {7'b0001111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCMPLE8; 
            end

            {7'b0010111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UCMPLT8; 
            end
            {7'b0011111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UCMPLE8; 
            end
            //  MULT16
            {7'b1010000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMUL16; 
              instr64_oe_o   = 1'b1;
            end

            {7'b1010001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMULX16; 
              instr64_oe_o   = 1'b1;
            end

            {7'b1011000,3'b000}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UMUL16; 
            end

            {7'b1011001,3'b000}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UMULX16; 
            end


            {7'b1000011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHM16; 
            end

            {7'b1001011,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHMX16; 
            end

            // MULT8
            {7'b1010100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMUL8;
              instr64_oe_o   = 1'b1; 
            end

            {7'b1010101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMULX8; 
              instr64_oe_o   = 1'b1;
            end

            {7'b1011100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMUL8; 
              instr64_oe_o   = 1'b1;
            end

            {7'b1011101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMULX8; 
              instr64_oe_o   = 1'b1;
            end


            {7'b1000111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHM8; 
            end

            {7'b1001111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHMX8; 
            end

            {7'b1000000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMIN16; 
            end

            {7'b1001000,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMIN16; 
            end

            {7'b1000001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMAX16; 
            end

            {7'b1001001,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMAX16; 
            end

            {7'b1000100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMIN8; 
            end

            {7'b1001100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMIN8; 
            end

            {7'b1000101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMAX8; 
            end

            {7'b1001101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMAX8; 
            end

            {7'b1010110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = ONEOP;
              debug_csr      = 'd1;
              // imm_select             = PIMM;
              // if(instr_rdata_i[24:22] == 3'b000 || (instr_rdata_i[24:20] == 5'b10001)) begin 
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
              // end
            end

            {7'b1010111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = ONEOP2;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end

            {7'b0001111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = PKBT16; 
            end
            {7'b1000010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCLIP16; // uclip16
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end

            {7'b1000110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCLIP8;  // uclip8
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 

            end
            // 3.2
            // {7'b0000111,3'b001}: begin
            //   alu_en         = 1'b1;
            //   alu_operator_o = PKBB16;
            //   // debug_csr      = 'd1; 
            // end

            // {7'b0010111,3'b001}: begin
            //   alu_en         = 1'b1;
            //   alu_operator_o = PKTT16; 
            // end

            {7'b0011111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = PKTB16; 
            end

            {7'b0100000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMUL; 
            end

            {7'b0101000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMULU; 
            end

            {7'b0110000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAC; 
            end
            {7'b0111000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMACU; 
            end

            {7'b0100001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMSB; 
            end
            {7'b0101001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMSBU; 
            end

            {7'b0110001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KWMMUL; 
            end
            {7'b0111001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KWMMULU; 
            end

            {7'b0100010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMWB; 
            end
            {7'b0101010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMWBU; 
            end
            
            {7'b0110010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMWT; 
            end
            {7'b0111010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMMWTU; 
            end

            {7'b0100011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWB; 
            end
            {7'b0101011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWBU; 
            end

            {7'b0110011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWT; 
            end
            {7'b0111011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWTU; 
            end

            {7'b1000111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMWB2; 
            end
            {7'b1001111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMWB2U; 
            end

            {7'b1010111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMWT2; 
            end
            {7'b1011111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMWT2U; 
            end

            {7'b1100111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWB2; 
            end
            {7'b1101111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWB2U; 
            end

            {7'b1110111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWT2; 
            end
            {7'b1111111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMMAWT2U; 
            end

            {7'b0000100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMBB16; 
            end
            {7'b0001100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMBT16; 
            end
            {7'b0010100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMTT16; 
            end

            {7'b0011100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMDA; 
            end
            {7'b0011101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMXDA; 
            end

            {7'b0101100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMDS; 
            end
            {7'b0110100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMDRS; 
            end
            {7'b0111100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMXDS; 
            end

            {7'b0101101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMABB; 
            end
            {7'b0110101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMABT; 
            end
            {7'b0111101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMATT; 
            end

            {7'b0100100,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMADA; 
            end
            {7'b0100101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMAXDA; 
            end

            {7'b0101110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMADS; 
            end
            {7'b0110110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMADRS; 
            end
            {7'b0111110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMAXDS; 
            end

            {7'b0100110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMSDA; 
            end
            {7'b0100111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KMSXDA; 
            end

            {7'b0101111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMAL;
              instr64_oe_o   = 1'b1; 
            end

            {7'b1110010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SCLIP32; 
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;

            end

            {7'b1111010,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UCLIP32; 
              // imm_select             = PIMM ;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM;
            end

            // {7'b1111010,3'b001}: begin
            //    alu_en         = 1'b1;
            //    alu_operator_o = CLRS32; // oneop2:CLRS32,CLZ32
            //  end 
            {7'b1111110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = PBSAD; 
            end

            {7'b1111111,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = PBSADA; 
            end
            {7'b1100100,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMAQA; 
            end
            {7'b1100110,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = UMAQA; 
            end
            {7'b1100101,3'b000}: begin
              alu_en         = 1'b1;
              alu_operator_o = SMAQASU; 
            end
            {7'b0000010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KADDH; 
            end

            {7'b0001010,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKADDH; 
            end

            {7'b0001011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSUBH; 
            end

            {7'b0000011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSUBH; 
            end

            {7'b0000110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHMBB; 
            end

            {7'b0001110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHMBT; 
            end

            {7'b0010110,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KHMTT; 
            end

            {7'b0000000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KADDW; 
            end

            {7'b0001000,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKADDW; 
            end

            {7'b0000001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSUBW; 
            end

            {7'b0001001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = UKSUBW; 
            end

            {7'b0000101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMBB; 
            end
            {7'b0001101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMBT; 
            end
            {7'b0010101,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMTT; 
            end

            {7'b0110111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRAW; 
            end
            {7'b0111111,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLRAWU; 
            end
            
            {7'b0010011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLLW; 
            end
            {7'b0011011,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KSLLIW;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end

            {7'b1101001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMABB; 
            end  

            {7'b1110001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMABT; 
            end  

            {7'b1111001,3'b001}: begin
              alu_en         = 1'b1;
              alu_operator_o = KDMATT; 
            end
            // kabsw of oneop
            {7'b0010000,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = RADDW; 
            end

            {7'b0011000,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = URADDW; 
            end

            {7'b0010001,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = RSUBW; 
            end 

            {7'b0011001,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = URSUBW; 
            end 

            {7'b1111000,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = MULR64; 
              instr64_oe_o   = 1'b1;
            end 

            {7'b1110000,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = MULSR64; 
              instr64_oe_o   = 1'b1;
            end  

           {7'b1100010,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = MADDR32; 
            end

            {7'b1100011,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = MSUBR32; 
            end    

            {7'b1110000,3'b000}: begin 
              alu_en         = 1'b1;
              alu_operator_o = AVE; 
            end

            {7'b0010010,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = SRAU; 
            end

            {7'b1101010,3'b001}: begin 
              alu_en         = 1'b1;
              alu_operator_o = SRAIU;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end

            {7'b1110011,3'b000}: begin 
              alu_en         = 1'b1;
              alu_operator_o = BITREV; 
            end 

            {7'b1110100,3'b000}: begin 
              alu_en         = 1'b1;
              alu_operator_o = BITREVI;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end

            {7'b1100111,3'b000}: begin 
              alu_en         = 1'b1;
              alu_operator_o = WEXT; 
            end 

            {7'b1101111,3'b000}: begin 
              alu_en         = 1'b1;
              alu_operator_o = WEXTI;
              imm_b_mux_sel_o = IMMB_S2;
              alu_op_b_mux_sel_o  = OP_B_IMM; 
            end          

            // {7'b0000101,3'b110}: begin 
            //   alu_en         = 1'b1;
            //   alu_operator_o = MAXW; 
            // end 

            // {7'b0000101,3'b100}: begin 
            //   alu_en         = 1'b1;
            //   alu_operator_o = MINW; 
            // end
            {7'b1100000,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = ADD64; 
              debug_csr      ='d1;
            end

            {7'b1000000,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = RADD64; 
              debug_csr      ='d1;
            end

            {7'b1010000,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = URADD64; 
              debug_csr      ='d1;
            end

            {7'b1001000,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = KADD64; 
              debug_csr      ='d1;
            end

             {7'b1011000,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UKADD64; 
              debug_csr      ='d1;
            end

            {7'b1100001,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SUB64; 
              debug_csr      ='d1;
            end

            {7'b1000001,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = RSUB64; 
              debug_csr      ='d1;
            end

            {7'b1010001,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = URSUB64; 
              debug_csr      ='d1;
            end


            {7'b1001001,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = KSUB64; 
              debug_csr      ='d1;
            end

             {7'b1011001,3'b001}: begin 
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UKSUB64; 
              debug_csr      ='d1;
            end

            {7'b1000010,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMAR64; 
            end
            {7'b1000011,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMSR64; 
            end
            {7'b1010010,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UMAR64; 
            end
            {7'b1010011,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UMSR64; 
            end
            {7'b1001010,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = KMAR64; //KMADA32,
            end
            {7'b1001011,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = KMSR64; 
            end
            {7'b1011010,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UKMAR64; 
            end
            {7'b1011011,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = UKMSR64; 
            end
            {7'b1000100,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALBB; 
            end
            {7'b1001100,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALBT; 
            end
            {7'b1010100,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALTT; 
            end
            {7'b1000110,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALDA; 
            end
            {7'b1001110,3'b001}: begin

              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALXDA; 
            end
            {7'b1000101,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALDS; 
            end
            {7'b1001101,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALDRS; 
            end
            {7'b1010101,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMALXDS; 
            end

            {7'b1010110,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMSLDA; 
            end
            {7'b1011110,3'b001}: begin
              alu_en         = 1'b1;
              instr64_oe_o   = 1'b1;
              alu_operator_o = SMSLXDA; 
            end


            default: begin
              illegal_insn_o = 1'b1;
            end
          endcase
        end
      end 
      ////////////////////////////
      //  ______ _____  _    _  //
      // |  ____|  __ \| |  | | //
      // | |__  | |__) | |  | | //
      // |  __| |  ___/| |  | | //
      // | |    | |    | |__| | //
      // |_|    |_|     \____/  //
      //                        //
      ////////////////////////////

      // floating point arithmetic
      OPCODE_OP_FP: begin
        if (FPU==1) begin

          // using APU instead of ALU
          apu_en           = 1'b1;
          alu_en           = 1'b0;
          // by default, set all registers to FP registers and use 2
          rega_used_o      = 1'b1;
          regb_used_o      = 1'b1;
          reg_fp_a_o       = 1'b1;
          reg_fp_b_o       = 1'b1;
          reg_fp_d_o       = 1'b1;
          // by default we need to verify rm is legal but assume it is for now
          check_fprm       = 1'b1;
          fp_rnd_mode_o    = instr_rdata_i[14:12];

          // Decode Formats (preliminary, can change for some ops)
          unique case (instr_rdata_i[26:25])
            // FP32
            2'b00: fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP32;
            // FP64
            2'b01: fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP64;
            // FP16 or FP16ALT
            2'b10: begin
              // FP16alt encoded in rm field
              if (instr_rdata_i[14:12]==3'b101) fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
              // this can still change to FP16ALT
              else fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16;
            end
            // FP8
            2'b11: fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP8;
          endcase

          // By default, src=dst
          fpu_src_fmt_o = fpu_dst_fmt_o;

          // decode FP instruction
          unique case (instr_rdata_i[31:27])
            // fadd.fmt - FP Addition
            5'b00000: begin
              fpu_op        = cv32e40p_fpu_pkg::ADD;
              fp_op_group   = ADDMUL;
              apu_op_o      = 2'b0;
              apu_lat_o     = (PIPE_REG_ADDSUB==1) ? 2'h2 : 2'h1;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              alu_op_c_mux_sel_o = OP_C_REGB_OR_FWD;
            end
            // fsub.fmt - FP Subtraction
            5'b00001: begin
              fpu_op        = cv32e40p_fpu_pkg::ADD;
              fpu_op_mod    = 1'b1;
              fp_op_group   = ADDMUL;
              apu_op_o      = 2'b1;
              apu_lat_o     = (PIPE_REG_ADDSUB==1) ? 2'h2 : 2'h1;
              alu_op_b_mux_sel_o = OP_B_REGA_OR_FWD;
              alu_op_c_mux_sel_o = OP_C_REGB_OR_FWD;
            end
            // fmul.fmt - FP Multiplication
            5'b00010: begin
              fpu_op        = cv32e40p_fpu_pkg::MUL;
              fp_op_group   = ADDMUL;
              apu_lat_o     = (PIPE_REG_MULT==1) ? 2'h2 : 2'h1;
            end
            // fdiv.fmt - FP Division
            5'b00011: begin
              fpu_op      = cv32e40p_fpu_pkg::DIV;
              fp_op_group = DIVSQRT;
              apu_lat_o   = 2'h3;
            end
            // fsqrt.fmt - FP Square Root
            5'b01011: begin
              regb_used_o = 1'b0;
              fpu_op      = cv32e40p_fpu_pkg::SQRT;
              fp_op_group = DIVSQRT;
              apu_op_o    = 1'b1;
              apu_lat_o   = 2'h3;
              // rs2 must be zero
              if (instr_rdata_i[24:20] != 5'b00000) illegal_insn_o = 1'b1;
            end
            // fsgn{j[n]/jx}.fmt - FP Sign Injection
            5'b00100: begin
              fpu_op        = cv32e40p_fpu_pkg::SGNJ;
              fp_op_group   = NONCOMP;
              check_fprm    = 1'b0; // instruction encoded in rm, do the check here
              if (C_XF16ALT) begin  // FP16ALT instructions encoded in rm separately (static)
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b010], [3'b100:3'b110]})) begin
                  illegal_insn_o = 1'b1;
                end
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end else begin
                  fp_rnd_mode_o = {1'b0, instr_rdata_i[13:12]};
                end
              end else begin
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b010]})) illegal_insn_o = 1'b1;
              end
            end
            // fmin/fmax.fmt - FP Minimum / Maximum
            5'b00101: begin
              fpu_op        = cv32e40p_fpu_pkg::MINMAX;
              fp_op_group   = NONCOMP;
              check_fprm    = 1'b0; // instruction encoded in rm, do the check here
              if (C_XF16ALT) begin  // FP16ALT instructions encoded in rm separately (static)
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b001], [3'b100:3'b101]})) begin
                  illegal_insn_o = 1'b1;
                end
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end else begin
                  fp_rnd_mode_o = {1'b0, instr_rdata_i[13:12]};
                end
              end else begin
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b001]})) illegal_insn_o = 1'b1;
              end
            end
            // fcvt.fmt.fmt - FP to FP Conversion
            5'b01000: begin
              regb_used_o   = 1'b0;
              fpu_op        = cv32e40p_fpu_pkg::F2F;
              fp_op_group   = CONV;
              // bits [22:20] used, other bits must be 0
              if (instr_rdata_i[24:23]) illegal_insn_o = 1'b1;
              // check source format
              unique case (instr_rdata_i[22:20])
                // Only process instruction if corresponding extension is active (static)
                3'b000: begin
                  if (~C_RVF) illegal_insn_o = 1'b1;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP32;
                end
                3'b001: begin
                  if (~C_RVD) illegal_insn_o = 1'b1;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP64;
                end
                3'b010: begin
                  if (~C_XF16) illegal_insn_o = 1'b1;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16;
                end
                3'b110: begin
                  if (~C_XF16ALT) illegal_insn_o = 1'b1;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end
                3'b011: begin
                  if (~C_XF8) illegal_insn_o = 1'b1;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP8;
                end
                default: illegal_insn_o = 1'b1;
              endcase
            end
            // fmulex.s.fmt - FP Expanding Multiplication to FP32
            5'b01001: begin
              fpu_op        = cv32e40p_fpu_pkg::MUL;
              fp_op_group   = ADDMUL;
              apu_lat_o     = (PIPE_REG_MULT==1) ? 2'h2 : 2'h1;
              // set dst format to FP32
              fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP32;
            end
            // fmacex.s.fmt - FP Expanding Multipy-Accumulate to FP32
            5'b01010: begin
              regc_used_o = 1'b1;
              regc_mux_o  = REGC_RD; // third operand is rd
              reg_fp_c_o  = 1'b1;
              fpu_op      = cv32e40p_fpu_pkg::FMADD;
              fp_op_group = ADDMUL;
              apu_lat_o   = (PIPE_REG_MULT==1) ? 2'h2 : 2'h1;
              // set dst format to FP32
              fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP32;
            end
            // feq/flt/fle.fmt - FP Comparisons
            5'b10100: begin
              fpu_op        = cv32e40p_fpu_pkg::CMP;
              fp_op_group   = NONCOMP;
              reg_fp_d_o    = 1'b0; // go to integer regfile
              check_fprm    = 1'b0; // instruction encoded in rm, do the check here
              if (C_XF16ALT) begin  // FP16ALT instructions encoded in rm separately (static)
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b010], [3'b100:3'b110]})) begin
                  illegal_insn_o = 1'b1;
                end
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end else begin
                  fp_rnd_mode_o = {1'b0, instr_rdata_i[13:12]};
                end
              end else begin
                if (!(instr_rdata_i[14:12] inside {[3'b000:3'b010]})) illegal_insn_o = 1'b1;
              end
            end
            // fcvt.ifmt.fmt - FP to Int Conversion
            5'b11000: begin
              regb_used_o   = 1'b0;
              reg_fp_d_o    = 1'b0; // go to integer regfile
              fpu_op        = cv32e40p_fpu_pkg::F2I;
              fp_op_group   = CONV;
              fpu_op_mod    = instr_rdata_i[20]; // signed/unsigned switch
              apu_op_o      = 2'b1;
              apu_lat_o     = (PIPE_REG_CAST==1) ? 2'h2 : 2'h1;

              unique case (instr_rdata_i[26:25]) //fix for casting to different formats other than FP32
                2'b00: begin
                  if (~C_RVF) illegal_insn_o = 1;
                  else fpu_src_fmt_o = cv32e40p_fpu_pkg::FP32;
                end
                2'b01: begin
                  if (~C_RVD) illegal_insn_o = 1;
                  else fpu_src_fmt_o = cv32e40p_fpu_pkg::FP64;
                end
                2'b10: begin
                  if (instr_rdata_i[14:12] == 3'b101) begin
                    if (~C_XF16ALT) illegal_insn_o = 1;
                    else fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  end else if (~C_XF16) begin
                    illegal_insn_o = 1;
                  end else begin
                    fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16;
                  end
                end
                2'b11: begin
                  if (~C_XF8) illegal_insn_o = 1;
                  else fpu_src_fmt_o = cv32e40p_fpu_pkg::FP8;
                end
              endcase // unique case (instr_rdata_i[26:25])
              // bits [21:20] used, other bits must be 0
              if (instr_rdata_i[24:21]) illegal_insn_o = 1'b1;   // in RV32, no casts to L allowed.
            end
            // fcvt.fmt.ifmt - Int to FP Conversion
            5'b11010: begin
              regb_used_o   = 1'b0;
              reg_fp_a_o    = 1'b0; // go from integer regfile
              fpu_op        = cv32e40p_fpu_pkg::I2F;
              fp_op_group   = CONV;
              fpu_op_mod    = instr_rdata_i[20]; // signed/unsigned switch
              apu_op_o      = 2'b0;
              apu_lat_o     = (PIPE_REG_CAST==1) ? 2'h2 : 2'h1;
              // bits [21:20] used, other bits must be 0
              if (instr_rdata_i[24:21]) illegal_insn_o = 1'b1;   // in RV32, no casts to L allowed.
            end
            // move and class
            5'b11100: begin
              regb_used_o = 1'b0;
              reg_fp_d_o  = 1'b0; // go to integer regfile
              fp_op_group = NONCOMP;
              check_fprm  = 1'b0; // instruction encoded in rm, do the check here
              // fmv.x.fmt - FPR to GPR Move
              if (instr_rdata_i[14:12] == 3'b000 || (C_XF16ALT && instr_rdata_i[14:12] == 3'b100)) begin
                alu_op_b_mux_sel_o  = OP_B_REGA_OR_FWD; // set rs2 = rs1 so we can map FMV to SGNJ in the unit
                fpu_op              = cv32e40p_fpu_pkg::SGNJ; // mapped to SGNJ-passthrough since no recoding
                fpu_op_mod          = 1'b1;    // sign-extend result
                fp_rnd_mode_o       = 3'b011;  // passthrough without checking nan-box
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end
              // fclass.fmt - FP Classify
              end else if (instr_rdata_i[14:12] == 3'b001 || (C_XF16ALT && instr_rdata_i[14:12] == 3'b101)) begin
                fpu_op        = cv32e40p_fpu_pkg::CLASSIFY;
                fp_rnd_mode_o = 3'b000;
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end
              end else begin
                illegal_insn_o = 1'b1;
              end
              // rs2 must be zero
              if (instr_rdata_i[24:20]) illegal_insn_o = 1'b1;
            end
            // fmv.fmt.x - GPR to FPR Move
            5'b11110: begin
              regb_used_o         = 1'b0;
              reg_fp_a_o          = 1'b0; // go from integer regfile
              alu_op_b_mux_sel_o  = OP_B_REGA_OR_FWD; // set rs2 = rs1 so we can map FMV to SGNJ in the unit
              fpu_op              = cv32e40p_fpu_pkg::SGNJ; // mapped to SGNJ-passthrough since no recoding
              fpu_op_mod          = 1'b0;    // nan-box result
              fp_op_group         = NONCOMP;
              fp_rnd_mode_o       = 3'b011;  // passthrough without checking nan-box
              check_fprm          = 1'b0; // instruction encoded in rm, do the check here
              if (instr_rdata_i[14:12] == 3'b000 || (C_XF16ALT && instr_rdata_i[14:12] == 3'b100)) begin
                // FP16ALT uses special encoding here
                if (instr_rdata_i[14]) begin
                  fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                  fpu_src_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
                end
              end else begin
                illegal_insn_o = 1'b1;
              end
              // rs2 must be zero
              if (instr_rdata_i[24:20] != 5'b00000) illegal_insn_o = 1'b1;
            end
            // Rest are illegal instructions
            default: begin
              illegal_insn_o = 1'b1;
            end
          endcase

          // check enabled formats (static)
          if (~C_RVF && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP32) illegal_insn_o = 1'b1;
          if ((~C_RVD) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP64) illegal_insn_o = 1'b1;
          if ((~C_XF16) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16) illegal_insn_o = 1'b1;
          if ((~C_XF16ALT) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16ALT) begin
            illegal_insn_o = 1'b1;
          end
          if ((~C_XF8) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP8) illegal_insn_o = 1'b1;

          // check rounding mode
          if (check_fprm) begin
            unique case (instr_rdata_i[14:12]) inside
              [3'b000:3'b100]: ; //legal rounding modes
              3'b101: begin      // Alternative Half-Precsision encded as fmt=10 and rm=101
                if (~C_XF16ALT || fpu_dst_fmt_o != cv32e40p_fpu_pkg::FP16ALT) illegal_insn_o = 1'b1;
                // actual rounding mode from frm csr
                unique case (frm_i) inside
                  [3'b000:3'b100] : fp_rnd_mode_o = frm_i; //legal rounding modes
                  default         : illegal_insn_o = 1'b1;
                endcase
              end
              3'b111: begin
                // rounding mode from frm csr
                unique case (frm_i) inside
                  [3'b000:3'b100] : fp_rnd_mode_o = frm_i; //legal rounding modes
                  default         : illegal_insn_o = 1'b1;
                endcase
              end
              default : illegal_insn_o = 1'b1;
            endcase
          end

          // Set latencies for FPnew from config. The C_LAT constants contain the number
          // of pipeline registers. the APU takes the following values:
          // 1 = single cycle (no latency), 2 = one pipestage, 3 = two or more pipestages
          case (fp_op_group)
            // ADDMUL has format dependent latency
            ADDMUL : begin
              unique case (fpu_dst_fmt_o)
                cv32e40p_fpu_pkg::FP32    : apu_lat_o = (C_LAT_FP32<2)    ? C_LAT_FP32+1    : 2'h3;
                cv32e40p_fpu_pkg::FP64    : apu_lat_o = (C_LAT_FP64<2)    ? C_LAT_FP64+1    : 2'h3;
                cv32e40p_fpu_pkg::FP16    : apu_lat_o = (C_LAT_FP16<2)    ? C_LAT_FP16+1    : 2'h3;
                cv32e40p_fpu_pkg::FP16ALT : apu_lat_o = (C_LAT_FP16ALT<2) ? C_LAT_FP16ALT+1 : 2'h3;
                cv32e40p_fpu_pkg::FP8     : apu_lat_o = (C_LAT_FP8<2)     ? C_LAT_FP8+1     : 2'h3;
                default : ;
              endcase
            end
            // DIVSQRT is iterative and takes more than 2 cycles
            DIVSQRT : apu_lat_o = 2'h3;
            // NONCOMP uses the same latency for all formats
            NONCOMP : apu_lat_o = (C_LAT_NONCOMP<2) ? C_LAT_NONCOMP+1 : 2'h3;
            // CONV uses the same latency for all formats
            CONV    : apu_lat_o = (C_LAT_CONV<2) ? C_LAT_CONV+1 : 2'h3;
          endcase

          // Set FPnew OP and OPMOD as the APU op
          apu_op_o = {fpu_vec_op, fpu_op_mod, fpu_op};

        end
        // FPU!=1
        else
          illegal_insn_o = 1'b1;
      end

      // floating point fused arithmetic
      OPCODE_OP_FMADD,
      OPCODE_OP_FMSUB,
      OPCODE_OP_FNMSUB,
      OPCODE_OP_FNMADD : begin
        if (FPU==1) begin
          // using APU instead of ALU
          apu_en           = 1'b1;
          alu_en           = 1'b0;
          apu_lat_o        = (PIPE_REG_MAC>1) ? 2'h3 : 2'h2;
          // all registers are FP registers and use three
          rega_used_o      = 1'b1;
          regb_used_o      = 1'b1;
          regc_used_o      = 1'b1;
          regc_mux_o       = REGC_S4;
          reg_fp_a_o       = 1'b1;
          reg_fp_b_o       = 1'b1;
          reg_fp_c_o       = 1'b1;
          reg_fp_d_o       = 1'b1;
          fp_rnd_mode_o    = instr_rdata_i[14:12];

          // Decode Formats
          unique case (instr_rdata_i[26:25])
            // FP32
            2'b00 : fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP32;
            // FP64
            2'b01 : fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP64;
            // FP16 or FP16ALT
            2'b10 : begin
              // FP16alt encoded in rm field
              if (instr_rdata_i[14:12]==3'b101) fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16ALT;
              else fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP16;
            end
            // FP8
            2'b11 : fpu_dst_fmt_o = cv32e40p_fpu_pkg::FP8;
          endcase

          // By default, src=dst
          fpu_src_fmt_o = fpu_dst_fmt_o;

          // decode FP intstruction
          unique case (instr_rdata_i[6:0])
            // fmadd.fmt - FP Fused multiply-add
            OPCODE_OP_FMADD : begin
              fpu_op      = cv32e40p_fpu_pkg::FMADD;
              apu_op_o    = 2'b00;
            end
            // fmsub.fmt - FP Fused multiply-subtract
            OPCODE_OP_FMSUB : begin
              fpu_op      = cv32e40p_fpu_pkg::FMADD;
              fpu_op_mod  = 1'b1;
              apu_op_o    = 2'b01;
            end
            // fnmsub.fmt - FP Negated fused multiply-subtract
            OPCODE_OP_FNMSUB : begin
              fpu_op      = cv32e40p_fpu_pkg::FNMSUB;
              apu_op_o    = 2'b10;
            end
            // fnmadd.fmt - FP Negated fused multiply-add
            OPCODE_OP_FNMADD : begin
              fpu_op      = cv32e40p_fpu_pkg::FNMSUB;
              fpu_op_mod  = 1'b1;
              apu_op_o    = 2'b11;
            end
          endcase

          // check enabled formats (static)
          if (~C_RVF && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP32) illegal_insn_o = 1'b1;
          if ((~C_RVD) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP64) illegal_insn_o = 1'b1;
          if ((~C_XF16) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16) illegal_insn_o = 1'b1;
          if ((~C_XF16ALT) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP16ALT) begin
            illegal_insn_o = 1'b1;
          end
          if ((~C_XF8) && fpu_dst_fmt_o == cv32e40p_fpu_pkg::FP8) illegal_insn_o = 1'b1;

          // check rounding mode
          unique case (instr_rdata_i[14:12]) inside
            [3'b000:3'b100]: ; //legal rounding modes
            3'b101: begin      // Alternative Half-Precsision encded as fmt=10 and rm=101
              if (~C_XF16ALT || fpu_dst_fmt_o != cv32e40p_fpu_pkg::FP16ALT) illegal_insn_o = 1'b1;
              // actual rounding mode from frm csr
              unique case (frm_i) inside
                [3'b000:3'b100] : fp_rnd_mode_o = frm_i; //legal rounding modes
                default         : illegal_insn_o = 1'b1;
              endcase
            end
            3'b111: begin
              // rounding mode from frm csr
              unique case (frm_i) inside
                [3'b000:3'b100] : fp_rnd_mode_o = frm_i; //legal rounding modes
                default         : illegal_insn_o = 1'b1;
              endcase
            end
            default : illegal_insn_o = 1'b1;
          endcase

          // Set latencies for FPnew from config. The C_LAT constants contain the number
          // of pipeline registers. the APU takes the following values:
          // 1 = single cycle (no latency), 2 = one pipestage, 3 = two or more pipestages
          // format dependent latency
          unique case (fpu_dst_fmt_o)
            cv32e40p_fpu_pkg::FP32    : apu_lat_o = (C_LAT_FP32<2)    ? C_LAT_FP32+1    : 2'h3;
            cv32e40p_fpu_pkg::FP64    : apu_lat_o = (C_LAT_FP64<2)    ? C_LAT_FP64+1    : 2'h3;
            cv32e40p_fpu_pkg::FP16    : apu_lat_o = (C_LAT_FP16<2)    ? C_LAT_FP16+1    : 2'h3;
            cv32e40p_fpu_pkg::FP16ALT : apu_lat_o = (C_LAT_FP16ALT<2) ? C_LAT_FP16ALT+1 : 2'h3;
            cv32e40p_fpu_pkg::FP8     : apu_lat_o = (C_LAT_FP8<2)     ? C_LAT_FP8+1     : 2'h3;
            default : ;
          endcase

          // Set FPnew OP and OPMOD as the APU op
          apu_op_o = {fpu_vec_op, fpu_op_mod, fpu_op};
        end
        // FPU!=1
        else begin
          illegal_insn_o = 1'b1;
        end
      end

      OPCODE_STORE_FP: begin
        if (FPU==1) begin
          data_req            = 1'b1;
          data_we_o           = 1'b1;
          rega_used_o         = 1'b1;
          regb_used_o         = 1'b1;
          alu_operator_o      = ALU_ADD;
          reg_fp_b_o          = 1'b1;

          // offset from immediate
          imm_b_mux_sel_o     = IMMB_S;
          alu_op_b_mux_sel_o  = OP_B_IMM;

          // pass write data through ALU operand c
          alu_op_c_mux_sel_o = OP_C_REGB_OR_FWD;

          // Decode data type
          unique case (instr_rdata_i[14:12])
            // fsb - FP8 store
            3'b000 : if (C_XF8) data_type_o = 2'b10;
                     else illegal_insn_o = 1'b1;
            // fsh - FP16 store
            3'b001 : if (C_XF16 | C_XF16ALT) data_type_o = 2'b01;
                     else illegal_insn_o = 1'b1;
            // fsw - FP32 store
            3'b010 : if (C_RVF) data_type_o = 2'b00;
                     else illegal_insn_o = 1'b1;
            // fsd - FP64 store
            3'b011 : if (C_RVD) data_type_o = 2'b00; // 64bit stores unsupported!
                     else illegal_insn_o = 1'b1;
            default: illegal_insn_o = 1'b1;
          endcase

          // sanitize memory bus signals for illegal instr (not sure if needed??)
          if (illegal_insn_o) begin
            data_req       = 1'b0;
            data_we_o      = 1'b0;
          end
        end
        // FPU!=1
        else
          illegal_insn_o = 1'b1;
      end

      OPCODE_LOAD_FP: begin
        if (FPU==1) begin
          data_req            = 1'b1;
          regfile_mem_we      = 1'b1;
          reg_fp_d_o          = 1'b1;
          rega_used_o         = 1'b1;
          alu_operator_o      = ALU_ADD;

          // offset from immediate
          imm_b_mux_sel_o     = IMMB_I;
          alu_op_b_mux_sel_o  = OP_B_IMM;

          // NaN boxing
          data_sign_extension_o = 2'b10;

          // Decode data type
          unique case (instr_rdata_i[14:12])
            // flb - FP8 load
            3'b000 : if (C_XF8) data_type_o = 2'b10;
                     else illegal_insn_o = 1'b1;
            // flh - FP16 load
            3'b001 : if (C_XF16 | C_XF16ALT) data_type_o = 2'b01;
                     else illegal_insn_o = 1'b1;
            // flw - FP32 load
            3'b010 : if (C_RVF) data_type_o = 2'b00;
                     else illegal_insn_o = 1'b1;
            // fld - FP64 load
            3'b011 : if (C_RVD) data_type_o = 2'b00; // 64bit loads unsupported!
                     else illegal_insn_o = 1'b1;
            default: illegal_insn_o = 1'b1;
          endcase
        end
        // FPU!=1
        else
          illegal_insn_o = 1'b1;
      end

      OPCODE_PULP_OP: begin  // PULP specific ALU instructions with three source operands
        //nhunammm
        begin
          regfile_alu_we = 1'b1;
          rega_used_o    = 1'b1;
          regb_used_o    = 1'b1;

          case (instr_rdata_i[13:12])
            2'b00: begin // multiply with subword selection
              alu_en             = 1'b0;

              mult_sel_subword_o = instr_rdata_i[30];
              mult_signed_mode_o = {2{instr_rdata_i[31]}};

              mult_imm_mux_o = MIMM_S3;
              regc_mux_o     = REGC_ZERO;
              mult_int_en    = 1'b1;

              if (instr_rdata_i[14])
                mult_operator_o = MUL_IR;
              else
                mult_operator_o = MUL_I;
            end

            2'b01: begin // MAC with subword selection
              alu_en             = 1'b0;

              mult_sel_subword_o = instr_rdata_i[30];
              mult_signed_mode_o = {2{instr_rdata_i[31]}};

              regc_used_o     = 1'b1;
              regc_mux_o      = REGC_RD;
              mult_imm_mux_o  = MIMM_S3;
              mult_int_en     = 1'b1;

              if (instr_rdata_i[14])
                mult_operator_o = MUL_IR;
              else
                mult_operator_o = MUL_I;
            end

            2'b10: begin // add with normalization and rounding
              // decide between using unsigned and rounding, and combinations
              // thereof
              case ({instr_rdata_i[31],instr_rdata_i[14]})
                2'b00: alu_operator_o = ALU_ADD;
                2'b01: alu_operator_o = ALU_ADDR;
                2'b10: alu_operator_o = ALU_ADDU;
                2'b11: alu_operator_o = ALU_ADDUR;
              endcase

              bmask_a_mux_o = BMASK_A_ZERO;
              bmask_b_mux_o = BMASK_B_S3;

              if (instr_rdata_i[30]) begin
                //register variant
                regc_used_o            = 1'b1;
                regc_mux_o             = REGC_RD;
                alu_bmask_b_mux_sel_o  = BMASK_B_REG;
                alu_op_a_mux_sel_o     = OP_A_REGC_OR_FWD;
                alu_op_b_mux_sel_o     = OP_B_REGA_OR_FWD;
              end

            end

            2'b11: begin // sub with normalization and rounding
              // decide between using unsigned and rounding, and combinations
              // thereof
              case ({instr_rdata_i[31],instr_rdata_i[14]})
                2'b00: alu_operator_o = ALU_SUB;
                2'b01: alu_operator_o = ALU_SUBR;
                2'b10: alu_operator_o = ALU_SUBU;
                2'b11: alu_operator_o = ALU_SUBUR;
              endcase

              bmask_a_mux_o = BMASK_A_ZERO;
              bmask_b_mux_o = BMASK_B_S3;

              if (instr_rdata_i[30]) begin
                //register variant
                regc_used_o            = 1'b1;
                regc_mux_o             = REGC_RD;
                alu_bmask_b_mux_sel_o  = BMASK_B_REG;
                alu_op_a_mux_sel_o     = OP_A_REGC_OR_FWD;
                alu_op_b_mux_sel_o     = OP_B_REGA_OR_FWD;
              end

            end
          endcase
        end
      end

      ////////////////////////////////////////////////
      //  ____  ____  _____ ____ ___    _    _      //
      // / ___||  _ \| ____/ ___|_ _|  / \  | |     //
      // \___ \| |_) |  _|| |    | |  / _ \ | |     //
      //  ___) |  __/| |__| |___ | | / ___ \| |___  //
      // |____/|_|   |_____\____|___/_/   \_\_____| //
      //                                            //
      ////////////////////////////////////////////////

      OPCODE_FENCE: begin
        unique case (instr_rdata_i[14:12])
          3'b000: begin // FENCE (FENCE.I instead, a bit more conservative)
            // flush pipeline
            fencei_insn_o = 1'b1;
          end

          3'b001: begin // FENCE.I
            // flush prefetch buffer, flush pipeline
            fencei_insn_o = 1'b1;
          end

          default: begin
            illegal_insn_o =  1'b1;
          end
        endcase
      end

      OPCODE_SYSTEM: begin
        if (instr_rdata_i[14:12] == 3'b000)
        begin
          // non CSR related SYSTEM instructions
          if ( {instr_rdata_i[19:15], instr_rdata_i[11:7]} == '0)
          begin
            unique case (instr_rdata_i[31:20])
              12'h000:  // ECALL
              begin
                // environment (system) call
                ecall_insn_o  = 1'b1;
              end

              12'h001:  // ebreak
              begin
                // debugger trap
                ebrk_insn_o = 1'b1;
              end

              12'h302:  // mret
              begin
                illegal_insn_o = (PULP_SECURE) ? current_priv_lvl_i != PRIV_LVL_M : 1'b0;
                mret_insn_o    = ~illegal_insn_o;
                mret_dec_o     = 1'b1;
              end

              12'h002:  // uret
              begin
                illegal_insn_o = (PULP_SECURE) ? 1'b0 : 1'b1;
                uret_insn_o    = ~illegal_insn_o;
                uret_dec_o     = 1'b1;
              end

              12'h7b2:  // dret
              begin
                illegal_insn_o = !debug_mode_i;
                dret_insn_o    =  debug_mode_i;
                dret_dec_o     =  1'b1;
              end

              12'h105:  // wfi
              begin
                wfi_o = 1'b1;
                if (debug_wfi_no_sleep_i) begin
                  // Treat as NOP (do not cause sleep mode entry)
                  // Using decoding similar to ADDI, but without register reads/writes, i.e.
                  // keep regfile_alu_we = 0, rega_used_o = 0
                  alu_op_b_mux_sel_o = OP_B_IMM;
                  imm_b_mux_sel_o = IMMB_I;
                  alu_operator_o = ALU_ADD;
                end
              end

              default:
              begin
                illegal_insn_o = 1'b1;
              end
            endcase
          end else illegal_insn_o = 1'b1;
        end
        // else if(instr_rdata_i[31:20] == 12'h009) begin 
        //   if(instr_rdata_i[19:15] == 5'b00000 && instr_rdata_i[14:12] == 3'b010) begin 
        //     csr_op = CSR_OP_READ;
        //     vsat_rdov_o = 'd1;
        //     debug_csr = 1'b1;
        //     csr_access_o        = 1'b1;
        //     regfile_alu_we      = 1'b1;
        //     alu_op_b_mux_sel_o  = OP_B_IMM;
        //     imm_a_mux_sel_o     = IMMA_Z;
        //     imm_b_mux_sel_o     = IMMB_I;    // CSR address is encoded in I imm
        //     alu_en              = 'd0;
        //   end
        //   else if (instr_rdata_i[19:15] == 5'b00001 && instr_rdata_i[14:12] == 3'b111) begin 
        //     csr_op = CSR_OP_CLEAR;
        //     debug_csr = 'd1;
        //     csr_access_o        = 1'b1;
        //     regfile_alu_we      = 1'b1;
        //     alu_op_b_mux_sel_o  = OP_B_IMM;
        //     imm_a_mux_sel_o     = IMMA_Z;
        //     imm_b_mux_sel_o     = IMMB_I;    // CSR address is encoded in I imm
        //     alu_en              = 'd0;
        //   end
        // end
        else
        begin
          // instruction to read/modify CSR
          csr_access_o        = 1'b1;
          regfile_alu_we      = 1'b1;
          alu_op_b_mux_sel_o  = OP_B_IMM;
          imm_a_mux_sel_o     = IMMA_Z;
          imm_b_mux_sel_o     = IMMB_I;    // CSR address is encoded in I imm

          if (instr_rdata_i[14] == 1'b1) begin
            // rs1 field is used as immediate
            alu_op_a_mux_sel_o = OP_A_IMM;
          end else begin
            rega_used_o        = 1'b1;
            alu_op_a_mux_sel_o = OP_A_REGA_OR_FWD;
          end

          // instr_rdata_i[19:14] = rs or immediate value
          //   if set or clear with rs==x0 or imm==0,
          //   then do not perform a write action
          unique case (instr_rdata_i[13:12])
            2'b01:   csr_op   = CSR_OP_WRITE;
            2'b10:   begin 
              csr_op   = instr_rdata_i[19:15] == 5'b0 ? CSR_OP_READ : CSR_OP_SET;
            end
            2'b11:   csr_op   = instr_rdata_i[19:15] == 5'b0 ? CSR_OP_READ : CSR_OP_CLEAR;
            default: csr_illegal = 1'b1;
          endcase

          if (instr_rdata_i[29:28] > current_priv_lvl_i) begin
            // No access to higher privilege CSR
            csr_illegal = 1'b1;
          end

          // Determine if CSR access is illegal
          case (instr_rdata_i[31:20])

            12'h009: begin 
              if(instr_rdata_i[19:15] == 5'b00000 && instr_rdata_i[14:12] == 3'b010) begin 
                csr_op = CSR_OP_READ;
                csr_access_o        = 1'b1;
                regfile_alu_we      = 1'b1;
                alu_op_b_mux_sel_o  = OP_B_IMM;
                imm_a_mux_sel_o     = IMMA_Z;
                imm_b_mux_sel_o     = IMMB_I;    // CSR address is encoded in I imm
                // csr_illegal = 1'b1;
                // alu_en              = 'd0;
              end
              else if (instr_rdata_i[19:15] == 5'b00001 && instr_rdata_i[14:12] == 3'b111) begin 
                csr_op = CSR_OP_CLEAR;
                debug_csr_op = CSR_OP_CLEAR;
                csr_access_o        = 1'b1;
                regfile_alu_we      = 1'b1;
                alu_op_b_mux_sel_o  = OP_B_IMM;
                imm_a_mux_sel_o     = IMMA_Z;
                imm_b_mux_sel_o     = IMMB_I;    // CSR address is encoded in I imm
                // alu_en              = 'd0;
              end
            end
            // Floating point
            CSR_FFLAGS,
              CSR_FRM,
              CSR_FCSR :
                if(!FPU) csr_illegal = 1'b1;

            //  Writes to read only CSRs results in illegal instruction
            CSR_MVENDORID,
              CSR_MARCHID,
              CSR_MIMPID,
              CSR_MHARTID :
                if(csr_op != CSR_OP_READ) csr_illegal = 1'b1;

            // These are valid CSR registers
            CSR_MSTATUS,
              CSR_MEPC,
              CSR_MTVEC,
              CSR_MCAUSE :
                // Not illegal, but treat as status CSR for side effect handling
                csr_status_o = 1'b1;

            // These are valid CSR registers
            CSR_MISA,
              CSR_MIE,
              CSR_MSCRATCH,
              CSR_MTVAL,
              CSR_MIP :
                ; // do nothing, not illegal

            // Hardware Performance Monitor
            CSR_MCYCLE,
              CSR_MINSTRET,
              CSR_MHPMCOUNTER3,
              CSR_MHPMCOUNTER4,  CSR_MHPMCOUNTER5,  CSR_MHPMCOUNTER6,  CSR_MHPMCOUNTER7,
              CSR_MHPMCOUNTER8,  CSR_MHPMCOUNTER9,  CSR_MHPMCOUNTER10, CSR_MHPMCOUNTER11,
              CSR_MHPMCOUNTER12, CSR_MHPMCOUNTER13, CSR_MHPMCOUNTER14, CSR_MHPMCOUNTER15,
              CSR_MHPMCOUNTER16, CSR_MHPMCOUNTER17, CSR_MHPMCOUNTER18, CSR_MHPMCOUNTER19,
              CSR_MHPMCOUNTER20, CSR_MHPMCOUNTER21, CSR_MHPMCOUNTER22, CSR_MHPMCOUNTER23,
              CSR_MHPMCOUNTER24, CSR_MHPMCOUNTER25, CSR_MHPMCOUNTER26, CSR_MHPMCOUNTER27,
              CSR_MHPMCOUNTER28, CSR_MHPMCOUNTER29, CSR_MHPMCOUNTER30, CSR_MHPMCOUNTER31,
              CSR_MCYCLEH,
              CSR_MINSTRETH,
              CSR_MHPMCOUNTER3H,
              CSR_MHPMCOUNTER4H,  CSR_MHPMCOUNTER5H,  CSR_MHPMCOUNTER6H,  CSR_MHPMCOUNTER7H,
              CSR_MHPMCOUNTER8H,  CSR_MHPMCOUNTER9H,  CSR_MHPMCOUNTER10H, CSR_MHPMCOUNTER11H,
              CSR_MHPMCOUNTER12H, CSR_MHPMCOUNTER13H, CSR_MHPMCOUNTER14H, CSR_MHPMCOUNTER15H,
              CSR_MHPMCOUNTER16H, CSR_MHPMCOUNTER17H, CSR_MHPMCOUNTER18H, CSR_MHPMCOUNTER19H,
              CSR_MHPMCOUNTER20H, CSR_MHPMCOUNTER21H, CSR_MHPMCOUNTER22H, CSR_MHPMCOUNTER23H,
              CSR_MHPMCOUNTER24H, CSR_MHPMCOUNTER25H, CSR_MHPMCOUNTER26H, CSR_MHPMCOUNTER27H,
              CSR_MHPMCOUNTER28H, CSR_MHPMCOUNTER29H, CSR_MHPMCOUNTER30H, CSR_MHPMCOUNTER31H,
              CSR_MCOUNTINHIBIT,
              CSR_MHPMEVENT3,
              CSR_MHPMEVENT4,  CSR_MHPMEVENT5,  CSR_MHPMEVENT6,  CSR_MHPMEVENT7,
              CSR_MHPMEVENT8,  CSR_MHPMEVENT9,  CSR_MHPMEVENT10, CSR_MHPMEVENT11,
              CSR_MHPMEVENT12, CSR_MHPMEVENT13, CSR_MHPMEVENT14, CSR_MHPMEVENT15,
              CSR_MHPMEVENT16, CSR_MHPMEVENT17, CSR_MHPMEVENT18, CSR_MHPMEVENT19,
              CSR_MHPMEVENT20, CSR_MHPMEVENT21, CSR_MHPMEVENT22, CSR_MHPMEVENT23,
              CSR_MHPMEVENT24, CSR_MHPMEVENT25, CSR_MHPMEVENT26, CSR_MHPMEVENT27,
              CSR_MHPMEVENT28, CSR_MHPMEVENT29, CSR_MHPMEVENT30, CSR_MHPMEVENT31 :
                // Not illegal, but treat as status CSR to get accurate counts
                csr_status_o = 1'b1;

            // Hardware Performance Monitor (unprivileged read-only mirror CSRs)
            CSR_CYCLE,
              CSR_INSTRET,
              CSR_HPMCOUNTER3,
              CSR_HPMCOUNTER4,  CSR_HPMCOUNTER5,  CSR_HPMCOUNTER6,  CSR_HPMCOUNTER7,
              CSR_HPMCOUNTER8,  CSR_HPMCOUNTER9,  CSR_HPMCOUNTER10, CSR_HPMCOUNTER11,
              CSR_HPMCOUNTER12, CSR_HPMCOUNTER13, CSR_HPMCOUNTER14, CSR_HPMCOUNTER15,
              CSR_HPMCOUNTER16, CSR_HPMCOUNTER17, CSR_HPMCOUNTER18, CSR_HPMCOUNTER19,
              CSR_HPMCOUNTER20, CSR_HPMCOUNTER21, CSR_HPMCOUNTER22, CSR_HPMCOUNTER23,
              CSR_HPMCOUNTER24, CSR_HPMCOUNTER25, CSR_HPMCOUNTER26, CSR_HPMCOUNTER27,
              CSR_HPMCOUNTER28, CSR_HPMCOUNTER29, CSR_HPMCOUNTER30, CSR_HPMCOUNTER31,
              CSR_CYCLEH,
              CSR_INSTRETH,
              CSR_HPMCOUNTER3H,
              CSR_HPMCOUNTER4H,  CSR_HPMCOUNTER5H,  CSR_HPMCOUNTER6H,  CSR_HPMCOUNTER7H,
              CSR_HPMCOUNTER8H,  CSR_HPMCOUNTER9H,  CSR_HPMCOUNTER10H, CSR_HPMCOUNTER11H,
              CSR_HPMCOUNTER12H, CSR_HPMCOUNTER13H, CSR_HPMCOUNTER14H, CSR_HPMCOUNTER15H,
              CSR_HPMCOUNTER16H, CSR_HPMCOUNTER17H, CSR_HPMCOUNTER18H, CSR_HPMCOUNTER19H,
              CSR_HPMCOUNTER20H, CSR_HPMCOUNTER21H, CSR_HPMCOUNTER22H, CSR_HPMCOUNTER23H,
              CSR_HPMCOUNTER24H, CSR_HPMCOUNTER25H, CSR_HPMCOUNTER26H, CSR_HPMCOUNTER27H,
              CSR_HPMCOUNTER28H, CSR_HPMCOUNTER29H, CSR_HPMCOUNTER30H, CSR_HPMCOUNTER31H :
                // Read-only and readable from user mode only if the bit of mcounteren is set
                if((csr_op != CSR_OP_READ) || (PULP_SECURE && (current_priv_lvl_i != PRIV_LVL_M) && !mcounteren_i[instr_rdata_i[24:20]])) begin
                  csr_illegal = 1'b1;
                end else begin
                  csr_status_o = 1'b1;
                end

            // This register only exists in user mode
            CSR_MCOUNTEREN :
              if(!PULP_SECURE) begin
                csr_illegal = 1'b1;
              end else begin
                csr_status_o = 1'b1;
              end

            // Debug register access
            CSR_DCSR,
              CSR_DPC,
              CSR_DSCRATCH0,
              CSR_DSCRATCH1 :
                if(!debug_mode_i) begin
                  csr_illegal = 1'b1;
              end else begin
                csr_status_o = 1'b1;
              end

            // Debug Trigger register access
            CSR_TSELECT,
              CSR_TDATA1,
              CSR_TDATA2,
              CSR_TDATA3,
              CSR_TINFO,
              CSR_MCONTEXT,
              CSR_SCONTEXT :
                if(DEBUG_TRIGGER_EN != 1)
                  csr_illegal = 1'b1;

            // Hardware Loop register, UHARTID access
            CSR_LPSTART0,
              CSR_LPEND0,
              CSR_LPCOUNT0,
              CSR_LPSTART1,
              CSR_LPEND1,
              CSR_LPCOUNT1,
              CSR_UHARTID :
                if(!PULP_XPULP) csr_illegal = 1'b1;

            // PRIVLV access
            CSR_PRIVLV :
              if(!PULP_XPULP) begin
                csr_illegal = 1'b1;
              end else begin
                csr_status_o = 1'b1;
              end

            // PMP register access
            CSR_PMPCFG0,
              CSR_PMPCFG1,
              CSR_PMPCFG2,
              CSR_PMPCFG3,
              CSR_PMPADDR0,
              CSR_PMPADDR1,
              CSR_PMPADDR2,
              CSR_PMPADDR3,
              CSR_PMPADDR4,
              CSR_PMPADDR5,
              CSR_PMPADDR6,
              CSR_PMPADDR7,
              CSR_PMPADDR8,
              CSR_PMPADDR9,
              CSR_PMPADDR10,
              CSR_PMPADDR11,
              CSR_PMPADDR12,
              CSR_PMPADDR13,
              CSR_PMPADDR14,
              CSR_PMPADDR15 :
                if(!USE_PMP) csr_illegal = 1'b1;

            // User register access
            CSR_USTATUS,
              CSR_UEPC,
              CSR_UTVEC,
              CSR_UCAUSE :
                if (!PULP_SECURE) begin
                  csr_illegal = 1'b1;
                end else begin
                  csr_status_o = 1'b1;
                end

            default : csr_illegal = 1'b1;

          endcase // case (instr_rdata_i[31:20])

          illegal_insn_o = csr_illegal;

        end

      end

      default: begin
        illegal_insn_o = 1'b1;
      end
    endcase


    // make sure invalid compressed instruction causes an exception
    if (illegal_c_insn_i) begin
      illegal_insn_o = 1'b1;
    end

  end

  // deassert we signals (in case of stalls)
  assign alu_en_o                    = (deassert_we_i) ? 1'b0          : alu_en;
  assign apu_en_o                    = (deassert_we_i) ? 1'b0          : apu_en;
  assign mult_int_en_o               = (deassert_we_i) ? 1'b0          : mult_int_en;
  assign mult_dot_en_o               = (deassert_we_i) ? 1'b0          : mult_dot_en;
  assign regfile_mem_we_o            = (deassert_we_i) ? 1'b0          : regfile_mem_we;
  assign regfile_alu_we_o            = (deassert_we_i) ? 1'b0          : regfile_alu_we;
  assign data_req_o                  = (deassert_we_i) ? 1'b0          : data_req;
  assign hwlp_we_o                   = (deassert_we_i) ? 3'b0          : hwlp_we;
  assign csr_op_o                    = (deassert_we_i) ? CSR_OP_READ   : csr_op;
  assign ctrl_transfer_insn_in_id_o  = (deassert_we_i) ? BRANCH_NONE   : ctrl_transfer_insn;

  assign ctrl_transfer_insn_in_dec_o  = ctrl_transfer_insn;
  assign regfile_alu_we_dec_o         = regfile_alu_we;

endmodule // cv32e40p_decoder
