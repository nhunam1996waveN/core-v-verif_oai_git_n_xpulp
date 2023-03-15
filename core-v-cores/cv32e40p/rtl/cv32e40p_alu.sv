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
// Engineer:       Matthias Baer - baermatt@student.ethz.ch                   //
//                                                                            //
// Additional contributions by:                                               //
//                 Igor Loi - igor.loi@unibo.it                               //
//                 Andreas Traber - atraber@student.ethz.ch                   //
//                 Michael Gautschi - gautschi@iis.ee.ethz.ch                 //
//                 Davide Schiavone - pschiavo@iis.ee.ethz.ch                 //
//                                                                            //
// Design Name:    ALU                                                        //
// Project Name:   RI5CY                                                      //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Arithmetic logic unit of the pipelined processor           //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

module cv32e40p_alu
  import cv32e40p_pkg::*;
(
    input logic               clk,
    input logic               rst_n,
    input logic               enable_i,
    input alu_opcode_e        operator_i,
    input logic        [31:0] operand_a_i,
    input logic        [31:0] operand_b_i,
    input logic        [31:0] operand_a1_i,
    input logic        [31:0] operand_b1_i,
    input logic        [31:0] operand_c_i,

    input logic [1:0] vector_mode_i,
    input logic [4:0] bmask_a_i,
    input logic [4:0] bmask_b_i,
    input logic [1:0] imm_vec_ext_i,
    input logic [63:0] data_wdata_reg_i,

    input logic       is_clpx_i,
    input logic       is_subrot_i,
    input logic [1:0] clpx_shift_i,

    output logic [31:0] result_o,
    output logic [31:0] result64_o,
    output logic        result_ov_o,
    output logic        comparison_result_o,

    output logic ready_o,
    input  logic ex_ready_i
);
  logic [3:0][7:0]       operand_a_i_2d,operand_b_i_2d;
  logic [1:0][15:0]      operand_a16_i_2d,operand_b16_i_2d;
  assign                 operand_a_i_2d = operand_a_i;
  assign                 operand_b_i_2d = operand_b_i;

  assign                 operand_a16_i_2d = operand_a_i;
  assign                 operand_b16_i_2d = operand_b_i;

  logic       ov_o;
  assign      result_ov_o = ov_o;
  logic [4:0] alu_imm_i;
  assign alu_imm_i = operand_b_i[4:0];
  logic [31:0] operand_a_rev;
  logic [31:0] operand_a_neg;
  logic [31:0] operand_a_neg_rev;
  logic [63:0] reg_kmmac_result;
  assign       reg_kmmac_result = data_wdata_reg_i;

  logic p_vector_en;
  logic us_en, shift_one_en;
  assign p_vector_en  = operator_i == ADD8  || operator_i == ADD16 || operator_i == URADD8|| operator_i == URADD16 ||
                        operator_i == RADD8 || operator_i == RADD16;
  assign us_en        = operator_i == URADD8|| operator_i == URADD16;
  assign shift_one_en = operator_i == URADD8|| operator_i == URADD16 || operator_i == RADD8|| operator_i == RADD16;
  logic [63:0] operand_a64_i;
  logic [63:0] operand_b64_i;
  assign operand_a64_i = {operand_a1_i,operand_a_i};
  assign operand_b64_i = {operand_b1_i,operand_b_i};

  assign operand_a_neg = ~operand_a_i;

  // bit reverse operand_a for left shifts and bit counting
  generate
    genvar k;
    for (k = 0; k < 32; k++) begin : gen_operand_a_rev
      assign operand_a_rev[k] = operand_a_i[31-k];
    end
  endgenerate

  // bit reverse operand_a_neg for left shifts and bit counting
  generate
    genvar m;
    for (m = 0; m < 32; m++) begin : gen_operand_a_neg_rev
      assign operand_a_neg_rev[m] = operand_a_neg[31-m];
    end
  endgenerate

  logic [31:0] operand_b_neg;

  assign operand_b_neg = ~operand_b_i;


  logic [ 5:0] div_shift;
  logic        div_valid;
  logic [31:0] bmask;

  //////////////////////////////////////////////////////////////////////////////////////////
  //   ____            _   _ _   _                      _      _       _     _            //
  //  |  _ \ __ _ _ __| |_(_) |_(_) ___  _ __   ___  __| |    / \   __| | __| | ___ _ __  //
  //  | |_) / _` | '__| __| | __| |/ _ \| '_ \ / _ \/ _` |   / _ \ / _` |/ _` |/ _ \ '__| //
  //  |  __/ (_| | |  | |_| | |_| | (_) | | | |  __/ (_| |  / ___ \ (_| | (_| |  __/ |    //
  //  |_|   \__,_|_|   \__|_|\__|_|\___/|_| |_|\___|\__,_| /_/   \_\__,_|\__,_|\___|_|    //
  //                                                                                      //
  //////////////////////////////////////////////////////////////////////////////////////////

  logic        adder_op_b_negate;
  logic [31:0] adder_op_a, adder_op_b;
  logic [35:0] adder_in_a, adder_in_b;
  logic [31:0] adder_result;
  logic [36:0] adder_result_expanded;
  logic        sub_en;
  assign       sub_en = operator_i ==SUB8;

  assign adder_op_b_negate = (operator_i == ALU_SUB) || (operator_i == ALU_SUBR) || operator_i ==SUB8 || operator_i ==SUB16 ||
                             (operator_i == ALU_SUBU) || (operator_i == ALU_SUBUR) || is_subrot_i;

  // prepare operand a
  assign adder_op_a = (operator_i == ALU_ABS) ? operand_a_neg : (is_subrot_i ? {
    operand_b_i[15:0], operand_a_i[31:16]
  } : operand_a_i);

  // prepare operand b
  assign adder_op_b = adder_op_b_negate ? (is_subrot_i ? ~{
    operand_a_i[15:0], operand_b_i[31:16]
  } : operand_b_neg) : operand_b_i;

  // prepare carry
  always_comb begin
    adder_in_a[0]     = 1'b1;
    adder_in_a[8:1]   = adder_op_a[7:0];
    adder_in_a[9]     = 1'b1;
    adder_in_a[17:10] = adder_op_a[15:8];
    adder_in_a[18]    = 1'b1;
    adder_in_a[26:19] = adder_op_a[23:16];
    adder_in_a[27]    = 1'b1;
    adder_in_a[35:28] = adder_op_a[31:24];

    adder_in_b[0]     = 1'b0;
    adder_in_b[8:1]   = adder_op_b[7:0];
    adder_in_b[9]     = 1'b0;
    adder_in_b[17:10] = adder_op_b[15:8];
    adder_in_b[18]    = 1'b0;
    adder_in_b[26:19] = adder_op_b[23:16];
    adder_in_b[27]    = 1'b0;
    adder_in_b[35:28] = adder_op_b[31:24];

    if (adder_op_b_negate || (operator_i == ALU_ABS || operator_i == ALU_CLIP)) begin
      // special case for subtractions and absolute number calculations
      adder_in_b[0] = 1'b1;

      case (vector_mode_i)
        VEC_MODE16: begin
          adder_in_b[18] = 1'b1;
        end

        VEC_MODE8: begin
          adder_in_b[9]  = 1'b1;
          adder_in_b[18] = 1'b1;
          adder_in_b[27] = 1'b1;
        end
      endcase

      case (operator_i)
        SUB16: begin
          adder_in_b[18] = 1'b1;
        end

        SUB8: begin
          adder_in_b[9]  = 1'b1;
          adder_in_b[18] = 1'b1;
          adder_in_b[27] = 1'b1;
        end
      endcase
    end 
    else if (p_vector_en) begin 
      case (operator_i)
        ADD16: begin
          adder_in_a[18] = 1'b0;
        end
        URADD16,RADD16: begin 
          adder_in_a[0]     = 1'b1;
          adder_in_a[8:1]   = adder_op_a[7:0];
          adder_in_a[16:9] = adder_op_a[15:8];
          adder_in_a[17]    = 1'b0;
          adder_in_a[25:18] = adder_op_a[23:16];
          adder_in_a[33:26] = adder_op_a[31:24];
          adder_in_a[34]    = 1'b0;
          adder_in_a[35]    = 1'b0;
          
          adder_in_b[0]     = 1'b1;
          adder_in_b[8:1]   = adder_op_b[7:0];
          adder_in_b[16:9]  = adder_op_b[15:8];
          adder_in_b[17]    = 1'b0;
          adder_in_b[25:18] = adder_op_b[23:16];
          adder_in_b[33:26] = adder_op_b[31:24];
          adder_in_b[34]    = 1'b0;
          adder_in_b[35]    = 1'b0;    
        end
        ADD8,URADD8,RADD8: begin
          adder_in_a[9]  = 1'b0;
          adder_in_a[18] = 1'b0;
          adder_in_a[27] = 1'b0;
        end
      endcase
    end
    else begin
      // take care of partitioning the adder for the addition case
      case (vector_mode_i)
        VEC_MODE16: begin
          adder_in_a[18] = 1'b0;
        end

        VEC_MODE8: begin
          adder_in_a[9]  = 1'b0;
          adder_in_a[18] = 1'b0;
          adder_in_a[27] = 1'b0;
        end
      endcase
    end
  end

  // actual adder
  // logic [36:0]adder_result_expanded_test;
  assign adder_result_expanded = (us_en) ? shift_one_en ? ((adder_in_a) + (adder_in_b)) >>1 :(adder_in_a) + (adder_in_b) 
                                         : shift_one_en ? ($signed(adder_in_a) + $signed(adder_in_b)) >> 1 : $signed(adder_in_a) + $signed(adder_in_b);
  logic [36:0] adder_result_expanded_test;
  logic [36:0] adder_result_expanded_test1;
  logic [31:0] adder_result_test;
  // assign adder_result_expanded_test = (adder_in_a) + (adder_in_b) >> 1;
  logic [35:0]test_ra, test_rb;
  assign test_ra = {2'b0,operand_a_i[31:24],operand_a_i[23:16],1'b0, operand_a_i[15:8],operand_a_i[7:0],1'b1};
  assign test_rb = {2'b0,operand_b_i[31:24],operand_b_i[23:16],1'b0, operand_b_i[15:8],operand_b_i[7:0],1'b0};
  assign adder_result_expanded_test = ($signed(test_ra) + $signed(test_rb)) >> 1;
  assign adder_result_expanded_test1 = {adder_result_expanded_test};
  assign adder_result = operator_i == URADD16 ?  
  { adder_result_expanded_test[33:18],
    adder_result_expanded_test[16:1]
  }
  :
  {
    adder_result_expanded[35:28],
    adder_result_expanded[26:19],
    adder_result_expanded[17:10],
    adder_result_expanded[8:1]
  };

  assign adder_result_test = {
    adder_result_expanded_test[33:18],
    adder_result_expanded_test[16:1]//,
    // adder_result_expanded_test[17:10],
    // adder_result_expanded_test[8:1]
  };


  // normalization stage
  logic [31:0] adder_round_value;
  logic [31:0] adder_round_result;

  assign adder_round_value  = ((operator_i == ALU_ADDR) || (operator_i == ALU_SUBR) || operator_i == URADD8|| operator_i == URADD16 ||
                               (operator_i == ALU_ADDUR) || (operator_i == ALU_SUBUR)) ?
                                {
    1'b0, bmask[31:1]
  } : '0;
  assign adder_round_result = adder_result + adder_round_value;


  ////////////////////////////////////////
  //  ____  _   _ ___ _____ _____       //
  // / ___|| | | |_ _|  ___|_   _|      //
  // \___ \| |_| || || |_    | |        //
  //  ___) |  _  || ||  _|   | |        //
  // |____/|_| |_|___|_|     |_|        //
  //                                    //
  ////////////////////////////////////////

  logic        shift_left;  // should we shift left
  logic        shift_use_round;
  logic        shift_arithmetic;

  logic [31:0] shift_amt_left;  // amount of shift, if to the left
  logic [31:0] shift_amt;  // amount of shift, to the right
  logic [31:0] shift_amt_int;  // amount of shift, used for the actual shifters
  logic [31:0] shift_amt_norm;  // amount of shift, used for normalization
  logic [31:0] shift_op_a;  // input of the shifter
  logic [31:0] shift_result;
  logic [31:0] shift_right_result;
  logic [31:0] shift_left_result;
  logic [15:0] clpx_shift_ex;

  // shifter is also used for preparing operand for division
  assign shift_amt = div_valid ? div_shift : operand_b_i;

  // by reversing the bits of the input, we also have to reverse the order of shift amounts
  always_comb begin
    case (vector_mode_i)
      VEC_MODE16: begin
        shift_amt_left[15:0]  = shift_amt[31:16];
        shift_amt_left[31:16] = shift_amt[15:0];
      end

      VEC_MODE8: begin
        shift_amt_left[7:0]   = shift_amt[31:24];
        shift_amt_left[15:8]  = shift_amt[23:16];
        shift_amt_left[23:16] = shift_amt[15:8];
        shift_amt_left[31:24] = shift_amt[7:0];
      end

      default: // VEC_MODE32
      begin
        shift_amt_left[31:0] = shift_amt[31:0];
      end
    endcase
  end

  // ALU_FL1 and ALU_CBL are used for the bit counting ops later
  assign shift_left = (operator_i == ALU_SLL) || (operator_i == ALU_BINS) ||
                      (operator_i == ALU_FL1) || (operator_i == ALU_CLB)  ||
                      (operator_i == ALU_DIV) || (operator_i == ALU_DIVU) ||
                      (operator_i == ALU_REM) || (operator_i == ALU_REMU) ||
                      (operator_i == ALU_BREV);

  assign shift_use_round = (operator_i == ALU_ADD)   || (operator_i == ALU_SUB)   ||
                           (operator_i == ALU_ADDR)  || (operator_i == ALU_SUBR)  ||
                           (operator_i == ALU_ADDU)  || (operator_i == ALU_SUBU)  ||
                           (operator_i == ALU_ADDUR) || (operator_i == ALU_SUBUR) ||
                           (operator_i == ADD8)      || (operator_i == ADD16)     || // p-ext
                           (operator_i == RADD8)     || (operator_i == RADD16)    ||
                           (operator_i == URADD8)    || (operator_i == URADD16)   ||
                           (operator_i == SUB8)      || (operator_i == SUB16); // P-ext

  assign shift_arithmetic = (operator_i == ALU_SRA)  || (operator_i == ALU_BEXT) ||
                            (operator_i == ALU_ADD)  || (operator_i == ALU_SUB)  ||
                            (operator_i == ALU_ADDR) || (operator_i == ALU_SUBR)  ||
                            (operator_i == URADD8)      || (operator_i == URADD16); // p-ext

  // choose the bit reversed or the normal input for shift operand a
  assign shift_op_a    = shift_left ? operand_a_rev :
                          (shift_use_round ? adder_round_result : operand_a_i);
  assign shift_amt_int = shift_use_round ? shift_amt_norm :
                          (shift_left ? shift_amt_left : shift_amt);

  assign shift_amt_norm = is_clpx_i ? {clpx_shift_ex, clpx_shift_ex} : {4{3'b000, bmask_b_i}};

  assign clpx_shift_ex = $unsigned(clpx_shift_i);

  // right shifts, we let the synthesizer optimize this
  logic [63:0] shift_op_a_32;

  assign shift_op_a_32 = (operator_i == ALU_ROR) ? {
        shift_op_a, shift_op_a
      } : $signed(
          {{32{shift_arithmetic & shift_op_a[31]}}, shift_op_a}
      );

  always_comb begin
    case (vector_mode_i)
      VEC_MODE16: begin
        shift_right_result[31:16] = $signed(
            {shift_arithmetic & shift_op_a[31], shift_op_a[31:16]}
        ) >>> shift_amt_int[19:16];
        shift_right_result[15:0] = $signed(
            {shift_arithmetic & shift_op_a[15], shift_op_a[15:0]}
        ) >>> shift_amt_int[3:0];
      end

      VEC_MODE8: begin
        shift_right_result[31:24] = $signed(
            {shift_arithmetic & shift_op_a[31], shift_op_a[31:24]}
        ) >>> shift_amt_int[26:24];
        shift_right_result[23:16] = $signed(
            {shift_arithmetic & shift_op_a[23], shift_op_a[23:16]}
        ) >>> shift_amt_int[18:16];
        shift_right_result[15:8] = $signed(
            {shift_arithmetic & shift_op_a[15], shift_op_a[15:8]}
        ) >>> shift_amt_int[10:8];
        shift_right_result[7:0] = $signed(
            {shift_arithmetic & shift_op_a[7], shift_op_a[7:0]}
        ) >>> shift_amt_int[2:0];
      end

      default: // VEC_MODE32
      begin
        shift_right_result = shift_op_a_32 >> shift_amt_int[4:0];
      end
    endcase
    ;  // case (vec_mode_i)
  end

  // bit reverse the shift_right_result for left shifts
  genvar j;
  generate
    for (j = 0; j < 32; j++) begin : gen_shift_left_result
      assign shift_left_result[j] = shift_right_result[31-j];
    end
  endgenerate

  assign shift_result = shift_left ? shift_left_result : shift_right_result;


  //////////////////////////////////////////////////////////////////
  //   ____ ___  __  __ ____   _    ____  ___ ____   ___  _   _   //
  //  / ___/ _ \|  \/  |  _ \ / \  |  _ \|_ _/ ___| / _ \| \ | |  //
  // | |  | | | | |\/| | |_) / _ \ | |_) || |\___ \| | | |  \| |  //
  // | |__| |_| | |  | |  __/ ___ \|  _ < | | ___) | |_| | |\  |  //
  //  \____\___/|_|  |_|_| /_/   \_\_| \_\___|____/ \___/|_| \_|  //
  //                                                              //
  //////////////////////////////////////////////////////////////////

  logic [ 3:0] is_equal;
  logic [ 3:0] is_greater;  // handles both signed and unsigned forms

  // 8-bit vector comparisons, basic building blocks
  logic [ 3:0] cmp_signed;
  logic [ 3:0] is_equal_vec;
  logic [ 3:0] is_greater_vec;
  logic [31:0] operand_b_eq;
  logic        is_equal_clip;


  //second == comparator for CLIP instructions
  always_comb begin
    operand_b_eq = operand_b_neg;
    if (operator_i == ALU_CLIPU) operand_b_eq = '0;
    else operand_b_eq = operand_b_neg;
  end
  assign is_equal_clip = operand_a_i == operand_b_eq;

  always_comb begin
    cmp_signed = 4'b0;

    unique case (operator_i)
      ALU_GTS,
      ALU_GES,
      ALU_LTS,
      ALU_LES,
      ALU_SLTS,
      ALU_SLETS,
      ALU_MIN,
      ALU_MAX,
      ALU_ABS,
      ALU_CLIP,
      ALU_CLIPU: begin
        case (vector_mode_i)
          VEC_MODE8:  cmp_signed[3:0] = 4'b1111;
          VEC_MODE16: cmp_signed[3:0] = 4'b1010;
          default:    cmp_signed[3:0] = 4'b1000;
        endcase
      end

      default: ;
    endcase
  end

  // generate vector equal and greater than signals, cmp_signed decides if the
  // comparison is done signed or unsigned
  genvar i;
  generate
    for (i = 0; i < 4; i++) begin : gen_is_vec
      assign is_equal_vec[i] = (operand_a_i[8*i+7:8*i] == operand_b_i[8*i+7:i*8]);
      assign is_greater_vec[i] = $signed(
          {operand_a_i[8*i+7] & cmp_signed[i], operand_a_i[8*i+7:8*i]}
      ) > $signed(
          {operand_b_i[8*i+7] & cmp_signed[i], operand_b_i[8*i+7:i*8]}
      );
    end
  endgenerate

  // generate the real equal and greater than signals that take the vector
  // mode into account
  always_comb begin
    // 32-bit mode
    is_equal[3:0] = {4{is_equal_vec[3] & is_equal_vec[2] & is_equal_vec[1] & is_equal_vec[0]}};
    is_greater[3:0] = {4{is_greater_vec[3] | (is_equal_vec[3] & (is_greater_vec[2]
                                            | (is_equal_vec[2] & (is_greater_vec[1]
                                             | (is_equal_vec[1] & (is_greater_vec[0]))))))}};

    case (vector_mode_i)
      VEC_MODE16: begin
        is_equal[1:0]   = {2{is_equal_vec[0] & is_equal_vec[1]}};
        is_equal[3:2]   = {2{is_equal_vec[2] & is_equal_vec[3]}};
        is_greater[1:0] = {2{is_greater_vec[1] | (is_equal_vec[1] & is_greater_vec[0])}};
        is_greater[3:2] = {2{is_greater_vec[3] | (is_equal_vec[3] & is_greater_vec[2])}};
      end

      VEC_MODE8: begin
        is_equal[3:0]   = is_equal_vec[3:0];
        is_greater[3:0] = is_greater_vec[3:0];
      end

      default: ;  // see default assignment
    endcase
  end

  // generate comparison result
  logic [3:0] cmp_result;

  always_comb begin
    cmp_result = is_equal;
    unique case (operator_i)
      ALU_EQ:                                 cmp_result = is_equal;
      ALU_NE:                                 cmp_result = ~is_equal;
      ALU_GTS, ALU_GTU:                       cmp_result = is_greater;
      ALU_GES, ALU_GEU:                       cmp_result = is_greater | is_equal;
      ALU_LTS, ALU_SLTS, ALU_LTU, ALU_SLTU:   cmp_result = ~(is_greater | is_equal);
      ALU_SLETS, ALU_SLETU, ALU_LES, ALU_LEU: cmp_result = ~is_greater;
      default:                                ;
    endcase
  end

  assign comparison_result_o = cmp_result[3];


  // min/max/abs handling
  logic [31:0] result_minmax;
  logic [ 3:0] sel_minmax;
  logic        do_min;
  logic [31:0] minmax_b;

  assign minmax_b = (operator_i == ALU_ABS) ? adder_result : operand_b_i;

  assign do_min   = (operator_i == ALU_MIN)  || (operator_i == ALU_MINU) ||
                    (operator_i == ALU_CLIP) || (operator_i == ALU_CLIPU);

  assign sel_minmax[3:0] = is_greater ^ {4{do_min}};

  assign result_minmax[31:24] = (sel_minmax[3] == 1'b1) ? operand_a_i[31:24] : minmax_b[31:24];
  assign result_minmax[23:16] = (sel_minmax[2] == 1'b1) ? operand_a_i[23:16] : minmax_b[23:16];
  assign result_minmax[15:8] = (sel_minmax[1] == 1'b1) ? operand_a_i[15:8] : minmax_b[15:8];
  assign result_minmax[7:0] = (sel_minmax[0] == 1'b1) ? operand_a_i[7:0] : minmax_b[7:0];

  //////////////////////////////////////////////////
  // Clip
  //////////////////////////////////////////////////
  logic [31:0] clip_result;  // result of clip and clip

  always_comb begin
    clip_result = result_minmax;
    if (operator_i == ALU_CLIPU) begin
      if (operand_a_i[31] || is_equal_clip) begin
        clip_result = '0;
      end else begin
        clip_result = result_minmax;
      end
    end else begin
      //CLIP
      if (adder_result_expanded[36] || is_equal_clip) begin
        clip_result = operand_b_neg;
      end else begin
        clip_result = result_minmax;
      end
    end

  end

  //////////////////////////////////////////////////
  //  ____  _   _ _   _ _____ _____ _     _____   //
  // / ___|| | | | | | |  ___|  ___| |   | ____|  //
  // \___ \| |_| | | | | |_  | |_  | |   |  _|    //
  //  ___) |  _  | |_| |  _| |  _| | |___| |___   //
  // |____/|_| |_|\___/|_|   |_|   |_____|_____|  //
  //                                              //
  //////////////////////////////////////////////////

  logic [3:0][1:0] shuffle_byte_sel;  // select byte in register: 31:24, 23:16, 15:8, 7:0
  logic [3:0]      shuffle_reg_sel;  // select register: rD/rS2 or rS1
  logic [1:0]      shuffle_reg1_sel;  // select register rD or rS2 for next stage
  logic [1:0]      shuffle_reg0_sel;
  logic [3:0]      shuffle_through;

  logic [31:0] shuffle_r1, shuffle_r0;
  logic [31:0] shuffle_r1_in, shuffle_r0_in;
  logic [31:0] shuffle_result;
  logic [31:0] pack_result;


  always_comb begin
    shuffle_reg_sel  = '0;
    shuffle_reg1_sel = 2'b01;
    shuffle_reg0_sel = 2'b10;
    shuffle_through  = '1;

    unique case (operator_i)
      ALU_EXT, ALU_EXTS: begin
        if (operator_i == ALU_EXTS) shuffle_reg1_sel = 2'b11;

        if (vector_mode_i == VEC_MODE8) begin
          shuffle_reg_sel[3:1] = 3'b111;
          shuffle_reg_sel[0]   = 1'b0;
        end else begin
          shuffle_reg_sel[3:2] = 2'b11;
          shuffle_reg_sel[1:0] = 2'b00;
        end
      end

      ALU_PCKLO: begin
        shuffle_reg1_sel = 2'b00;

        if (vector_mode_i == VEC_MODE8) begin
          shuffle_through = 4'b0011;
          shuffle_reg_sel = 4'b0001;
        end else begin
          shuffle_reg_sel = 4'b0011;
        end
      end

      ALU_PCKHI: begin
        shuffle_reg1_sel = 2'b00;

        if (vector_mode_i == VEC_MODE8) begin
          shuffle_through = 4'b1100;
          shuffle_reg_sel = 4'b0100;
        end else begin
          shuffle_reg_sel = 4'b0011;
        end
      end

      ALU_SHUF2: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_reg_sel[3] = ~operand_b_i[26];
            shuffle_reg_sel[2] = ~operand_b_i[18];
            shuffle_reg_sel[1] = ~operand_b_i[10];
            shuffle_reg_sel[0] = ~operand_b_i[2];
          end

          VEC_MODE16: begin
            shuffle_reg_sel[3] = ~operand_b_i[17];
            shuffle_reg_sel[2] = ~operand_b_i[17];
            shuffle_reg_sel[1] = ~operand_b_i[1];
            shuffle_reg_sel[0] = ~operand_b_i[1];
          end
          default: ;
        endcase
      end

      ALU_INS: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_reg0_sel = 2'b00;
            unique case (imm_vec_ext_i)
              2'b00: begin
                shuffle_reg_sel[3:0] = 4'b1110;
              end
              2'b01: begin
                shuffle_reg_sel[3:0] = 4'b1101;
              end
              2'b10: begin
                shuffle_reg_sel[3:0] = 4'b1011;
              end
              2'b11: begin
                shuffle_reg_sel[3:0] = 4'b0111;
              end
            endcase
          end
          VEC_MODE16: begin
            shuffle_reg0_sel   = 2'b01;
            shuffle_reg_sel[3] = ~imm_vec_ext_i[0];
            shuffle_reg_sel[2] = ~imm_vec_ext_i[0];
            shuffle_reg_sel[1] = imm_vec_ext_i[0];
            shuffle_reg_sel[0] = imm_vec_ext_i[0];
          end
          default: ;
        endcase
      end

      default: ;
    endcase
  end

  always_comb begin
    shuffle_byte_sel = '0;

    // byte selector
    unique case (operator_i)
      ALU_EXTS, ALU_EXT: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_byte_sel[3] = imm_vec_ext_i[1:0];
            shuffle_byte_sel[2] = imm_vec_ext_i[1:0];
            shuffle_byte_sel[1] = imm_vec_ext_i[1:0];
            shuffle_byte_sel[0] = imm_vec_ext_i[1:0];
          end

          VEC_MODE16: begin
            shuffle_byte_sel[3] = {imm_vec_ext_i[0], 1'b1};
            shuffle_byte_sel[2] = {imm_vec_ext_i[0], 1'b1};
            shuffle_byte_sel[1] = {imm_vec_ext_i[0], 1'b1};
            shuffle_byte_sel[0] = {imm_vec_ext_i[0], 1'b0};
          end

          default: ;
        endcase
      end

      ALU_PCKLO: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_byte_sel[3] = 2'b00;
            shuffle_byte_sel[2] = 2'b00;
            shuffle_byte_sel[1] = 2'b00;
            shuffle_byte_sel[0] = 2'b00;
          end

          VEC_MODE16: begin
            shuffle_byte_sel[3] = 2'b01;
            shuffle_byte_sel[2] = 2'b00;
            shuffle_byte_sel[1] = 2'b01;
            shuffle_byte_sel[0] = 2'b00;
          end

          default: ;
        endcase
      end

      ALU_PCKHI: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_byte_sel[3] = 2'b00;
            shuffle_byte_sel[2] = 2'b00;
            shuffle_byte_sel[1] = 2'b00;
            shuffle_byte_sel[0] = 2'b00;
          end

          VEC_MODE16: begin
            shuffle_byte_sel[3] = 2'b11;
            shuffle_byte_sel[2] = 2'b10;
            shuffle_byte_sel[1] = 2'b11;
            shuffle_byte_sel[0] = 2'b10;
          end

          default: ;
        endcase
      end

      ALU_SHUF2, ALU_SHUF: begin
        unique case (vector_mode_i)
          VEC_MODE8: begin
            shuffle_byte_sel[3] = operand_b_i[25:24];
            shuffle_byte_sel[2] = operand_b_i[17:16];
            shuffle_byte_sel[1] = operand_b_i[9:8];
            shuffle_byte_sel[0] = operand_b_i[1:0];
          end

          VEC_MODE16: begin
            shuffle_byte_sel[3] = {operand_b_i[16], 1'b1};
            shuffle_byte_sel[2] = {operand_b_i[16], 1'b0};
            shuffle_byte_sel[1] = {operand_b_i[0], 1'b1};
            shuffle_byte_sel[0] = {operand_b_i[0], 1'b0};
          end
          default: ;
        endcase
      end

      ALU_INS: begin
        shuffle_byte_sel[3] = 2'b11;
        shuffle_byte_sel[2] = 2'b10;
        shuffle_byte_sel[1] = 2'b01;
        shuffle_byte_sel[0] = 2'b00;
      end

      default: ;
    endcase
  end

  assign shuffle_r0_in = shuffle_reg0_sel[1] ?
                          operand_a_i :
                          (shuffle_reg0_sel[0] ? {2{operand_a_i[15:0]}} : {4{operand_a_i[7:0]}});

  assign shuffle_r1_in = shuffle_reg1_sel[1] ? {
    {8{operand_a_i[31]}}, {8{operand_a_i[23]}}, {8{operand_a_i[15]}}, {8{operand_a_i[7]}}
  } : (shuffle_reg1_sel[0] ? operand_c_i : operand_b_i);

  assign shuffle_r0[31:24] = shuffle_byte_sel[3][1] ?
                              (shuffle_byte_sel[3][0] ? shuffle_r0_in[31:24] : shuffle_r0_in[23:16]) :
                              (shuffle_byte_sel[3][0] ? shuffle_r0_in[15: 8] : shuffle_r0_in[ 7: 0]);
  assign shuffle_r0[23:16] = shuffle_byte_sel[2][1] ?
                              (shuffle_byte_sel[2][0] ? shuffle_r0_in[31:24] : shuffle_r0_in[23:16]) :
                              (shuffle_byte_sel[2][0] ? shuffle_r0_in[15: 8] : shuffle_r0_in[ 7: 0]);
  assign shuffle_r0[15: 8] = shuffle_byte_sel[1][1] ?
                              (shuffle_byte_sel[1][0] ? shuffle_r0_in[31:24] : shuffle_r0_in[23:16]) :
                              (shuffle_byte_sel[1][0] ? shuffle_r0_in[15: 8] : shuffle_r0_in[ 7: 0]);
  assign shuffle_r0[ 7: 0] = shuffle_byte_sel[0][1] ?
                              (shuffle_byte_sel[0][0] ? shuffle_r0_in[31:24] : shuffle_r0_in[23:16]) :
                              (shuffle_byte_sel[0][0] ? shuffle_r0_in[15: 8] : shuffle_r0_in[ 7: 0]);

  assign shuffle_r1[31:24] = shuffle_byte_sel[3][1] ?
                              (shuffle_byte_sel[3][0] ? shuffle_r1_in[31:24] : shuffle_r1_in[23:16]) :
                              (shuffle_byte_sel[3][0] ? shuffle_r1_in[15: 8] : shuffle_r1_in[ 7: 0]);
  assign shuffle_r1[23:16] = shuffle_byte_sel[2][1] ?
                              (shuffle_byte_sel[2][0] ? shuffle_r1_in[31:24] : shuffle_r1_in[23:16]) :
                              (shuffle_byte_sel[2][0] ? shuffle_r1_in[15: 8] : shuffle_r1_in[ 7: 0]);
  assign shuffle_r1[15: 8] = shuffle_byte_sel[1][1] ?
                              (shuffle_byte_sel[1][0] ? shuffle_r1_in[31:24] : shuffle_r1_in[23:16]) :
                              (shuffle_byte_sel[1][0] ? shuffle_r1_in[15: 8] : shuffle_r1_in[ 7: 0]);
  assign shuffle_r1[ 7: 0] = shuffle_byte_sel[0][1] ?
                              (shuffle_byte_sel[0][0] ? shuffle_r1_in[31:24] : shuffle_r1_in[23:16]) :
                              (shuffle_byte_sel[0][0] ? shuffle_r1_in[15: 8] : shuffle_r1_in[ 7: 0]);

  assign shuffle_result[31:24] = shuffle_reg_sel[3] ? shuffle_r1[31:24] : shuffle_r0[31:24];
  assign shuffle_result[23:16] = shuffle_reg_sel[2] ? shuffle_r1[23:16] : shuffle_r0[23:16];
  assign shuffle_result[15:8] = shuffle_reg_sel[1] ? shuffle_r1[15:8] : shuffle_r0[15:8];
  assign shuffle_result[7:0] = shuffle_reg_sel[0] ? shuffle_r1[7:0] : shuffle_r0[7:0];

  assign pack_result[31:24] = shuffle_through[3] ? shuffle_result[31:24] : operand_c_i[31:24];
  assign pack_result[23:16] = shuffle_through[2] ? shuffle_result[23:16] : operand_c_i[23:16];
  assign pack_result[15:8] = shuffle_through[1] ? shuffle_result[15:8] : operand_c_i[15:8];
  assign pack_result[7:0] = shuffle_through[0] ? shuffle_result[7:0] : operand_c_i[7:0];


  /////////////////////////////////////////////////////////////////////
  //   ____  _ _      ____                  _      ___               //
  //  | __ )(_) |_   / ___|___  _   _ _ __ | |_   / _ \ _ __  ___    //
  //  |  _ \| | __| | |   / _ \| | | | '_ \| __| | | | | '_ \/ __|   //
  //  | |_) | | |_  | |__| (_) | |_| | | | | |_  | |_| | |_) \__ \_  //
  //  |____/|_|\__|  \____\___/ \__,_|_| |_|\__|  \___/| .__/|___(_) //
  //                                                   |_|           //
  /////////////////////////////////////////////////////////////////////

  logic [31:0] ff_input;  // either op_a_i or its bit reversed version
  logic [ 5:0] cnt_result;  // population count
  logic [ 5:0] clb_result;  // count leading bits
  logic [ 4:0] ff1_result;  // holds the index of the first '1'
  logic        ff_no_one;  // if no ones are found
  logic [ 4:0] fl1_result;  // holds the index of the last '1'
  logic [ 5:0] bitop_result;  // result of all bitop operations muxed together

  cv32e40p_popcnt popcnt_i (
      .in_i    (operand_a_i),
      .result_o(cnt_result)
  );

  always_comb begin
    ff_input = '0;

    case (operator_i)
      ALU_FF1: ff_input = operand_a_i;

      ALU_DIVU, ALU_REMU, ALU_FL1: ff_input = operand_a_rev;

      ALU_DIV, ALU_REM, ALU_CLB: begin
        if (operand_a_i[31]) ff_input = operand_a_neg_rev;
        else ff_input = operand_a_rev;
      end
    endcase
  end

  cv32e40p_ff_one ff_one_i (
      .in_i       (ff_input),
      .first_one_o(ff1_result),
      .no_ones_o  (ff_no_one)
  );

  // special case if ff1_res is 0 (no 1 found), then we keep the 0
  // this is done in the result mux
  assign fl1_result = 5'd31 - ff1_result;
  assign clb_result = ff1_result - 5'd1;

  always_comb begin
    bitop_result = '0;
    case (operator_i)
      ALU_FF1: bitop_result = ff_no_one ? 6'd32 : {1'b0, ff1_result};
      ALU_FL1: bitop_result = ff_no_one ? 6'd32 : {1'b0, fl1_result};
      ALU_CNT: bitop_result = cnt_result;
      ALU_CLB: begin
        if (ff_no_one) begin
          if (operand_a_i[31]) bitop_result = 6'd31;
          else bitop_result = '0;
        end else begin
          bitop_result = clb_result;
        end
      end
      default: ;
    endcase
  end


  ////////////////////////////////////////////////
  //  ____  _ _     __  __             _        //
  // | __ )(_) |_  |  \/  | __ _ _ __ (_)_ __   //
  // |  _ \| | __| | |\/| |/ _` | '_ \| | '_ \  //
  // | |_) | | |_  | |  | | (_| | | | | | |_) | //
  // |____/|_|\__| |_|  |_|\__,_|_| |_|_| .__/  //
  //                                    |_|     //
  ////////////////////////////////////////////////

  logic extract_is_signed;
  logic extract_sign;
  logic [31:0] bmask_first, bmask_inv;
  logic [31:0] bextins_and;
  logic [31:0] bextins_result, bclr_result, bset_result;


  // construct bit mask for insert/extract/bclr/bset
  // bmask looks like this 00..0011..1100..00
  assign bmask_first       = {32'hFFFFFFFE} << bmask_a_i;
  assign bmask             = (~bmask_first) << bmask_b_i;
  assign bmask_inv         = ~bmask;

  assign bextins_and       = (operator_i == ALU_BINS) ? operand_c_i : {32{extract_sign}};

  assign extract_is_signed = (operator_i == ALU_BEXT);
  assign extract_sign      = extract_is_signed & shift_result[bmask_a_i];

  assign bextins_result    = (bmask & shift_result) | (bextins_and & bmask_inv);

  assign bclr_result       = operand_a_i & bmask_inv;
  assign bset_result       = operand_a_i | bmask;

  /////////////////////////////////////////////////////////////////////////////////
  //  ____ _____ _______     _____  ________      ________ _____   _____ ______  //
  // |  _ \_   _|__   __|   |  __ \|  ____\ \    / /  ____|  __ \ / ____|  ____| //
  // | |_) || |    | |______| |__) | |__   \ \  / /| |__  | |__) | (___ | |__    //
  // |  _ < | |    | |______|  _  /|  __|   \ \/ / |  __| |  _  / \___ \|  __|   //
  // | |_) || |_   | |      | | \ \| |____   \  /  | |____| | \ \ ____) | |____  //
  // |____/_____|  |_|      |_|  \_\______|   \/   |______|_|  \_\_____/|______| //
  //                                                                             //
  /////////////////////////////////////////////////////////////////////////////////

  logic [31:0] radix_2_rev;
  logic [31:0] radix_4_rev;
  logic [31:0] radix_8_rev;
  logic [31:0] reverse_result;
  logic [ 1:0] radix_mux_sel;

  assign radix_mux_sel = bmask_a_i[1:0];

  generate
    // radix-2 bit reverse
    for (j = 0; j < 32; j++) begin : gen_radix_2_rev
      assign radix_2_rev[j] = shift_result[31-j];
    end
    // radix-4 bit reverse
    for (j = 0; j < 16; j++) begin : gen_radix_4_rev
      assign radix_4_rev[2*j+1:2*j] = shift_result[31-j*2:31-j*2-1];
    end
    // radix-8 bit reverse
    for (j = 0; j < 10; j++) begin : gen_radix_8_rev
      assign radix_8_rev[3*j+2:3*j] = shift_result[31-j*3:31-j*3-2];
    end
    assign radix_8_rev[31:30] = 2'b0;
  endgenerate

  always_comb begin
    reverse_result = '0;

    unique case (radix_mux_sel)
      2'b00: reverse_result = radix_2_rev;
      2'b01: reverse_result = radix_4_rev;
      2'b10: reverse_result = radix_8_rev;

      default: reverse_result = radix_2_rev;
    endcase
  end

  ////////////////////////////////////////////////////
  //  ____ _____     __     __  ____  _____ __  __  //
  // |  _ \_ _\ \   / /    / / |  _ \| ____|  \/  | //
  // | | | | | \ \ / /    / /  | |_) |  _| | |\/| | //
  // | |_| | |  \ V /    / /   |  _ <| |___| |  | | //
  // |____/___|  \_/    /_/    |_| \_\_____|_|  |_| //
  //                                                //
  ////////////////////////////////////////////////////

  logic [31:0] result_div;
  logic        div_ready;
  logic        div_signed;
  logic        div_op_a_signed;
  logic [ 5:0] div_shift_int;

  assign div_signed = operator_i[0];

  assign div_op_a_signed = operand_a_i[31] & div_signed;

  assign div_shift_int = ff_no_one ? 6'd31 : clb_result;
  assign div_shift = div_shift_int + (div_op_a_signed ? 6'd0 : 6'd1);

  assign div_valid = enable_i & ((operator_i == ALU_DIV) || (operator_i == ALU_DIVU) ||
                     (operator_i == ALU_REM) || (operator_i == ALU_REMU));

  // inputs A and B are swapped
  cv32e40p_alu_div alu_div_i (
      .Clk_CI (clk),
      .Rst_RBI(rst_n),

      // input IF
      .OpA_DI      (operand_b_i),
      .OpB_DI      (shift_left_result),
      .OpBShift_DI (div_shift),
      .OpBIsZero_SI((cnt_result == 0)),

      .OpBSign_SI(div_op_a_signed),
      .OpCode_SI (operator_i[1:0]),

      .Res_DO(result_div),

      // Hand-Shake
      .InVld_SI (div_valid),
      .OutRdy_SI(ex_ready_i),
      .OutVld_SO(div_ready)
  );
  /////////////
  //  _____  //
  // |  __ \ //
  // | |__)  //
  // |  ___/ //
  // | |     //
  // |_|     //
  //         //
  /////////////
  parameter XLEN = 32                                                                                              ;
  logic cmp_32;
  // parameter MU31   = 32'h80000000;
  // parameter MU31_1 = 32'h7fffffff;
  logic signed [31:0]mul31 = 32'h80000000;
  logic signed [31:0]mul31_1 = 32'h7fffffff;
  // parameter           MU7     = 8'h80;
  // parameter           MU7_1   = 8'h7f;
  // parameter           MU8_1   = 8'hff;
  logic signed [7:0]  mul7   = 8'h80;
  logic signed [7:0]  mul7_1 = 8'h7f;
  logic signed [7:0]  mul8_1 = 8'hff;
  logic signed [15:0] mul15   = 16'h8000;
  logic signed [15:0] mul15_1 = 16'h7fff;
  logic signed [15:0] mul16_1 = 16'hffff;

  wire    signed                             [3:0][8  :0]   kadd8_o                                                    ;//
  wire                                       [3:0][8  :0]   ksub8_o                                                    ;//
  wire                                       [3:0][8  :0]   ukadd8_o                                                   ;//
  wire                                       [3:0][8  :0]   uksub8_o                                                   ;//

  logic                                      [3:0][8:0]   uradd8_t1                                                  ;//
  logic                                      [3:0][7  :0]   uradd8_o                                                   ;//

  logic                                      [3:0][8:0]   ursub8_t1                                                  ;//
  logic                                      [3:0][7  :0]   ursub8_o                                                   ;//

  logic   signed                             [3:0][8:0]   radd8_t1                                                   ;//
  logic                                      [3:0][7  :0]   radd8_o                                                    ;//

  logic                                      [3:0][8:0]   rsub8_t1                                                   ;//
  logic                                      [3:0][7  :0]   rsub8_o                                                    ;//

  wire                                       [1:0][16  :0]   kadd16_o                                                   ;//
  wire                                       [1:0][16  :0]   ksub16_o                                                   ;//
  wire                                       [1:0][16  :0]   ukadd16_o                                                  ;//
  wire                                       [1:0][16  :0]   uksub16_o                                                  ;//

  logic                                      [1:0][16  :0]   uradd16_t1                                                 ;//
  logic                                      [1:0][15  :0]   uradd16_o                                                  ;//

  logic                                      [1:0][16  :0]   ursub16_t1                                                 ;//
  logic                                      [1:0][15  :0]   ursub16_o                                                  ;//

  logic                                      [1:0][16  :0]   radd16_t1                                                  ;//
  logic                                      [1:0][15  :0]   radd16_o                                                   ;//

  logic                                      [1:0][16  :0]   rsub16_t1                                                  ;//
  logic                                      [1:0][15  :0]   rsub16_o                                                   ;//

  wire                                       [1:0][15  :0]      sra16_o                                                   ;//
  wire                                       [1:0][15  :0]      sra16kl_o                                                 ;//
  wire                                       [1:0][15  :0]      sra16klu_o                                                ;//
  wire                                       [1:0][15  :0]      sra16u_o                                                  ;//

  wire                                       [1:0][16  :0] sra16_t                                                   ;//
  wire                                       [1:0][16  :0] sra16u_t                                                  ;//
  wire                                       [1:0][16  :0] sra16kl_t                                                 ;//
  wire                                       [1:0][16  :0] sra16klu_t                                                ;//

  wire                                       [3 :0]      sa_sra16    = operand_b_i[3:0];//
  wire                                       [4 :0]      opb_sra16kl = -(operand_b_i[4:0])                         ;//
  wire                                       [4 :0]      sa_sra16kl  = ((opb_sra16kl) == 'd16 ? 'd15:(opb_sra16kl));//
  wire                                       [3     :0] imm4u_srai16    = alu_imm_i[3:0]                           ;//
  wire            imm4u_sll_en    = alu_imm_i[4]                                                                   ;//
  wire                                       [1:0][15  :0]                srl16_o                                     ;//
  wire                                       [1:0][15  :0]                srl16u_o                                    ;//
  wire                                       [1:0][16  :0]  srl16u_t1                                   ;//
  wire                                       [1:0][16  :0]  srl16u_t2                                   ;//
  wire                                       [1:0][15  :0]                sll16_o                                     ;//

  wire       [1:0][31  :0]           ksll16t15_o                               ;//
  wire       [1:0][31  :0]           ksll16t16_o                               ;//
  wire       [1:0][16  :0]           ksll16_o                                  ;//

  wire       [XLEN-1             :0]           cras16_o                                  ;//
  wire       [XLEN-1             :0]           rcras16_o                                 ;//
  wire signed[XLEN-1 + (2):0]            rcras16t                                  ;//
  wire       [XLEN-1            :0]            urcras16_o                                ;//
  wire       [XLEN-1 + (2):0]            urcras16t                                 ;//
  wire       [XLEN-1  + 2:0            ]            kcras16_o  ;//
  wire       [1:0         ]                    kcras16_ov ;//
  wire       [XLEN-1:0            ]            ukcras16_o ;//
  // wire       [XLEN-1 + (2):0]            ukcras16t  ;
  wire       [3:0                 ]            ukcras16_ov;//
  wire       [XLEN-1:0            ]            crsa16_o   ;//
  wire       [XLEN-1:0            ]            rcrsa16_o  ;//
  wire signed[XLEN-1 + (2):0]            rcrsa16t   ;//
  wire       [XLEN-1:0            ]            urcrsa16_o ;//
  wire       [XLEN-1 + (2):0]            urcrsa16t  ;//
  wire       [XLEN-1:0            ]            kcrsa16_o  ;//
  wire       [2-1:0         ]            kcrsa16_ov ;//
  wire       [XLEN-1:0            ]            ukcrsa16_o ;//
  wire       [2-1:0         ]            ukcrsa16_ov;//
  wire       [XLEN-1:0            ]            stas16_o   ;//
  wire       [XLEN-1:0            ]            rstas16_o  ;//
  wire signed[XLEN-1 + (2):0]            rstas16t   ;//
  wire       [XLEN-1:0            ]            urstas16_o ;//
  wire       [XLEN-1 + (2):0]            urstas16t  ;//
  wire       [XLEN-1:0            ]            kstas16_o  ;//
  wire       [2-1:0         ]            kstas16_ov ;//
  wire       [XLEN-1:0            ]            ukstas16_o ;//
  wire       [2-1:0         ]            ukstas16_ov;//
  wire       [XLEN-1:0            ]            stsa16_o   ;//
  wire       [XLEN-1:0            ]            rstsa16_o  ;//
  wire signed[XLEN-1 + (2):0]            rstsa16t   ;//
  wire       [XLEN-1:0            ]            urstsa16_o ;//
  wire       [XLEN-1 + (2):0]            urstsa16t  ;//
  wire       [XLEN-1:0            ]            kstsa16_o  ;//
  wire       [2-1:0         ]            kstsa16_ov ;//
  wire       [XLEN-1:0            ]            ukstsa16_o ;//
  wire       [2-1:0         ]            ukstsa16_ov;//
  wire       [1:0][15:0]            cmpeq16_o  ;//
  wire       [1:0][15:0]            scmplt16_o ;//
  wire       [1:0][15:0]            ucmplt16_o ;//
  wire       [1:0][15:0]            scmple16_o ;//
  wire       [1:0][15:0]            ucmple16_o ;//
  wire [1:0][15:0]   sclip16_o;//
  wire [1:0][15:0]   uclip16_o;//
  wire [1:0][15:0] smin16_o;//
  wire [1:0][15:0] umin16_o;//

  wire [1:0][15:0] smax16_o;//
  wire [1:0][15:0] umax16_o;//

  wire [1:0][16:0] kabs16_o;//

  wire [1:0][31:0] smul16_result;//

  wire [1:0][31:0] umul16_result;//
  wire [1:0][31:0] umulx16_result;//

  wire [1:0][15:0] khm16_result;//
  wire [1:0][15:0] khmx16_result;//
  wire [1:0][15:0] cnt_clrs16_o;//
  wire [1:0][15:0] cnt_clz16_o;//
  wire signed [XLEN*2-1:0] kmmact1_result;//
  wire signed [XLEN*2-1:0] kmmact2_result;//

  wire signed [XLEN*2-1:0] kmmsbt1_result;//
  wire signed [XLEN*2-1:0] kmmsbt2_result;//

  wire signed [XLEN*2-1:0] kmmacut1_result;//
  wire signed [XLEN*2-1:0] kmmacut2_result;//
  wire signed [XLEN*2-1:0] kmmacut3_result;//

  wire signed [XLEN*2-1:0] kmmsbut1_result;//
  wire signed [XLEN*2-1:0] kmmsbut2_result;//
  wire signed [XLEN*2-1:0] kmmsbut3_result;//
  wire signed [XLEN*2-1:0] kwmmulut1_result;//

  wire [XLEN-1:0]          kmmac_result;//
  wire [XLEN-1:0]          kwmmul_result;//
  wire                     kwmmul_result_ov;//

  wire [XLEN-1:0]          kmmsbu_result;//
  wire                     kmmsbu_result_ov;//

  wire [XLEN-1:0]          kwmmulu_result;//
  wire [XLEN-1:0]          kmmsb_result;//

  // wire                     kmmsb_result_ov;
  // wire                     kmmac_result_ov;
  wire [XLEN-1:0]          kmmacu_result;//
  // wire                     kmmacu_result_ov;
  wire [XLEN*2-1:0] smmwbt1_result;//
  wire [XLEN-1:0] smmwb_result;//

  wire [XLEN*2-1:0] smmwbut1_result;//
  wire [XLEN-1:0] smmwbu_result;//

  wire [XLEN*2-1:0] smmwtt1_result;//
  wire [XLEN-1:0] smmwt_result;

  wire [XLEN*2-1:0] smmwtut1_result;//
  wire [XLEN-1:0] smmwtu_result;

  wire [XLEN*2-1:0] kmmawbt1_result;//
  wire [XLEN*2-1:0] kmmawbt2_result;//
  wire [XLEN-1:0]   kmmawb_result;//
  // wire              kmmawb_result_ov;

  wire [XLEN*2-1:0] kmmawbut1_result;//
  wire [XLEN*2-1:0] kmmawbut2_result;//
  wire [XLEN-1:0]   kmmawbu_result;//
  wire              kmmawbu_result_ov;//
//
  wire [XLEN-1:0]   kmmwb2_result;//
  wire              kmmwb2_result_ov;//
//
  wire [XLEN*2-1:0] kmmwb2ut1_result;//
  wire [XLEN-1:0]   kmmwb2u_result;//
  // wire              kmmwb2u_result_ov;

  wire [XLEN  :0]   kmmwt2_result;//

  wire [XLEN*2-1:0] kmmwt2ut1_result;//
  wire [XLEN  :0]   kmmwt2u_result;//

  wire [XLEN*2-1:0] kmmawtt1_result;//
  wire [XLEN*2-1:0] kmmawtt2_result;//
  wire [XLEN-1:0]   kmmawt_result;//
  // wire kmmawt_result_ov;

  wire [XLEN*2-1:0] kmmawtut1_result;//
  wire [XLEN*2-1:0] kmmawtut2_result;//
  wire [XLEN-1:0]   kmmawtu_result;//
  // wire kmmawtu_result_ov;

  wire [XLEN*2-1:0] kmmawb2t1_result;//
  wire [XLEN*2-1:0] kmmawb2t2_result;//
  wire [XLEN-1:0]   kmmawb2_result;//
  wire kmmawb2_result_ov;//

  wire [XLEN*2-1:0] kmmawb2ut1_result;//
  wire [XLEN*2-1:0] kmmawb2ut2_result;//
  wire [XLEN*2-1:0] kmmawb2ut3_result;//
  wire [XLEN-1:0]   kmmawb2u_result;//

  wire kmmawb2u_result_ov;//

  wire [XLEN*2-1:0] kmmawt2t1_result;//
  wire [XLEN*2-1:0] kmmawt2t2_result;//
  wire [XLEN-1:0]   kmmawt2_result;//
  wire [XLEN>>5-1:0]   kmmawt2_result_ov;//
  wire [XLEN*2-1:0] kmmawt2ut1_result;//
  wire [XLEN*2-1:0] kmmawt2ut2_result;//
  wire [XLEN*2-1:0] kmmawt2ut3_result;//
  wire [XLEN-1:0]   kmmawt2u_result;//
  wire            kmmawt2u_result_ov;//
  wire [XLEN-1:0] smbb16_result;//
  wire [XLEN-1:0] smbt16_result;//
  wire [XLEN-1:0] smtb16_result;//
  wire [XLEN-1:0] smtt16_result;//
  wire [XLEN-1:0] kmda_result;//
  wire            kmda_result_ov;//
  wire [XLEN-1:0] kmxda_result;//
  wire [XLEN-1:0] smds_result;//
  wire [XLEN-1:0] smdrs_result;//
  wire [XLEN-1:0] smxds_result;//

  wire [XLEN*2-1:0] kmadst1_result;//
  wire [XLEN*2-1:0] kmadrst1_result;//
  wire [XLEN*2-1:0] kmaxdst1_result;//
  wire [XLEN-1:0] kmads_result;//
  wire kmads_result_ov;//
  wire [XLEN-1:0] kmadrs_result;//
  wire kmadrs_result_ov;//
  wire [XLEN-1:0] kmaxds_result;//
  wire kmaxds_result_ov;//

  wire [XLEN*2-1:0] kmabbt1_result;//
  wire [XLEN*2-1:0] kmabtt1_result;//
  wire [XLEN*2-1:0] kmattt1_result;//
  wire [XLEN*2-1:0] kmada1_result;//
  wire [XLEN*2-1:0] kmaxda1_result;//

  wire [XLEN*2-1:0] kmsdat1_result;//
  wire [XLEN*2-1:0] kmsxdat1_result;//

  wire [XLEN-1:0]   kmabb_result;//
  wire kmabb_result_ov;//
  wire [XLEN-1:0]   kmabt_result;//
  wire [XLEN>>5-1:0]       kmabt_result_ov;//
  wire [XLEN-1:0]   kmatt_result;//
  wire kmatt_result_ov;//
  wire [XLEN-1:0]   kmada_result;//
  wire kmada_result_ov;//
  wire [XLEN-1:0]   kmaxda_result;//
  wire kmaxda_result_ov;//
  
  wire [XLEN-1:0]   kmsda_result;//
  wire kmsda_result_ov;//
  wire [XLEN-1:0]   kmsxda_result;//
  wire kmsxda_result_ov;//

  wire [XLEN*2-1:0]        smmult_result; //
  wire [XLEN*2-1:0]        smmulut_result;//
  wire [XLEN-1:0]          smmul_result; //
  wire [XLEN-1:0]          smmulu_result;//

  wire [XLEN-1:0]   smalt1_result;//
  wire [XLEN*2-1:0]   smal_result;//

  wire [XLEN-1:0]   smaqa_result;//

  wire [XLEN-1:0]   smaqasut1_result;//
  wire [XLEN*4-1:0] smaqasut2_result;//
  wire [XLEN-1:0]   smaqasu_result;//

  wire [XLEN-1:0]   umaqa_result; //

  wire [3:0][8  :0] pbsad_t11;//
  wire [3:0][7  :0] pbsad_t12;//

  wire [3:0][7  :0] pbsadt1_o;//
  wire [3:0][7  :0] pbsada_o;//

  wire[3:0][7  :0] sra8_o                                               ;//
  wire[3:0][7  :0] sra8kl_o                                             ;//
  wire[3:0][7  :0] sra8klu_o                                            ;//

  wire[3:0][8  :0] sra8_t                                               ;//
  wire[3:0][8  :0] sra8u_t                                              ;//

  wire[3:0][8  :0] sra8kl_t                                             ;//
  wire[3:0][8  :0] sra8klu_t                                            ;//

  wire[3:0][7  :0] sra8u_o                                              ;//
  wire[2:0                   ] imm4u_srai8   = alu_imm_i[2:0]                       ;//
  wire[2     :0              ] sa_sra8 = operand_b_i[2:0];//

  wire[3     :0              ] opb_sra8kl = -(operand_b_i[3:0])                     ;//
  wire[3     :0              ] sa_sra8kl  = ((opb_sra8kl) == 'd8 ? 'd7:(opb_sra8kl));//

  wire[1:0                   ] imm3u_sll8_en = alu_imm_i[4:3]                          ;//

  wire[3:0][7  :0] srl8_o                                 ;//
  wire[3:0][7  :0] srl8u_o                                ;//
  wire[3:0][8  :0] srl8u_t1                                             ;//
  wire[3:0][8  :0] srl8u_t2                                             ;//

  wire[3:0][7  :0] sll8_o                                               ;//
  wire[3:0][15  :0] ksll8t7_o                                            ;//
  wire[3:0][15  :0] ksll8t8_o                                            ;//
  wire[3:0][8  :0] ksll8_o                                              ;//

  wire [3:0][7  :0] cmpeq8_o;//
  wire [3:0][7  :0] scmplt8_o;//
  wire [3:0][7  :0] ucmplt8_o;//
  wire [3:0][7  :0] scmple8_o;//
  wire [3:0][7  :0] ucmple8_o;//
  wire [3:0][7  :0] sclip8_o;//
  wire [4-1:0] sclip8_ov;//
  wire [3:0][7  :0] uclip8_o;//
  wire [4-1:0] uclip8_ov;//
  wire [3:0][7  :0] smin8_o;//
  wire [3:0][7  :0] umin8_o;//
  wire [3:0][7  :0] smax8_o;//
  wire [3:0][7  :0] umax8_o;//
  wire [3:0][8  :0] kabs8_o;//
  wire [3:0][15  :0] smul8_result;//
  wire [3:0][15  :0] smulx8_result;//

  wire [3:0][15  :0] umul8_result;//
  wire [3:0][15  :0] umulx8_result;//

  wire [3:0][7  :0] khm8_result;//
  wire [3:0]      khm8_result_ov;//
  wire [3:0][7  :0] khmx8_result;//

  wire [3:0][7  :0] cnt_clrs8_o;//
  wire [3:0][7  :0] cnt_clz8_o;//

  wire [1:0][15  :0] sunpkd810_o;//
  wire [1:0][15  :0] sunpkd820_o;//
  wire [1:0][15  :0] sunpkd830_o;//
  wire [1:0][15  :0] sunpkd831_o;//
  wire [1:0][15  :0] sunpkd832_o;//

  wire [1:0][15  :0] zunpkd810_o;//
  wire [1:0][15  :0] zunpkd820_o;//
  wire [1:0][15  :0] zunpkd830_o;//
  wire [1:0][15  :0] zunpkd831_o;//
  wire [1:0][15  :0] zunpkd832_o;//

  wire [XLEN-1:0] sclip32_o;//
  wire [XLEN-1:0] uclip32_o;//

  wire [XLEN-1:0] cnt_clrs32_o;//
  wire [XLEN-1:0] cnt_clz32_o;//

    wire                                       [31:0                   ] khmbb_t2                                                                                     ;//
    wire                                       [31:0                   ] khmbt_t2                                                                                     ;//
    wire                                       [31:0                   ] khmtt_t2                                                                                     ;//

    wire                                       [32:0                   ] kaddw_t1                                                                                     ;//
    wire                                       [32:0                   ] kaddw_t2                                                                                     ;//
    wire                                       [32:0                   ] kaddw_t3                                                                                     ;//
    wire                                       [32:0                   ] kaddw_t4                                                                                     ;//

    wire                                       [32:0                   ] ksubw_t1                                                                                     ;//
    wire                                       [32:0                   ] ksubw_t2                                                                                     ;//
    wire                                       [32:0                   ] ksubw_t3                                                                                     ;//
    wire                                       [32:0                   ] ksubw_t4                                                                                     ;//

    wire                                       [32:0                   ] ukaddw_t1                                                                                    ;//
    wire                                       [32:0                   ] ukaddw_t2                                                                                    ;//
    // wire                                       [32:0                   ] ukaddw_t3                                                                                    ;//

    wire                                       [32:0                   ] uksubw_t1                                                                                    ;//
    wire                                       [32:0                   ] uksubw_t2                                                                                    ;//
    // wire                                       [32:0                   ] uksubw_t3                                                                                    ;

    // wire                                       [31:0                   ] kdmbb_t1                                                                                     ;//
    // wire                                       [32:0                   ] kdmbb_t2                                                                                     ;//
    // wire                                       [31:0                   ] kdmbb_t3                                                                                     ;//

    wire                                       [31:0                   ] kdmabb_t1                                                                                    ;//
    wire                                       [32:0                   ] kdmabb_t2                                                                                    ;//
    wire                                       [32:0                   ] kdmabb_t3                                                                                    ;//

    wire                                       [31:0                   ] kdmabt_t1                                                                                    ;//
    wire                                       [32:0                   ] kdmabt_t2                                                                                    ;//
    wire                                       [32:0                   ] kdmabt_t3                                                                                    ;//

    wire                                       [31:0                   ] kdmbt_t1                                                                                     ;//
    wire                                       [32:0                   ] kdmbt_t2                                                                                     ;//
    wire                                       [31:0                   ] kdmbt_t3                                                                                     ;//


    wire                                       [31:0                   ] kdmatt_t1                                                                                    ;//
    // wire                                       [31:0                   ] kdmatt_t11                                                                                   ;

    wire                                       [32:0                   ] kdmatt_t2                                                                                    ;//
    wire                                       [32:0                   ] kdmatt_t3                                                                                    ;//

    // wire                                       [31:0                   ] kdmtt_t1                                                                                     ;
    // wire                                       [32:0                   ] kdmtt_t2                                                                                     ;
    // wire                                       [31:0                   ] kdmtt_t3                                                                                     ;

    wire                                       [XLEN - 1:0      ] kaddh_o                                                                                      ;//
    wire                                       [XLEN - 1:0      ] ukaddh_o                                                                                     ;//

    wire                                       [XLEN - 1:0      ] ksubh_o                                                                                      ;//
    

    wire                                       [XLEN - 1:0      ] uksubh_o                                                                                     ;//
    

    wire                                       [XLEN    :0      ] khmbb_o                                                                                      ;//
    wire                                       [XLEN    :0      ] khmbt_o                                                                                      ;//
    wire                                       [XLEN    :0      ] khmtt_o                                                                                      ;//

    wire                                       [XLEN - 1:0      ] kaddw_o                                                                                      ;//

    wire                                       [XLEN - 1:0      ] ukaddw_o                                                                                     ;//

    wire                                       [XLEN - 1:0      ] ksubw_o                                                                                      ;//

    wire                                       [XLEN - 1:0      ] uksubw_o                                                                                     ;//

    wire                                       [XLEN - 1:0      ] kabsw_o                                                                                      ;//
    wire                                       [XLEN - 1:0      ] raddw_o                                                                                      ;//
    wire                                       [XLEN - 1:0      ] uraddw_o                                                                                     ;//
    wire                                       [XLEN - 1:0      ] rsubw_o                                                                                      ;//
    wire                                       [XLEN - 1:0      ] ursubw_o                                                                                     ;//
    wire                                       [XLEN - 1:0      ] msubr32_o                                                                                    ;//

    wire                                       [XLEN - 1:0      ] kslraw_o                                                                                     ;//
    // wire                     kslraw_ov                                                                                                                                ;
    wire                                       [XLEN - 1:0      ] kslrawu_o                                                                                    ;//

    wire                                       [XLEN - 1:0      ] kslliw_o                                                                                     ;//
    wire                                       [XLEN-1:0        ] ave_o                                                                                        ;//
    // wire                                       [XLEN:0          ] ave_t1                                                                                       ;
    wire                                       [XLEN:0          ] ave_t2                                                                                       ;//
    reg                                        [63:0                   ] rev                                                                                          ;//

    // wire                                       [63:0                   ] rev63                                                                                        ;
    wire                                       [XLEN-1:0        ] bitrev_o                                                                                     ;//
    wire                                       [5 :0                   ] lsb_loc      ;//
    assign lsb_loc         = operand_b_i[5:0] >   32 ? operand_b_i[5:0] - 32 : operand_b_i[5:0];//
    wire                                       [31:0                   ] wext_t1                                                                                      ;//
    wire                                       [XLEN-1:0        ] wext_o                                                                                       ;//
    // wire                                       [4:0                    ] sa_add32                          ;
    // assign sa_add32        = operand_b_i[4:0]                                                      ;
    // wire                                       [5:0                    ] sa_kslra32_t0                     ;
    // assign sa_kslra32_t0   = (-(operand_b_i[5:0]))                                                 ;
    // wire                                       [5:0                    ] sa_kslra32_t1                     ;
    // assign sa_kslra32_t1   = sa_kslra32_t0 == 'd32 ? 'd31 : sa_kslra32_t0                                  ;


    // wire [XLEN*2:0 ] radd64_t1;///
    wire [XLEN*2-1:0 ] radd64_o;//

    wire [XLEN*2:0 ] rsub64_t1;//
    wire [XLEN*2:0 ] rsub64_o;//

    wire [XLEN*2:0 ] uradd64_t1;//
    wire [XLEN*2-1:0 ]    uradd64_o;//

    wire [XLEN*2:0 ] ursub64_t1;//
    wire [XLEN*2-1:0 ]    ursub64_o;//

    // wire [XLEN*2:0 ] kadd64_t1;//
    wire [XLEN*2:0 ]    kadd64_o;//

    // wire [XLEN*2:0 ] ksub64_t1;
    wire [XLEN*2:0 ]    ksub64_o;//

    wire [XLEN*2:0 ]    ukadd64_o;//
    wire [XLEN*2:0 ]    uksub64_o;//

    // wire                  ukadd64_ov;
    // wire                  uksub64_ov;

    wire [XLEN*2+1:0 ] kmar64_t3;//
    wire [XLEN*2:0 ]      kmar64_o;//
//
    wire [XLEN*2+1:0 ] ukmar64_t3;//
    wire [XLEN*2:0 ]      ukmar64_o;//

    wire [XLEN*2-1:0 ]      umar64_o;//

    wire [XLEN*2  :0 ] ukmsr64_t3;//
    wire [XLEN*2:0 ]        ukmsr64_o;//

    wire [XLEN*2:0 ] kmsr64_t3;//
    wire [XLEN*2:0 ]      kmsr64_o;//

    wire [XLEN*2-1:0]      smalbb64_o                                                                                                                                ;//
    wire [XLEN*2-1:0]      smalbt64_o                                                                                                                                ;//
    wire [XLEN*2-1:0]      smaltt64_o                                                                                                                                ;//

    wire [XLEN*2-1:0]      smalds64_o                                                                                                                                ;//
    wire [XLEN*2-1:0]      smaldrs64_o                                                                                                                               ;//
    wire [XLEN*2-1:0]      smalxds64_o                                                                                                                               ;//
    wire [XLEN*2-1:0]      smslda64_o                                                                                                                                ;//
    wire [XLEN*2-1:0]      smslxda64_o                                                                                                                               ;//


    wire [XLEN*2-1:0]      smalda64_o                                                                                                                                ;//
    wire [XLEN*2-1:0]      smalxda64_o                                                                                                                               ;//
    wire [XLEN*2-1:0]       smar64_o                                                                                                                                    ;//
    wire [XLEN*2-1:0]       smsr64_o                                                                                                                                    ;//
    wire [XLEN*2-1:0]       umsr64_o                                                                                                                                    ;//

  generate
    genvar gadd8;
    for (gadd8 = 0; gadd8 < 4; gadd8 = gadd8 + 1) begin
                                                                                                                                                                                     
      assign uradd8_t1  [gadd8            ]=        (operand_a_i_2d [gadd8] + operand_b_i_2d[gadd8]) ;                                                                                                                                                                        
      assign uradd8_o   [gadd8            ]=         uradd8_t1   [gadd8][8:1];                                                                                                                                                                                                                                                                                                                                                                                          
      assign ursub8_t1  [gadd8            ]=        (operand_a_i_2d [gadd8] - operand_b_i_2d[gadd8]) ;                                                                                                                                                                        
      assign ursub8_o   [gadd8            ]=         ursub8_t1   [gadd8][8:1] ;                                                                                                                                                                                                                                                                                                                                                                                        
      assign ukadd8_o   [gadd8            ]=         uradd8_t1   [gadd8] > (mul8_1) ? ({8'hff,1'b1}) : {uradd8_t1[gadd8][7:0],1'b0};                                                                                                                                                                                                                                                                                                    
      assign uksub8_o   [gadd8            ]= $signed(ursub8_t1   [gadd8]) < 0      ?  {8'h00,1'b1} : {ursub8_t1[gadd8][7:0],1'b0};
                                                                                                                                                                       

      assign radd8_t1[gadd8] = $signed(operand_a_i_2d [gadd8]) + $signed(operand_b_i_2d[gadd8]);
      assign radd8_o [gadd8] = $signed(radd8_t1     [gadd8]) >> 1;
      assign rsub8_t1[gadd8] = $signed(operand_a_i_2d [gadd8]) - $signed(operand_b_i_2d[gadd8]);
      assign rsub8_o [gadd8] = $signed(rsub8_t1    [gadd8]) >> 1;

      assign kadd8_o [gadd8] =  $signed(radd8_t1     [gadd8]) >  (mul7_1)  ? ({8'd127,1'b1}) :
                                            $signed(radd8_t1    [gadd8]) <  mul7   ? ({-8'd128,1'b1} ):
                                            {(radd8_t1    [gadd8][7:0]),1'b0};

      assign ksub8_o [gadd8]  = $signed(rsub8_t1    [gadd8]) >  mul7_1  ? ({8'd127,1'b1}) :
                                            $signed(rsub8_t1    [gadd8]) <  (mul7 ) ? ({-8'd128,1'b1}):
                                            {(rsub8_t1    [gadd8][7:0]),1'b0} ;

      assign sra8_o   [gadd8 ]    = $signed(operand_a_i_2d[gadd8]) >>> sa_sra8;
      assign sra8kl_o [gadd8 ]    = $signed(operand_a_i_2d[gadd8]) >>> sa_sra8kl;
      assign sra8u_t  [gadd8 ]    = $signed(operand_a_i_2d[gadd8]) >>> (sa_sra8-1);
      assign sra8klu_t[gadd8 ]    = $signed(operand_a_i_2d[gadd8]) >>> (sa_sra8kl-1);
      assign sra8_t   [gadd8 ]    = $signed(sra8u_t    [gadd8] + 'd1);
      assign sra8kl_t [gadd8 ]    = $signed(sra8klu_t  [gadd8] + 'd1);
      assign sra8u_o  [gadd8 ]    = (sa_sra8 > 0) ? sra8_t  [gadd8][8:1]:sra8_o[gadd8] ;
      assign sra8klu_o[gadd8 ]    =                 sra8kl_t[gadd8][8:1];

      assign srl8_o   [gadd8]   =  operand_a_i_2d[gadd8] >> sa_sra8;
      assign srl8u_t1 [gadd8]   = (operand_a_i_2d[gadd8] >> (sa_sra8-1));
      assign srl8u_t2 [gadd8]   = srl8u_t1    [gadd8] + 'd1;
      assign srl8u_o  [gadd8]   = sa_sra8 != 0 ? srl8u_t2[gadd8][8:1]:operand_a_i_2d[gadd8];

      assign sll8_o   [gadd8]     = operand_a_i_2d[gadd8] << sa_sra8;
      assign ksll8t7_o[gadd8 ] = operand_a_i_2d[gadd8];
      assign ksll8t8_o[gadd8 ] = ksll8t7_o[gadd8 ] << sa_sra8;
      assign ksll8_o  [gadd8                 ]   = (sa_sra8 != 'd0) ?       ((sa_sra8 == 'd1 )  ? (($signed(ksll8t8_o [gadd8 ][8 :0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][8 :0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][8 :0],1'b0} )))
                                                                          : ((sa_sra8 == 'd2 )  ? (($signed(ksll8t8_o [gadd8 ][9 :0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][9 :0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][9 :0],1'b0} )))
                                                                          : ((sa_sra8 == 'd3 )  ? (($signed(ksll8t8_o [gadd8 ][10:0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][10:0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][10:0],1'b0} )))
                                                                          : ((sa_sra8 == 'd4 )  ? (($signed(ksll8t8_o [gadd8 ][11:0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][11:0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][11:0],1'b0} )))
                                                                          : ((sa_sra8 == 'd5 )  ? (($signed(ksll8t8_o [gadd8 ][12:0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][12:0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][12:0],1'b0} )))
                                                                          : ((sa_sra8 == 'd6 )  ? (($signed(ksll8t8_o [gadd8 ][13:0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][13:0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][13:0],1'b0} )))
                                                                          : ((sa_sra8 == 'd7 )  ? (($signed(ksll8t8_o [gadd8 ][14:0] )  > (mul7_1))?({8'h7f,1'b1}):($signed(ksll8t8_o [gadd8][14:0] )  < mul7 ?({8'h80,1'b1}):({ksll8t8_o [gadd8][14:0],1'b0} )))
                                                                          : ({operand_a_i_2d[gadd8] << sa_sra8,1'b0}))))))))//))))))))
                                                                          : ({operand_a_i_2d[gadd8],1'b0});

      assign cmpeq8_o   [gadd8]        =          (operand_a_i_2d[gadd8]  ==         operand_b_i_2d[gadd8])  ? 'hff:'h00;
      assign scmplt8_o  [gadd8]        = $signed  (operand_a_i_2d[gadd8]) <  $signed(operand_b_i_2d[gadd8])  ? 'hff:'h00;
      assign ucmplt8_o  [gadd8]        =         ((operand_a_i_2d[gadd8]) <         (operand_b_i_2d[gadd8])) ? 'hff:'h00;
      assign scmple8_o  [gadd8]        = ($signed( operand_a_i_2d[gadd8]) <= $signed(operand_b_i_2d[gadd8])) ? 'hff:'h00;
      assign ucmple8_o  [gadd8]        =         ((operand_a_i_2d[gadd8]) <=        (operand_b_i_2d[gadd8])) ? 'hff:'h00;

      assign sclip8_o   [gadd8]        = $signed(operand_a_i_2d[gadd8]) > (2**imm4u_srai8 -1)   ? (2**imm4u_srai8 -1):
                                                     $signed(operand_a_i_2d[gadd8]) < (-(2**imm4u_srai8) )  ? (-(2**imm4u_srai8)):
                                                             operand_a_i_2d[gadd8]; 
      assign sclip8_ov  [gadd8]                    = $signed(operand_a_i_2d[gadd8]) > (2**imm4u_srai8 -1)   ? 'd1:
                                                     $signed(operand_a_i_2d[gadd8]) < (-(2**imm4u_srai8) )  ? 'd1:
                                                     'd0;
      assign uclip8_o   [gadd8            ]        = $signed(operand_a_i_2d[gadd8]) > (2**imm4u_srai8 -1)   ? (2**imm4u_srai8 -1):
                                                     $signed(operand_a_i_2d[gadd8]) < (0)  ? ('d0               ):
                                                             operand_a_i_2d[gadd8]; 
      assign uclip8_ov  [gadd8]                    = $signed(operand_a_i_2d[gadd8]) > (2**imm4u_srai8 -1)  ? 'd1:
                                                     $signed(operand_a_i_2d[gadd8]) < (0)                  ? 'd1: 
                                                     'd0;
      assign smin8_o[gadd8              ]          =           ($signed(operand_a_i_2d[gadd8]) < $signed(operand_b_i_2d[gadd8]))
                                                              ?($signed(operand_a_i_2d[gadd8])):($signed(operand_b_i_2d[gadd8]));
      assign umin8_o[gadd8              ]          = (       (operand_a_i_2d[gadd8]) <        (operand_b_i_2d[gadd8]))
                                                            ?(       (operand_a_i_2d[gadd8])):(       (operand_b_i_2d[gadd8]));
      assign smax8_o[gadd8              ]          =         ($signed(operand_a_i_2d[gadd8]) > $signed(operand_b_i_2d[gadd8]))
                                                            ?($signed(operand_a_i_2d[gadd8])):($signed(operand_b_i_2d[gadd8]));
      assign umax8_o[gadd8              ]          = (       (operand_a_i_2d[gadd8]) >        (operand_b_i_2d[gadd8]))
                                                            ?(       (operand_a_i_2d[gadd8])):(       (operand_b_i_2d[gadd8]));
      assign kabs8_o[gadd8              ]          =        $signed(operand_a_i_2d[gadd8]) == 'h80 ? ({8'h7f,1'b1}):
                                                             ($signed(operand_a_i[gadd8*8 + 7])           == 'h1    ? ({-(operand_a_i_2d[gadd8]),1'b1}):
                                                             ({(operand_a_i_2d[gadd8]),1'b0}));
      // assign kabs8_ov[gadd8]                       = $signed(operand_a_i_2d[gadd8]) == 'h80 ? 'd1: 'd0;

      assign smul8_result   [gadd8] = $signed(operand_a_i_2d[gadd8]) * $signed(operand_b_i_2d[gadd8]);
      assign umul8_result   [gadd8] =        (operand_a_i_2d[gadd8]) *        (operand_b_i_2d[gadd8]);
      assign khm8_result    [gadd8]    = (operand_a_i_2d[gadd8] != 'h80 || operand_b_i_2d[gadd8] != 'h80) ? 
                                                           ($signed(smul8_result[gadd8]) >> 'd7) : ('h7f);
      assign khm8_result_ov [gadd8              ]    = (operand_a_i_2d[gadd8] != 'h80 || operand_b_i_2d[gadd8] != 'h80) ? 
                                                           (1'b0) : (1'b1);
      assign cnt_clrs8_o[gadd8]                      =  ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][06]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][05]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][04]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][03]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][02]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][01]) ? 
                                                        ~(operand_a_i_2d[gadd8][7] ^ operand_a_i_2d[gadd8][00]) ? 'd7
                                                        :'d6 : 'd5 : 'd4 : 'd3 : 'd2 : 'd1 : 'd0;
      assign cnt_clz8_o[gadd8]                       =  ~(operand_a_i_2d[gadd8][07] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][06] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][05] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][04] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][03] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][02] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][01] | 1'b0) ? 
                                                        ~(operand_a_i_2d[gadd8][0]  | 1'b0) ? 'd8
                                                        : 'd7 : 'd6 : 'd5 : 'd4 : 'd3 : 'd2 : 'd1 : 'd0; 
      assign pbsad_t11[gadd8]            = {1'b0,operand_a_i_2d[gadd8]} - {1'b0,operand_b_i_2d[gadd8]};
      assign pbsad_t12[gadd8]            = (pbsad_t11[gadd8][8] == 1'b1) ? (-(pbsad_t11[gadd8])):
                                                         pbsad_t11[gadd8];                                                          
    end
  endgenerate

  generate
    genvar gadd16;
    for (gadd16 = 0; gadd16 < 2; gadd16 = gadd16 + 1) begin

      assign uradd16_t1[gadd16]   = operand_a16_i_2d[gadd16] + operand_b16_i_2d[gadd16];
      assign uradd16_o [gadd16]   = uradd16_t1[gadd16][16:1];// >> 1;
      assign ukadd16_o [gadd16]                   = uradd16_t1[gadd16] > (mul16_1) ? {16'hffff,1'b1} :
                                                    {uradd16_t1[gadd16],1'b0};
      assign radd16_t1[gadd16]    = $signed(operand_a16_i_2d[gadd16]) + $signed(operand_b16_i_2d[gadd16]);
      assign radd16_o [gadd16]    = $signed(radd16_t1[gadd16]) >> 1;
      assign kadd16_o [gadd16]                    = $signed(radd16_t1[gadd16]) > (mul15_1) ? ({16'h7fff,1'b1}) :  //MU15_1) ? (MU15_1) :
                                                    $signed(radd16_t1[gadd16]) < (mul15) ? ({16'h8000,1'b1}):  //-$signed(mul15))  ? (-MU15)  :
                                                    {(radd16_t1[gadd16]),1'b0} ;

      assign ursub16_t1[gadd16]   = operand_a16_i_2d[gadd16] - operand_b16_i_2d[gadd16];
      assign ursub16_o [gadd16]   = ursub16_t1[gadd16][16:1];// >> 1;

      assign uksub16_o [gadd16]   = $signed(ursub16_t1[gadd16]) < 0 ? {32'h0,1'b1}  : 
                                                    {(ursub16_t1[gadd16]),1'b0} ;

      assign rsub16_t1[gadd16]   = $signed(operand_a16_i_2d[gadd16]) - $signed(operand_b16_i_2d[gadd16]);
      assign rsub16_o [gadd16]   = $signed(rsub16_t1[gadd16]) >>> 1;
      assign ksub16_o [gadd16                ]   = $signed(rsub16_t1[gadd16]) > (mul15_1) ? ({16'h7fff,1'b1}) :
                                                   $signed(rsub16_t1[gadd16]) < (mul15   ) ? ({16'h8000,1'b1} ) :
                                                   {(rsub16_t1[gadd16]),1'b0};

      assign sra16_o   [gadd16]  = $signed(operand_a16_i_2d[gadd16]) >>> sa_sra16;
      assign sra16kl_o [gadd16]  = $signed(operand_a16_i_2d[gadd16]) >>> sa_sra16kl;
      assign sra16u_t  [gadd16]  = $signed(operand_a16_i_2d[gadd16]) >>> (sa_sra16-1);
      assign sra16klu_t[gadd16]  = $signed(operand_a16_i_2d[gadd16]) >>> (sa_sra16kl-1);
      assign sra16_t   [gadd16]  = $signed(sra16u_t   [gadd16] + 'd1);
      assign sra16kl_t [gadd16]  = $signed(sra16klu_t [gadd16] + 'd1);

      assign sra16u_o  [gadd16]  = (sa_sra16 != 0) ? sra16_t  [gadd16][16:1]:sra16_o[gadd16][15:0] ;
      assign sra16klu_o[gadd16]  =                   sra16kl_t[gadd16][16:1];

      assign srl16_o  [gadd16] =  operand_a16_i_2d[gadd16] >> sa_sra16;
      assign srl16u_t1[gadd16] = (operand_a16_i_2d[gadd16] >> (sa_sra16-1));
      assign srl16u_t2[gadd16] = srl16u_t1   [gadd16] + 'd1;
      assign srl16u_o [gadd16] = (sa_sra16 != 0 ) ? srl16u_t2 [gadd16][16:1]        : operand_a16_i_2d[gadd16];

      assign sll16_o [gadd16]    = operand_a16_i_2d[gadd16] << sa_sra16;
      assign ksll16t15_o [gadd16]= operand_a16_i_2d[gadd16];
      assign ksll16t16_o [gadd16]= ksll16t15_o [gadd16] << sa_sra16;
      assign ksll16_o  [gadd16                     ] = (sa_sra16 != 'd0) ?  ((sa_sra16 == 'd1 )  ? (($signed(ksll16t16_o [gadd16][16:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][16:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][16:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd2 )  ? (($signed(ksll16t16_o [gadd16][17:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][17:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][17:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd3 )  ? (($signed(ksll16t16_o [gadd16][18:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][18:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][18:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd4 )  ? (($signed(ksll16t16_o [gadd16][19:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][19:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][19:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd5 )  ? (($signed(ksll16t16_o [gadd16][20:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][20:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][20:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd6 )  ? (($signed(ksll16t16_o [gadd16][21:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][21:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][21:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd7 )  ? (($signed(ksll16t16_o [gadd16][22:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][22:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][22:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd8 )  ? (($signed(ksll16t16_o [gadd16][23:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][23:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][23:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd9 )  ? (($signed(ksll16t16_o [gadd16][24:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][24:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][24:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd10 ) ? (($signed(ksll16t16_o [gadd16][25:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][25:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][25:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd11 ) ? (($signed(ksll16t16_o [gadd16][26:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][26:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][26:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd12 ) ? (($signed(ksll16t16_o [gadd16][27:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][27:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][27:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd13 ) ? (($signed(ksll16t16_o [gadd16][28:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][28:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][28:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd14 ) ? (($signed(ksll16t16_o [gadd16][29:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][29:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][29:0]),1'b0})))
                                                                          : ((sa_sra16 == 'd15 ) ? (($signed(ksll16t16_o [gadd16][30:0])  > (mul15_1))?({16'h7fff,1'b1}):($signed(ksll16t16_o [gadd16][30:0] )  < (mul15) ?({16'h8000,1'b1}):({(ksll16t16_o [gadd16][30:0]),1'b0})))
                                                                          : ({operand_a16_i_2d[gadd16],1'b0}))))))))))))))))
                                                                          : ({operand_a16_i_2d[gadd16],1'b0});

      assign cmpeq16_o    [gadd16]      =          (operand_a16_i_2d[gadd16]  ==         operand_b16_i_2d[gadd16])  ? 'hffff:'h0000;
      assign scmplt16_o   [gadd16]      = $signed  (operand_a16_i_2d[gadd16]) <  $signed(operand_b16_i_2d[gadd16])  ? 'hffff:'h0000;
      assign ucmplt16_o   [gadd16]      =         ((operand_a16_i_2d[gadd16]) <         (operand_b16_i_2d[gadd16])) ? 'hffff:'h0000;
      assign scmple16_o   [gadd16]      = ($signed( operand_a16_i_2d[gadd16]) <= $signed(operand_b16_i_2d[gadd16])) ? 'hffff:'h0000;
      assign ucmple16_o   [gadd16]      =         ((operand_a16_i_2d[gadd16]) <=        (operand_b16_i_2d[gadd16])) ? 'hffff:'h0000;
      assign sclip16_o    [gadd16]      = $signed(operand_a16_i_2d[gadd16]) > (2**imm4u_srai16 -1) ? (2**imm4u_srai16 -1):
                                          $signed(operand_a16_i_2d[gadd16]) < (-(2**imm4u_srai16))   ? (-(2**imm4u_srai16)) :
                                                 (operand_a16_i_2d[gadd16]); 
      assign uclip16_o    [gadd16]      = $signed(operand_a16_i_2d[gadd16]) > (2**imm4u_srai16 -1) ? (2**imm4u_srai16 -1):
                                          $signed(operand_a16_i_2d[gadd16]) < (0)   ? ('d0 ):
                                                 (operand_a16_i_2d[gadd16]);

      assign smin16_o[gadd16]         = ($signed(operand_a16_i_2d[gadd16]) < $signed(operand_b16_i_2d[gadd16]))
                                                             ?($signed(operand_a16_i_2d[gadd16])):($signed(operand_b16_i_2d[gadd16]));
      assign umin16_o[gadd16]         = (       (operand_a16_i_2d[gadd16]) <        (operand_b16_i_2d[gadd16]))
                                                           ?(       (operand_a16_i_2d[gadd16])):(       (operand_b16_i_2d[gadd16]));
      assign smax16_o[gadd16]         = ($signed(operand_a16_i_2d[gadd16]) > $signed(operand_b16_i_2d[gadd16]))
                                                           ?($signed(operand_a16_i_2d[gadd16])):($signed(operand_b16_i_2d[gadd16]));
      assign umax16_o[gadd16]         = (       (operand_a16_i_2d[gadd16]) >        (operand_b16_i_2d[gadd16]))
                                                           ?(       (operand_a16_i_2d[gadd16])):(       (operand_b16_i_2d[gadd16]));
      assign kabs16_o[gadd16]         = $signed(operand_a16_i_2d[gadd16]) == 'h8000 ? ({16'h7fff,1'b1}):
                                        ($signed(operand_a16_i_2d[gadd16][15])           == 'h1    ? {(-(operand_a16_i_2d[gadd16])),1'b0}:
                                        ({(operand_a16_i_2d[gadd16]),1'b0}));

      assign smulx8_result[gadd16*2 ]    = $signed(operand_a_i_2d[gadd16*2])   * $signed(operand_b_i_2d[gadd16*2+1]);
      assign smulx8_result[gadd16*2 + 1] = $signed(operand_a_i_2d[gadd16*2+1]) * $signed(operand_b_i_2d[gadd16*2]);

      assign umulx8_result[gadd16*2]   =        (operand_a_i_2d[gadd16*2])   *        (operand_b_i_2d[gadd16*2+1]);
      assign umulx8_result[gadd16*2+1] =        (operand_a_i_2d[gadd16*2+1]) *        (operand_b_i_2d[gadd16*2]);

      assign khmx8_result[gadd16*2+1]       = (operand_a_i_2d[gadd16*2+1] != 'h80 || operand_b_i_2d[gadd16*2] != 'h80) ? 
                                                          (smulx8_result[gadd16*2+1] >> 'd7) : ('h7f);
      assign khmx8_result[gadd16*2]         = (operand_a_i_2d[gadd16*2] != 'h80 || operand_b_i_2d[gadd16*2+1] != 'h80) ?
                                                          (smulx8_result[gadd16*2] >> 'd7) : ('h7f);
      assign smul16_result[gadd16] = $signed(operand_a16_i_2d[gadd16]) * $signed(operand_b16_i_2d[gadd16]);
      assign umul16_result[gadd16] =        (operand_a16_i_2d[gadd16]) *        (operand_b16_i_2d[gadd16]);
      assign khm16_result [gadd16] =        (operand_a16_i_2d[gadd16] == 'h8000 && operand_b16_i_2d[gadd16] == 'h8000) ? ('h7fff)
                                                        :($signed(smul16_result[gadd16]) >> 'd15);
      assign cnt_clrs16_o[gadd16]  =  ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][14]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][13]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][12]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][11]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][10]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][09]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][08]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][07]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][06]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][05]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][04]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][03]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][02]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][01]) ? 
                                      ~(operand_a16_i_2d[gadd16][15] ^ operand_a16_i_2d[gadd16][0 ]) ? 'd15
                                      : 'd14 : 'd13 : 'd12 : 'd11 : 'd10 : 'd9 : 'd8 : 'd7 : 'd6 : 'd5 : 'd4 : 'd3 : 'd2 : 'd1 : 'd0;
      assign cnt_clz16_o[gadd16]   =  ~(operand_a16_i_2d[gadd16][15] | 1'b0) ?
                                      ~(operand_a16_i_2d[gadd16][14] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][13] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][12] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][11] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][10] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][09] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][08] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][07] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][06] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][05] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][04] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][03] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][02] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][01] | 1'b0) ? 
                                      ~(operand_a16_i_2d[gadd16][0 ] | 1'b0) ? 'd16
                                      : 'd15 : 'd14 : 'd13 : 'd12 : 'd11 : 'd10 : 'd9 : 'd8 : 'd7 : 'd6 : 'd5 : 'd4 : 'd3 : 'd2 : 'd1 : 'd0; 
      assign sunpkd810_o[gadd16] = operand_a_i_2d[gadd16]  [ 7 ]   ? {8'hff,operand_a_i_2d[gadd16]}     : {8'h00,operand_a_i_2d[gadd16]};
      assign sunpkd820_o[gadd16] = operand_a_i_2d[gadd16*2][ 7 ]   ? {8'hff,operand_a_i_2d[gadd16*2]}   : {8'h00,operand_a_i_2d[gadd16*2]};
      assign sunpkd830_o[gadd16] = operand_a_i_2d[gadd16*3]   [ 7 ]? {8'hff,operand_a_i_2d[gadd16*3]}   : {8'h00,operand_a_i_2d[gadd16*3]};
      assign sunpkd831_o[gadd16] = operand_a_i_2d[gadd16*2+1][7]   ? {8'hff,operand_a_i_2d[gadd16*2+1]} : {8'h00,operand_a_i_2d[gadd16*2+1]};
      assign sunpkd832_o[gadd16] = operand_a_i_2d[gadd16 + 2 ][7]     ? {8'hff,operand_a_i_2d[gadd16+2]}   : {8'h00,operand_a_i_2d[gadd16+2]};

      assign zunpkd810_o[gadd16] = {8'h00,operand_a_i_2d[gadd16]}    ;
      assign zunpkd820_o[gadd16] = {8'h00,operand_a_i_2d[gadd16*2]}  ;
      assign zunpkd830_o[gadd16] = {8'h00,operand_a_i_2d[gadd16*3]}  ;
      assign zunpkd831_o[gadd16] = {8'h00,operand_a_i_2d[gadd16*2+1]};
      assign zunpkd832_o[gadd16] = {8'h00,operand_a_i_2d[gadd16+2]}  ;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
      end
  endgenerate
      assign cras16_o    [ 31      -:16]        =         operand_a_i[ 31      -:16]  + operand_b_i[ 31 - 16 -:16]          ;
      assign cras16_o    [ 31 - 16 -:16]        =         operand_a_i[ 31 - 16 -:16]  - operand_b_i[ 31      -:16]          ;
      assign rcras16t    [ 33      -:17]        = $signed(operand_a_i[ 31      -:16]) + $signed(operand_b_i[ 15 -:16])      ;
      assign rcras16_o   [ 31      -:16]        = $signed(rcras16t   [ 33      -:17]) >> 1                                  ;
      assign rcras16t    [ 33 -17  -:17]        = $signed(operand_a_i[ 31 - 16 -:16]) - $signed(operand_b_i[ 31 -:16])      ;
      assign rcras16_o   [ 31 -16  -:16]        = $signed(rcras16t   [ 33 - 17 -:17]) >> 1                                  ;
      assign urcras16t   [ 33      -:17]        =        (operand_a_i[ 31      -:16]) + (operand_b_i[ 31 - 16 -:16])        ;
      assign urcras16_o  [ 31      -:16]        =        (urcras16t  [ 33      -:17]) >> 1                                  ;
      assign urcras16t   [ 33 -17  -:17]        =        (operand_a_i[ 31 - 16 -:16]) - (operand_b_i[ 31      -:16])        ;
      assign urcras16_o  [ 31 -16  -:16]        =        (urcras16t  [ 33 - 17 -:17]) >> 1                                  ;
      assign kcras16_o   [ 31      -:16]        = $signed(rcras16t   [ 33      -:17]) > (mul15_1) ?  16'd32767 :
                                                  $signed(rcras16t   [ 33      -:17]) < (mul15)   ?  -16'd32768 :
                                                  $signed(rcras16t   [ 33      -:17])                                       ;
      assign kcras16_ov  [0]                    = $signed(rcras16t   [ 33      -:17]) > (mul15_1) ?  'b1 :
                                                  $signed(rcras16t   [ 33      -:17]) < (mul15)   ?  'b1 :
                                                                     'b0                                                    ;
      assign kcras16_o   [ 31 -16  -:16]        = $signed(rcras16t   [ 33 -17  -:17]) > (mul15_1) ?  16'd32767 :
                                                  $signed(rcras16t   [ 33 -17  -:17]) < (mul15)   ?  -16'd32768 : 
                                                  $signed(rcras16t   [ 33 -17  -:17])                                       ;
      assign kcras16_ov  [1]                    = $signed(rcras16t   [ 33 -17  -:17]) > (mul15_1) ?  'b1 :
                                                  $signed(rcras16t   [ 33 -17  -:17]) < (mul15)   ?  'b1 : 
                                                                     'b0                                                    ;
      assign ukcras16_o  [ 31      -:16]        =        (urcras16t  [ 33      -:17]) > (mul16_1) ?  mul16_1 :
                                                         (urcras16t  [ 33      -:17])                                       ;
      assign ukcras16_ov [0]                    =        (urcras16t  [ 33      -:17]) > (mul16_1) ?  'd1 :
                                                                     'd0                                                    ;
       
      assign ukcras16_o  [ 31 -16  -:16]        = ($signed(urcras16t [ 33 -17 -:17]) < (0)) ? 'd0 :
                                                               (urcras16t         [ 33 -17 -:17])                           ;
      assign ukcras16_ov [1]                    = ($signed(urcras16t [ 33 -17 -:17]) < (0)) ?  'd1 :
                                                          'd0                                                               ;
      assign crsa16_o  [ 31      -:16]          =         operand_a_i [ 31      -:16]  - operand_b_i[ 31 - 16    -:16]      ;
      assign crsa16_o  [ 31 - 16 -:16]          =         operand_a_i [ 31 - 16 -:16]  + operand_b_i[ 31         -:16]      ;
      assign rcrsa16t  [ 33      -:17]          = $signed(operand_a_i [ 31      -:16]) - $signed(operand_b_i[ 15 -:16])     ;
      assign rcrsa16_o [ 31      -:16]          = $signed(rcrsa16t    [ 33      -:17]) >> 1                                 ;
      assign rcrsa16t  [ 33 -17  -:17]          = $signed(operand_a_i [ 31 - 16 -:16]) + $signed(operand_b_i[ 31 -:16])     ;
      assign rcrsa16_o [ 31 -16  -:16]          = $signed(rcrsa16t    [ 33 - 17 -:17]) >> 1                                 ;

      assign urcrsa16t [ 33      -:17]          =        (operand_a_i [ 31      -:16]) - (operand_b_i[ 31 - 16 -:16])       ;
      assign urcrsa16_o[ 31      -:16]          =        (urcrsa16t   [ 33      -:17]) >> 1                                 ;
      assign urcrsa16t [ 33 -17  -:17]          =        (operand_a_i [ 31 - 16 -:16]) + (operand_b_i[ 31 -:16])            ;
      assign urcrsa16_o[ 31 -16  -:16]          =        (urcrsa16t   [ 33 -17  -:17]) >> 1                                 ;

      assign kcrsa16_o  [ 31      -:16]         =  $signed(rcrsa16t[ 33      -:17]) > (mul15_1) ?  16'd32767 :
                                                   $signed(rcrsa16t[ 33      -:17]) < (mul15)   ?  -16'd32768 :
                                                   $signed(rcrsa16t[ 33      -:17])                            ;
      assign kcrsa16_ov [0]                     =  $signed(rcrsa16t[ 33      -:17]) > (mul15_1) ?  'd1 :
                                                   $signed(rcrsa16t[ 33      -:17]) < (mul15)   ?  'd1 :
                                                   'd0                                                              ;
      assign kcrsa16_o  [ 31 -16  -:16]         =  $signed(rcrsa16t[ 33 -17  -:17]) > (mul15_1) ?  16'd32767 :
                                                   $signed(rcrsa16t[ 33 -17  -:17]) <(mul15)   ?  -16'd32768 : 
                                                   $signed(rcrsa16t[ 33 -17  -:17])                            ;
      assign kcrsa16_ov [1]                     =  $signed(rcrsa16t[ 33 -17  -:17]) > (mul15_1) ?  'd1 :
                                                           $signed(rcrsa16t[ 33 -17  -:17]) <(mul15)   ?  'd1 :
                                                           'd0                                                              ;
      
      assign ukcrsa16_o [ 31      -:16]         = $signed(urcrsa16t [ 33      -:17])  < 0 ?  'd0 :
                                                                      (urcrsa16t [ 33      -:17])                           ;
      assign ukcrsa16_ov[0]                     = $signed(urcrsa16t [ 33      -:17]) < (0) ?  'd1 :
                                                          'd0                                                               ;
      assign ukcrsa16_o [ 31 -16  -:16]         =        (urcrsa16t [ 33 -17  -:17]) > (mul16_1) ? mul16_1 :
                                                                      (urcrsa16t [ 33 -17  -:17])                           ;
      assign ukcrsa16_ov[1]                     =        (urcrsa16t [ 33 -17  -:17]) > (mul16_1) ?  mul16_1 :
                                                                  'd0                                                       ;

      assign stas16_o   [ 31      -:16]         = operand_a_i[ 31   -:16] + operand_b_i[ 31      -:16]                      ;
      assign stas16_o   [ 31 - 16 -:16]         = operand_a_i[ 31 - 16 -:16] - operand_b_i[ 31 - 16 -:16]                   ;

      assign rstas16t   [ 33      -:17]         = $signed(operand_a_i [ 31      -:16]) + $signed(operand_b_i[ 31      -:16]);
      assign rstas16_o  [ 31      -:16]         = $signed(rstas16t    [ 33      -:17]) >> 1                                 ;
      assign rstas16t   [ 33 -17  -:17]         = $signed(operand_a_i [ 31 - 16 -:16]) - $signed(operand_b_i[ 31 - 16 -:16]);
      assign rstas16_o  [ 31 -16  -:16]         = $signed(rstas16t    [ 33 - 17 -:17]) >> 1                                 ;
      assign urstas16t  [ 33      -:17]         =        (operand_a_i [ 31      -:16]) +        (operand_b_i[ 31      -:16]);
      assign urstas16_o [ 31      -:16]         =        (urstas16t   [ 33      -:17]) >> 1                                 ;
      assign urstas16t  [ 33 -17  -:17]         =        (operand_a_i [ 31 - 16 -:16]) -        (operand_b_i[ 31 - 16 -:16]);
      assign urstas16_o [ 31 -16  -:16]         =        (urstas16t   [ 33 - 17 -:17]) >> 1                                 ;

      assign kstas16_o  [ 31      -:16]         = $signed(rstas16t    [ 33      -:17]) > (mul15_1) ?  16'd32767 :
                                                               $signed(rstas16t    [ 33      -:17]) < (mul15)   ?  -16'd32768 :
                                                               $signed(rstas16t    [ 33      -:17])                         ;
      assign kstas16_ov [0]                     = $signed(rstas16t    [ 33      -:17]) > (mul15_1) ?  'd1 :
                                                  $signed(rstas16t    [ 33      -:17]) < (mul15)   ?  'd1 :
                                                  'd0                                                                       ;
      assign kstas16_o  [ 31 -16  -:16]         = $signed(rstas16t    [ 33 -17 -:17]) > (mul15_1) ?  16'd32767 :
                                                  $signed(rstas16t    [ 33 -17 -:17]) <(mul15)   ?  -16'd32768 : 
                                                  $signed(rstas16t    [ 33 -17 -:17])                                       ;
      assign kstas16_ov [1]                     = $signed(rstas16t    [ 33 -17 -:17]) > (mul15_1) ?  'd1 :
                                                  $signed(rstas16t    [ 33 -17 -:17]) <(mul15)   ?  'd1 : 
                                                  'd0                                                                       ;

      assign ukstas16_o [ 31      -:16]         = (urstas16t          [ 33     -:17]) > (mul16_1) ?  mul16_1 :
                                                               (urstas16t          [ 33     -:17])                          ;
      assign ukstas16_ov[0]                     = (urstas16t          [ 33     -:17]) > (mul16_1) ?  'd1 :
                                                          'd0                                                               ;
      assign ukstas16_o [ 31 -16  -:16]         = ($signed(urstas16t  [ 33 -17 -:17]) < 0 ) ? 'd0 :
                                                                       (urstas16t  [ 33 -17 -:17])                          ;
      assign ukstas16_ov[1]                     = ($signed(urstas16t  [ 33 -17 -:17]) < 0 ) ?  'd1 :
                                                          'd0                                                               ;    
      assign stsa16_o   [ 31      -:16]         =          operand_a_i[ 31     -:16] - operand_b_i[ 31      -:16]           ;
      assign stsa16_o   [ 31 - 16 -:16]         =          operand_a_i[ 31 - 16-:16] + operand_b_i[ 31  -16 -:16]           ;

      assign rstsa16t   [ 33      -:17]        = $signed (operand_a_i[ 31      -:16]) - $signed(operand_b_i[ 31      -:16]) ;
      assign rstsa16_o  [ 31      -:16]        = $signed (rstsa16t   [ 33      -:17]) >> 1                                  ;
      assign rstsa16t   [ 33 -17  -:17]        = $signed (operand_a_i[ 31 - 16 -:16]) + $signed(operand_b_i[ 31 - 16 -:16]) ;
      assign rstsa16_o  [ 31 -16  -:16]        = $signed (rstsa16t   [ 33 - 17 -:17]) >> 1                                  ;
      assign urstsa16t  [ 33      -:17]        =         (operand_a_i[ 31      -:16]) - (operand_b_i[ 31      -:16])        ;
      assign urstsa16_o [ 31      -:16]        =         (urstsa16t  [ 33      -:17]) >> 1                                  ;
      assign urstsa16t  [ 33 -17  -:17]        =         (operand_a_i[ 31 - 16 -:16]) + (operand_b_i[ 31 - 16 -:16])        ;
      assign urstsa16_o [ 31 -16  -:16]        =         (urstsa16t  [ 33 - 17 -:17]) >> 1                                  ;  
      assign kstsa16_o  [ 31      -:16]        =  $signed(rstsa16t   [ 33      -:17]) > (mul15_1) ?  16'd32767 :
                                                  $signed(rstsa16t   [ 33      -:17]) < (mul15)   ?  -16'd32768 :
                                                  $signed(rstsa16t   [ 33      -:17])                                       ;
      assign kstsa16_ov [0]                    =  $signed(rstsa16t   [ 33      -:17]) > (mul15_1) ?  'd1 :
                                                  $signed(rstsa16t   [ 33      -:17]) < (mul15)   ?  'd1 :
                                                         'd0                                                                ;
      assign kstsa16_o  [ 31 -16  -:16]        = $signed(rstsa16t    [ 33 -17  -:17]) > (mul15_1) ?  16'd32767 :
                                                 $signed(rstsa16t    [ 33 -17  -:17]) <(mul15)   ?  -16'd32768 : 
                                                 $signed(rstsa16t    [ 33 -17  -:17])                                       ;
      assign kstsa16_ov [1]                    = $signed(rstsa16t    [ 33 -17  -:17]) > (mul15_1) ?  'd1 :
                                                 $signed(rstsa16t    [ 33 -17  -:17]) <(mul15)   ?  'd1 : 
                                                                'd0                                                         ;
      assign ukstsa16_o [ 31      -:16]        =        (urstsa16t   [ 33]) == (1) ?  'd0 :
                                                                     (urstsa16t   [ 33      -:17])                          ;
      assign ukstsa16_ov[0]                    =        (urstsa16t   [ 33      -:17]) > (mul16_1) ?  'd1 :
                                                                'd0                                                         ;
      assign ukstsa16_o [ 31 -16  -:16]        =        (urstsa16t   [ 33 -17  -:17]) > (mul16_1) ? mul16_1 :
                                                                     (urstsa16t   [ 33 -17  -:17])                          ;
      assign ukstsa16_ov[1]                    =        (urstsa16t   [ 33 -17  -:17]) > (mul16_1) ?  mul16_1 :
                                                                'd0                                                         ;

      assign smmult_result [63:0]              = $signed(operand_a_i[31:0]) * $signed(operand_b_i[31:0]);
      assign smmul_result  [31:0]              = smmult_result [63:32];
      assign smmulut_result[32:0]              = smmult_result [63:31] + 'b1;
      assign smmulu_result [31:0]              = smmulut_result[32:1]; 

      assign umulx16_result[ 0] =        (operand_a_i[31 -16 -:16]) *        (operand_b_i[31     -:16]);
      assign umulx16_result[ 1] =        (operand_a_i[31     -:16]) *        (operand_b_i[31 -16 -:16]);

      assign khmx16_result[1]        = (operand_a_i[15:0] == 'h8000 && operand_b_i[15:0] == 'h8000) ? ('h7fff)
                                                           :(smtb16_result >> 'd15);//:(smulx16_result[ 1] >> 'd15);
      assign khmx16_result[0]        = (operand_a_i[15:0] == 'h8000 && operand_b_i[15:0] == 'h8000) ? ('h7fff)
                                                           :(smbt16_result >> 'd15);//:(smulx16_result[0] >> 'd15);                                                                                 

      assign sclip32_o [31:0] = $signed(operand_a_i[31:0]) > (2**alu_imm_i -1) ? (2**alu_imm_i -1) :
                                $signed(operand_a_i[31:0]) < (-(2**alu_imm_i)) ? (-(2**alu_imm_i)) :
                                (operand_a_i[31:0]); 
      assign uclip32_o [31:0] = $signed(operand_a_i[31:0]) > (2**alu_imm_i -1) ? (2**alu_imm_i -1) :
                                $signed(operand_a_i[31:0]) < (0)   ? ('d0 ):
                                (operand_a_i[31:0]); 
      assign cnt_clrs32_o[31:0] = ~(operand_a_i[31] ^ operand_a_i[30]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[29]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[28]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[27]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[26]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[25]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[24]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[23]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[22]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[21]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[20]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[19]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[18]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[17]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[16]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[15]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[14]) ?
                                  ~(operand_a_i[31] ^ operand_a_i[13]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[12]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[11]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[10]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[09]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[08]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[07]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[06]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[05]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[04]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[03]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[02]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[01]) ? 
                                  ~(operand_a_i[31] ^ operand_a_i[00]) ? 'd31
                                  : 'd30 : 'd29 : 'd28 : 'd27 : 'd26 : 'd25 : 'd24 : 'd23 : 'd22 : 'd21 :'d20 : 'd19 : 'd18 : 'd17 : 'd16 : 'd15 : 'd14 : 'd13 : 'd12 : 'd11 : 'd10 : 'd9 : 'd8 : 'd7 : 'd6 : 'd5 : 'd4 : 'd3 : 'd2 : 'd1 : 'd0 ;
      assign cnt_clz32_o[31:0]  =  ~(operand_a_i[31] | 1'b0) ? 
                                   ~(operand_a_i[30] | 1'b0) ? 
                                   ~(operand_a_i[29] | 1'b0) ?
                                   ~(operand_a_i[28] | 1'b0) ?
                                   ~(operand_a_i[27] | 1'b0) ?
                                   ~(operand_a_i[26] | 1'b0) ?
                                   ~(operand_a_i[25] | 1'b0) ?
                                   ~(operand_a_i[24] | 1'b0) ?
                                   ~(operand_a_i[23] | 1'b0) ?
                                   ~(operand_a_i[22] | 1'b0) ?
                                   ~(operand_a_i[21] | 1'b0) ?
                                   ~(operand_a_i[20] | 1'b0) ?
                                   ~(operand_a_i[19] | 1'b0) ?
                                   ~(operand_a_i[18] | 1'b0) ?
                                   ~(operand_a_i[17] | 1'b0) ?
                                   ~(operand_a_i[16] | 1'b0) ?
                                   ~(operand_a_i[15] | 1'b0) ?
                                   ~(operand_a_i[14] | 1'b0) ?
                                   ~(operand_a_i[13] | 1'b0) ? 
                                   ~(operand_a_i[12] | 1'b0) ? 
                                   ~(operand_a_i[11] | 1'b0) ? 
                                   ~(operand_a_i[10] | 1'b0) ? 
                                   ~(operand_a_i[09] | 1'b0) ? 
                                   ~(operand_a_i[08] | 1'b0) ? 
                                   ~(operand_a_i[07] | 1'b0) ? 
                                   ~(operand_a_i[06] | 1'b0) ? 
                                   ~(operand_a_i[05] | 1'b0) ? 
                                   ~(operand_a_i[04] | 1'b0) ? 
                                   ~(operand_a_i[03] | 1'b0) ? 
                                   ~(operand_a_i[02] | 1'b0) ? 
                                   ~(operand_a_i[01] | 1'b0) ? 
                                   ~(operand_a_i[00] | 1'b0) ? 'd32
                                   :'d31  : 'd30 : 'd29 : 'd28 : 'd27 : 'd26 : 'd25 : 'd24 : 'd23 : 'd22 : 'd21 : 'd20 :'d19 : 'd18 : 'd17 : 'd16 : 'd15 : 'd14 : 'd13 : 'd12 : 'd11 : 'd10 : 'd9  : 'd8  : 'd7  : 'd6  : 'd5  : 'd4  : 'd3  : 'd2  : 'd1  : 'd0;                                
    
      // kmmac
    assign kmmact1_result [32:0]  = ({reg_kmmac_result[31],reg_kmmac_result[31:0]}) + {smmult_result[63],smmult_result[63:32]};//$signed(smmult_result[63:32]); 
    assign kmmact2_result [32:0]  = $signed(kmmact1_result[32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) : //$signed(mul31)_1 :
                                    $signed(kmmact1_result[32:0]) < (mul31)  ? (({32'h80000000,1'b1}))  : // (($signed(mul31))):
                                    {kmmact1_result[31:0],1'b0};

    assign kmmac_result  [31:0]   = kmmact2_result [32:1];
    // kmmacu
    assign kmmacut1_result[32:0]  = $signed(smmult_result[63:31] + 1);
    assign kmmacut2_result[32:0]  = $signed(reg_kmmac_result[31:0])  + $signed(kmmacut1_result[32:1]);
    assign kmmacut3_result[32:0]  = $signed(kmmacut2_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://MU31_1 :
                                    $signed(kmmacut2_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                            {kmmacut2_result,1'b0};

    assign kmmacu_result  [31:0]  = kmmacut3_result [32:1];
    // kmmsb
    assign kmmsbt1_result [32:0]  = $signed(reg_kmmac_result[31:0]) - $signed(smmult_result[63:32]);
    assign kmmsbt2_result [32:0]  = $signed(kmmsbt1_result[32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) : //MU31_1 :
                                    $signed(kmmsbt1_result[32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  : // ((MU31)):
                                            {kmmsbt1_result ,1'b0};

    assign kmmsb_result  [31:0]   = kmmsbt2_result [32:1];
    // kmmsbu
    assign kmmsbut1_result[32:0]  = $signed(smmult_result[63:31] + 1);
    assign kmmsbut2_result[32:0]  = $signed(reg_kmmac_result[31:0])  - $signed(kmmsbut1_result[32:1]);
    assign kmmsbut3_result[32:0]  = $signed(kmmsbut2_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://$signed(mul31)_1 :
                                    $signed(kmmsbut2_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                    {kmmsbut2_result,1'b0};

    assign kmmsbu_result  [31:0]  = kmmsbut3_result [32:1];
    
    assign cmp_32 = operand_a_i[31:0] != 32'h80000000 || operand_b_i[31:0] != 32'h80000000;
    // kwmmul
    assign kwmmul_result[31:0]    = cmp_32 ?
                                    smmult_result[62:31]:
                                    32'h7fffffff;
    assign kwmmul_result_ov       = cmp_32 ? 'd0:
                                            'd1;
    // kwmulu
    assign kwmmulut1_result[32:0]  = $signed(smmult_result[63:30] + 1);
    assign kwmmulu_result  [31:0]  = cmp_32 ?
                                     kwmmulut1_result[32:0+1] :
                                     32'h7fffffff;                                   

    // smmwb
    assign smmwbt1_result  [47:0]   = $signed(operand_a_i[31:0]) * $signed(operand_b_i[15:0]);
    assign smmwb_result    [31:0]   = smmwbt1_result[47:16];
    // smmwbu  
    assign smmwbut1_result [32:0]   = $signed(smmwbt1_result  [47:15] + 'd1);
    assign smmwbu_result   [31:0]   =         smmwbut1_result [32:1 ];
    // smmwt  
    assign smmwtt1_result  [47:0]   = $signed(operand_a_i[31:0]) * $signed(operand_b_i[31:16]);
    assign smmwt_result    [31:0]   = smmwtt1_result[47:16];
    // smmwtu  
    assign smmwtut1_result [32:0]   = $signed(smmwtt1_result  [47:15] + 'd1);
    assign smmwtu_result   [31:0]   =         smmwtut1_result [32:1 ];
    // kmmawb
    assign kmmawbt1_result [32:0]   = $signed(reg_kmmac_result[31:0]) + $signed(smmwbt1_result  [47:16]);

    assign kmmawbt2_result [32:0]   = $signed(kmmawbt1_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://(MU31_1) :
                                      $signed(kmmawbt1_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                              {kmmawbt1_result,1'b0};

    assign kmmawb_result   [31:0]     = kmmawbt2_result [32:1];
    // kmmawbu

    assign kmmawbut1_result [32:0]   =  $signed(reg_kmmac_result [31:0]) + $signed(smmwbut1_result[32:1]);
    assign kmmawbut2_result [32:0]   =  $signed(kmmawbut1_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://(MU31_1) :
                                        $signed(kmmawbut1_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                                {kmmawbut1_result,1'b0};

    assign kmmawbu_result   [31:0]   = kmmawbut2_result [32:1];
    // kmmawt
    assign kmmawtt1_result [32:0]    = $signed(reg_kmmac_result[31:0]) + $signed(smmwtt1_result  [47:16]);
    assign kmmawtt2_result [32:0]    = $signed(kmmawtt1_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://MU31_1 :
                                       $signed(kmmawtt1_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                               {kmmawtt1_result,1'b0};

    assign kmmawt_result   [31:0]    = kmmawtt2_result [32:1];
    // kmmawtu

    assign kmmawtut1_result [32:0]   =  $signed(reg_kmmac_result[31:0]) + $signed(smmwtut1_result[32:1]);
    assign kmmawtut2_result [32:0]   =  $signed(kmmawtut1_result [32:0]) > (mul31_1) ? ({32'h7fffffff,1'b1}) ://MU31_1 :
                                        $signed(kmmawtut1_result [32:0]) < ((mul31))  ? (({32'h80000000,1'b1}))  :// ((MU31)):
                                                {kmmawtut1_result,1'b0};
    assign kmmawtu_result   [31:0]   = kmmawtut2_result [32:1]; 
    // kmmwb2
    assign kmmwb2_result_ov          = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ?
                                               'd1:'d0;
    assign kmmwb2_result    [31:0]   = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ?
                                       32'h7fffffff:
                                       smmwbt1_result          [46:15] ;
    // kmmwb2u
    assign kmmwb2ut1_result [32:0]   = $signed(smmwbt1_result  [46:14] + 'd1);
    assign kmmwb2u_result   [31:0]   = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ?
                                       32'h7fffffff :
                                       kmmwb2ut1_result        [32:1] ;
    // kmmwt2
    // assign kmmwt2_result_ov          = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ?
                                               // 'd1:'d0;
    assign kmmwt2_result             = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ?
                                       {32'h7fffffff,1'b1}:
                                       {smmwtt1_result          [46:15],1'b0} ;
    // kmmwt2u
    assign kmmwt2ut1_result [32:0]   = $signed(smmwtt1_result  [46:14] + 'd1);
    assign kmmwt2u_result   [32:0]   = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ?
                                       {32'h7fffffff,1'b1} :
                                       {kmmwt2ut1_result        [32:1],1'b0} ;
    // kmmawb2
    assign kmmawb2t1_result [32:0]   = $signed(reg_kmmac_result[31:0]) + $signed(kmmwb2_result[31:0]);
    assign kmmawb2t2_result [32:0]   = $signed(kmmawb2t1_result [32:0]) > (mul31_1) ?    mul31_1 :
                                       $signed(kmmawb2t1_result [32:0]) < ((mul31))  ? ((mul31)):
                                               {kmmawb2t1_result};
    assign kmmawb2_result_ov         = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ? 1'b1 :
                                       $signed(kmmawb2t1_result [32:0]) > (mul31_1) ? 'd1:
                                       $signed(kmmawb2t1_result [32:0]) < ((mul31))  ? 'd1:'d0;
    assign kmmawb2_result   [31:0]   = kmmawb2t2_result ; 
    // kmmawb2
    assign kmmawb2ut1_result [47:14] =  $signed(smmwbt1_result[47:14] + 1);
    assign kmmawb2ut2_result [32:0]  = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ? 
                                                      32'h7fffffff :
                                                      kmmawb2ut1_result [47:15];
    assign kmmawb2ut3_result [32:0]   = $signed(reg_kmmac_result[31:0]) + $signed(kmmawb2ut2_result [32:0]);
    assign kmmawb2u_result   [31:0]   = $signed(kmmawb2ut3_result [32:0]) > (mul31_1) ? mul31_1 :
                                        $signed(kmmawb2ut3_result [32:0]) < ((mul31))  ? ((mul31)):
                                                kmmawb2ut3_result [32:0];
    assign kmmawb2u_result_ov         = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[15:0] == 16'h8000 ? 'd1:
                                                $signed(kmmawb2ut3_result [32:0]) > (mul31_1) ? 'd1:
                                                $signed(kmmawb2ut3_result [32:0]) < ((mul31))  ? 'd1:'d0;
    // kmmawt2
    assign kmmawt2t1_result [32:0]    =  $signed(reg_kmmac_result [31:0]) + $signed(kmmwt2_result[32:1]);
    assign kmmawt2t2_result [32:0]    =  $signed(kmmawt2t1_result [32:0]) > (mul31_1) ? mul31_1 :
                                         $signed(kmmawt2t1_result [32:0]) < ((mul31))  ? ((mul31)):
                                                 kmmawt2t1_result [32:0];
    assign kmmawt2_result_ov          = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ? 'd1:
                                        $signed(kmmawt2t1_result [32:0]) > (mul31_1) ? 'd1:
                                        $signed(kmmawt2t1_result [32:0]) < ((mul31))  ? 'd1:'d0;
    assign kmmawt2_result [31:0]      = kmmawt2t2_result [32:0]; 
    // kmmawt2
    assign kmmawt2ut1_result [47:14]  = ((smmwtt1_result[47:14]) + 1);
    assign kmmawt2ut2_result [31:0]   = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ? 
                                                               32'h7fffffff :
                                                               kmmawt2ut1_result [46:15];
    assign kmmawt2ut3_result [32:0]   = $signed(reg_kmmac_result  [31:0]) + $signed(kmmawt2ut2_result [31:0]);
    assign kmmawt2u_result   [31:0]   = $signed(kmmawt2ut3_result [32:0]) > (mul31_1) ? mul31_1 :
                                        $signed(kmmawt2ut3_result [32:0]) < ((mul31))  ? ((mul31)):
                                                kmmawt2ut3_result [32:0];
    assign kmmawt2u_result_ov         = operand_a_i     [31:0] == 32'h80000000 && operand_b_i[31:16] == 16'h8000 ? 'd1 :
                                        $signed(kmmawt2ut3_result [32:0]) > (mul31_1) ? 'd1:
                                        $signed(kmmawt2ut3_result [32:0]) < ((mul31))  ? 'd1:'d0;


    assign smbb16_result [31:0]     = smul16_result[0];//$signed(operand_a_i[15:0])       * $signed(operand_b_i[15:0]);//
    assign smtt16_result [31:0]     = smul16_result[1];//$signed(operand_a_i[31:16])    * $signed(operand_b_i[31:16]);//

    assign smbt16_result [31:0]     = $signed(operand_a_i[15:0])       * $signed(operand_b_i[31:16]);
    assign smtb16_result [31:0]     = $signed(operand_a_i[31:16])    * $signed(operand_b_i[15:0]);
    // assign smul16_result            = {smtt16_result,smbb16_result};
    assign kmda_result_ov           = operand_a_i     [31:0] == 32'h80008000 || operand_b_i[31:0] == 32'h80008000 ? 'd1:'d0;
    assign kmda_result   [31:0]     = operand_a_i     [31:0] == 32'h80008000 || operand_b_i[31:0] == 32'h80008000 ?
                                                    32'h7fffffff
                                                    : smbb16_result[31:0] + smtt16_result[31:0];
    assign kmxda_result  [31:0]     = operand_a_i     [31:0] == 32'h80008000 || operand_b_i[0:0] == 32'h80008000 ?
                                                       32'h7fffffff
                                                    : $signed(smtb16_result[31:0]) + $signed(smbt16_result[31:0]);
    // smds  
    assign smds_result    [31:0]    = $signed(smtt16_result[31:0]) - $signed(smbb16_result[31:0]);
    assign smdrs_result   [31:0]    = $signed(smbb16_result[31:0]) - $signed(smtt16_result[31:0]);
    assign smxds_result   [31:0]    = $signed(smtb16_result[31:0]) - $signed(smbt16_result[31:0]);
    //  kmabb  
    assign kmabbt1_result [32:0]    = $signed(reg_kmmac_result[31:0]) + $signed(smbb16_result[31:0]);
  
    assign kmabb_result_ov          = $signed(kmabbt1_result [32:0]) > (mul31_1) ? 'd1:
                                      $signed(kmabbt1_result [32:0]) < ((mul31))  ? 'd1:
                                      'd0;


    assign kmabb_result   [31:0]    = $signed(kmabbt1_result [32:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmabbt1_result [32:0]) < ((mul31))  ? ((mul31)):
                                              kmabbt1_result [32:0];
    // kmabt  
    assign kmabtt1_result [32:0]    = $signed(reg_kmmac_result[31:0]) + $signed(smbt16_result[31:0]);
    assign kmabt_result   [31:0]    = $signed(kmabtt1_result [32:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmabtt1_result [32:0]) < ((mul31))  ? ((mul31)):
                                              kmabtt1_result [32:0];
    assign kmabt_result_ov          = $signed(kmabtt1_result [32:0]) > (mul31_1) ? 'd1:
                                      $signed(kmabtt1_result [32:0]) < ((mul31))  ? 'd1:
                                      'd1;
    // kmatt  
    assign kmattt1_result [32:0]    = $signed(reg_kmmac_result[31:0]) + $signed(smtt16_result[31:0]);
    assign kmatt_result   [31:0]    = $signed(kmattt1_result [32:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmattt1_result [32:0]) < ((mul31))  ? ((mul31)):
                                              kmattt1_result [32:0];
    assign kmatt_result_ov          = $signed(kmattt1_result [32:0]) > (mul31_1) ? 'd1:
                                      $signed(kmattt1_result [32:0]) < ((mul31))  ? 'd1:
                                      'd1;
    // kmada  
    assign kmada1_result  [33:0]    = $signed(reg_kmmac_result[31:0]) + 
                                      $signed(   smtt16_result[31:0]    ) + 
                                      $signed(   smbb16_result[31:0]    );
    assign kmada_result  [31:0]     = $signed(kmada1_result [33:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmada1_result [33:0]) < ((mul31))  ? ((mul31)):
                                              kmada1_result [33:0];
    assign kmada_result_ov          = $signed(kmada1_result [33:0]) > (mul31_1) ? 'd1:
                                      $signed(kmada1_result [33:0]) < ((mul31))  ? 'd1:
                                      'd0;
    // kmaxda
    assign kmaxda1_result  [33:0]   = $signed(reg_kmmac_result[31:0]) + 
                                      $signed(   smtb16_result[31:0]    ) + 
                                      $signed(   smbt16_result[31:0]    );
    assign kmaxda_result  [31:0]    = $signed(kmaxda1_result [33:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmaxda1_result [33:0]) < ((mul31))  ? ((mul31)):
                                              kmaxda1_result [33:0];
    assign kmaxda_result_ov         = $signed(kmaxda1_result [33:0]) > (mul31_1) ? 'd1:
                                      $signed(kmaxda1_result [33:0]) < ((mul31))  ? 'd1: 
                                      'd0;
    // kmads
    assign kmadst1_result  [33:0]   = $signed(reg_kmmac_result[31:0]) + 
                                      $signed(smtt16_result   [31:0]) - 
                                      $signed(smbb16_result   [31:0]);
    assign kmads_result   [31:0]    = $signed(kmadst1_result [33:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmadst1_result [33:0]) < ((mul31))  ? ((mul31)):
                                              kmadst1_result [33:0];
    assign kmads_result_ov          = $signed(kmadst1_result [33:0]) > (mul31_1) ? 'd1:
                                      $signed(kmadst1_result [33:0]) < ((mul31))  ? 'd1: 
                                      'd0;
    // kmadrs
    assign kmadrst1_result  [33:0]  = $signed(reg_kmmac_result[31:0])   + 
                                      $signed(smbb16_result[31:0])      - 
                                      $signed(smtt16_result[31:0]);
                                      // $signed(smdrs_result[31:0]);
    assign kmadrs_result   [31:0]   = $signed(kmadrst1_result [33:0]) > (mul31_1) ? mul31_1 :
                                      $signed(kmadrst1_result [33:0]) < ((mul31))  ? ((mul31)):
                                              kmadrst1_result [33:0];
    assign kmadrs_result_ov         = $signed(kmadrst1_result [33:0]) > (mul31_1) ? 'd1:
                                      $signed(kmadrst1_result [33:0]) < ((mul31))  ? 'd1: 'd0;
    // kmaxds
    assign kmaxdst1_result  [33:0]  = $signed(reg_kmmac_result[31:0]) + 
                                      $signed(smtb16_result[31:0])      - 
                                      $signed(smbt16_result[31:0]);
                                      // $signed(smxds_result[31:0]);
    assign kmaxds_result    [31:0]   = $signed(kmaxdst1_result [33:0]) > (mul31_1) ? mul31_1 :
                                       $signed(kmaxdst1_result [33:0]) < ((mul31))  ? ((mul31)):
                                               kmaxdst1_result [33:0];

    assign kmaxds_result_ov          = $signed(kmaxdst1_result [33:0]) > (mul31_1) ? 'd1:
                                       $signed(kmaxdst1_result [33:0]) < ((mul31))  ? 'd1: 'd0;

    // kmsda
    assign kmsdat1_result  [33:0]    = $signed(reg_kmmac_result[31:0]) - 
                                        $signed(smtt16_result[31:0])      - 
                                        $signed(smbb16_result[31:0]);
                                       // $signed(smds_result[31:0]);
    assign kmsda_result   [31:0]     = $signed(kmsdat1_result [33:0]) > (mul31_1) ? mul31_1 :
                                       $signed(kmsdat1_result [33:0]) < ((mul31))  ? ((mul31)):
                                               kmsdat1_result [33:0];
    assign kmsda_result_ov           = $signed(kmsdat1_result [33:0]) > (mul31_1) ? 'd1:
                                       $signed(kmsdat1_result [33:0]) < ((mul31))  ? 'd1:
                                       'd0;
    // kmsxda
    assign kmsxdat1_result  [33:0]   = $signed(reg_kmmac_result[31:0]) - 
                                       $signed(smtb16_result[31:0])      - 
                                       $signed(smbt16_result[31:0]);
                                       // $signed(smxds_result    [31:0]);
    assign kmsxda_result   [31:0]    = $signed(kmsxdat1_result [33:0]) > (mul31_1) ? mul31_1 :
                                       $signed(kmsxdat1_result [33:0]) < ((mul31))  ? ((mul31)):
                                               kmsxdat1_result [33:0];
 
    assign kmsxda_result_ov          = $signed(kmsxdat1_result [33:0]) > (mul31_1) ? 'd1:
                                              $signed(kmsxdat1_result [33:0]) < ((mul31))  ? 'd1:
                                              'd0;    
    assign smalt1_result  [31:0]     =  $signed(operand_b_i[31:16  ]) *  $signed(operand_b_i[15:0]);

    assign smaqa_result   [31:0]     =  $signed(reg_kmmac_result[31:0   ]) + 
                                         $signed(smul8_result  [0]) +  
                                         $signed(smul8_result  [1]) +
                                         $signed(smul8_result  [2]) + 
                                         $signed(smul8_result  [3]) ;
    assign umaqa_result   [31:0]           =   reg_kmmac_result[31:0   ] + 
                                               umul8_result[0] +  
                                               umul8_result[1] +
                                               umul8_result[2] + 
                                               umul8_result[3] ;

    // SMAQA.SU
    assign smaqasut1_result [7 :0   ] =  operand_a_i[ 7] ? (-(operand_a_i[ 7:0   ])):(operand_a_i[ 7:0   ]);
    assign smaqasut1_result [15:8 ]   =  operand_a_i[15] ? (-(operand_a_i[15:8 ])):(operand_a_i[15:8 ]);
    assign smaqasut1_result [23:16]   =  operand_a_i[23] ? (-(operand_a_i[23:16])):(operand_a_i[23:16]);
    assign smaqasut1_result [31:24]   =  operand_a_i[31] ? (-(operand_a_i[31:24])):(operand_a_i[31:24]);

    assign smaqasut2_result [31 :0]    = operand_a_i[ 7] ? (-(smaqasut1_result[ 7:0   ]*operand_b_i[7 :0   ])) : (smaqasut1_result[ 7:0   ]*operand_b_i[7 :0   ]);
    assign smaqasut2_result [63 :0+32] = operand_a_i[15] ? (-(smaqasut1_result[15:8 ]*operand_b_i[15:8 ])) : (smaqasut1_result[15:8 ]*operand_b_i[15:8 ]);
    assign smaqasut2_result [95 :0+64] = operand_a_i[23] ? (-(smaqasut1_result[23:16]*operand_b_i[23:16])) : (smaqasut1_result[23:16]*operand_b_i[23:16]);
    assign smaqasut2_result [127:0+96] = operand_a_i[31] ? (-(smaqasut1_result[31:24]*operand_b_i[31:24])) : (smaqasut1_result[31:24]*operand_b_i[31:24]);
    assign smaqasu_result   [31:0]     = $signed(reg_kmmac_result[31:0   ] ) + 
                                                 smaqasut2_result[31 :0]    +  
                                                 smaqasut2_result[63 :0+32] +
                                                 smaqasut2_result[95 :0+64] + 
                                                 smaqasut2_result[127:0+96] ;
    assign smal_result        = operand_a64_i       + (smalt1_result[31] ? {32'hffffffff,smalt1_result[31:0] }:{32'h0,smalt1_result[31:0] });
       //  pbsad
    assign pbsadt1_o =  {24'd0,pbsad_t12[0]  }  + {24'd0,pbsad_t12[1] } + {24'd0,pbsad_t12[2]} +
                        {24'd0,pbsad_t12[3]}  ;

    assign pbsada_o  = reg_kmmac_result + pbsadt1_o;  
  // --------------------------------------------------------------------
  // 3.4 KADDH
  // --------------------------------------------------------------------
  wire                                       [31:0                   ] kabsw_t1                          ;
  assign kabsw_t1        = (-(operand_a_i[31:0]))                                                ;

  wire                                       [31:0                   ] kabsw_t2                          ;
  assign kabsw_t2        = (operand_a_i[31:0])                                                   ;

  assign kaddh_o         = {{16{kadd16_o[0][16]}},kadd16_o[0][16:1]};
  assign ksubh_o         = {{16{ksub16_o[0][16]}},ksub16_o[0][16:1]};
  assign ukaddh_o        = {{16{ukadd16_o[0][16]}},ukadd16_o[0][16:1]};
  assign uksubh_o        = {{16{uksub16_o[0][16]}},uksub16_o[0][16:1]};

   // Khm
  assign khmbb_t2[31:0]  =  $signed(smbb16_result) >>> 15;
  assign khmbb_o         =  (operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000) ? 
                            {32'h00007fff,1'b1}  : 
                            {khmbb_t2[31:0],1'b0};

  assign khmbt_t2[31:0]  =  $signed(smbt16_result) >>> 15;
  assign khmbt_o         =  (operand_a_i[15:0] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 
                            {32'h00007fff,1'b1}  : 
                            {khmbt_t2[31:0],1'b0};

  assign khmtt_t2        =  $signed(smtt16_result) >>> 15;
  assign khmtt_o         =  (operand_a_i[31:16] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 
                            {32'h00007fff,1'b1}  : 
                            {(khmtt_t2[31:0]),1'b0};                                                                                                                                               
  //  kaddw
  assign kaddw_t1 = {{1{operand_a_i[31]}},operand_a_i[31:0]}; 
  assign kaddw_t2 = {{1{operand_b_i[31]}},operand_b_i[31:0]};
  assign kaddw_t3 = kaddw_t1 + kaddw_t2;//$signed(kaddw_t1) + $signed(kaddw_t2);
  assign kaddw_t4 = $signed(kaddw_t3) > (mul31_1) ? ({32'h7fffffff,1'b1}) :
                    $signed(kaddw_t3) < ((mul31))  ? (({32'h80000000,1'b1}))  :
                    {kaddw_t3,1'b0};
  assign kaddw_o  = (kaddw_t4[32:1]);

  assign ukaddw_t1 = (operand_a_i[31:0]) + (operand_b_i[31:0]);
                    
  assign ukaddw_t2 = (ukaddw_t1) > ((2**32)-1) ? ({32'hffffffff,1'b1}) :
                     {ukaddw_t1,1'b0};
  assign ukaddw_o  = ukaddw_t2[32:1];
                
  assign ksubw_t3 = $signed(kaddw_t1) - $signed(kaddw_t2);
  assign ksubw_t4  = $signed(ksubw_t3) > (mul31_1) ? ({32'h7fffffff,1'b1}) :
                    $signed(ksubw_t3) < ((mul31))  ? ({32'h80000000,1'b1})  :
                    {ksubw_t3,1'b0};
  assign ksubw_o  = ksubw_t4[32:1];

  assign uksubw_t1 = operand_a_i[31:0] - operand_b_i[31:0] ; 
                                
  assign uksubw_t2 = $signed(uksubw_t1) < (0)  ? ({32'h0,1'b1})  :
                     {uksubw_t1[31:0],1'b0};
  assign uksubw_o  = uksubw_t2[32:1];

  // kdmbb
  assign kdmabb_t1  = (operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000) ?
                      32'h7fffffff: 
                      smbb16_result[31:0] << 1;
  assign kdmabb_t2  = {{1{reg_kmmac_result[31]}},reg_kmmac_result[31:0]} + {{1{kdmabb_t1[31]}},kdmabb_t1[31:0]} ;

  assign kdmabb_t3  = $signed(kdmabb_t2) > (mul31_1) ? ({32'h7fffffff,1'b1}) : //(MU31_1) : 
                      $signed(kdmabb_t2) < ((mul31)) ? ({32'h80000000,1'b1})  : //((mul31)) :
                             ({kdmabb_t2,1'b0});
  assign kdmabt_t1  = (operand_a_i[15:0] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ?
                      32'h7fffffff: 
                      smbt16_result[31:0] << 1;
  assign kdmabt_t2  = {{1{reg_kmmac_result[31]}},reg_kmmac_result[31:0]} + {{1{kdmabt_t1[31]}},kdmabt_t1[31:0]} ;
  assign kdmabt_t3  = $signed(kdmabt_t2) > (mul31_1) ? ({32'h7fffffff,1'b1}) :  //(MU31_1) : 
                      $signed(kdmabt_t2) < ((mul31)) ? ({32'h80000000,1'b1})  : //((mul31)) :
                      ({kdmabt_t2,1'b0});

  assign kdmatt_t1  = (operand_a_i[31:16] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ?
                      32'h7fffffff: 
                      smtt16_result[31:0] << 1;
  assign kdmatt_t2  = {{1{reg_kmmac_result[31]}},reg_kmmac_result[31:0]} + {{1{kdmatt_t1[31]}},kdmatt_t1[31:0]} ;
  assign kdmatt_t3  = $signed(kdmatt_t2) > (mul31_1) ? ({32'h7fffffff,1'b1}) :  //(MU31_1) : 
                      $signed(kdmatt_t2) < ((mul31)) ? ({32'h80000000,1'b1})  : //((MU31)) :
                      {(kdmatt_t2),1'b0}; 

  // kslraw
  wire [5:0] sa_klraw0  ;
  wire [5:0] sa_klraw1  ;
  wire [5:0] sa_klraw2  ;
  wire [31:0] kslraw_t1 ;

  wire [31:0] kslrawu_t1;
  wire [32:0] kslrawu_t2 ;
  assign sa_klraw0  =  operator_i == KSLLW || operator_i == KSLLIW ? operand_b_i[4:0]:operand_b_i[5:0];
  assign sa_klraw1  = -(operand_b_i[5:0]);
  assign sa_klraw2  = (sa_klraw1 == 'd32) ? 31 : sa_klraw1;
  assign kslraw_t1  = $signed(operand_a_i[31:0]) >>> sa_klraw2;
  assign kslrawu_t1 = $signed(operand_a_i[31:0]) >>> (sa_klraw2 - 1);
  assign kslrawu_t2 = {{1{kslrawu_t1[31]}},kslrawu_t1[31:0]} + 1;

  wire   [31 + 31 :0]                kslrawt32_o                            ;
  wire   [31 + 31 :0]                kslrawt33_o                            ;
  assign kslrawt32_o               = operand_a_i[31      :0]        ;
  assign kslrawt33_o               = kslrawt32_o << sa_klraw0;

    wire [32 :0] ksllw_t1   ;
    assign ksllw_t1       = (sa_klraw0 >= 'd0) ? 
                            sa_klraw0 == 'd1   ? 
                            $signed(kslrawt33_o  [31 + 1  :0] )  > (mul31_1) ?  ({32'h7fffffff,1'b1})://(mul31_1)  : 
                            $signed(kslrawt33_o  [31 + 1  :0] )  < ($signed(mul31))  ?   ({32'h80000000,1'b1})://((mul31)) : 
                            ({kslrawt33_o  [31 + 1  :0],1'b0} )
                           : sa_klraw0 == 'd2   ? $signed(kslrawt33_o [31+ 2  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 2  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 2  :0] ),1'b0}
                           : sa_klraw0 == 'd3   ? $signed(kslrawt33_o [31+ 3  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 3  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 3  :0] ),1'b0}
                           : sa_klraw0 == 'd4   ? $signed(kslrawt33_o [31+ 4  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 4  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 4  :0] ),1'b0}
                           : sa_klraw0 == 'd5   ? $signed(kslrawt33_o [31+ 5  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 5  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 5  :0] ),1'b0}
                           : sa_klraw0 == 'd6   ? $signed(kslrawt33_o [31+ 6  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 6  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 6  :0] ),1'b0}
                           : sa_klraw0 == 'd7   ? $signed(kslrawt33_o [31+ 7  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 7  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 7  :0] ),1'b0}
                           : sa_klraw0 == 'd8   ? $signed(kslrawt33_o [31+ 8  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 8  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 8  :0] ),1'b0}
                           : sa_klraw0 == 'd9   ? $signed(kslrawt33_o [31+ 9  :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 9  :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 9  :0] ),1'b0}
                           : sa_klraw0 == 'd10  ? $signed(kslrawt33_o [31+ 10 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 10 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 10 :0] ),1'b0}
                           : sa_klraw0 == 'd11  ? $signed(kslrawt33_o [31+ 11 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 11 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 11 :0] ),1'b0}
                           : sa_klraw0 == 'd12  ? $signed(kslrawt33_o [31+ 12 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 12 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 12 :0] ),1'b0}
                           : sa_klraw0 == 'd13  ? $signed(kslrawt33_o [31+ 13 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 13 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 13 :0] ),1'b0}
                           : sa_klraw0 == 'd14  ? $signed(kslrawt33_o [31+ 14 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 14 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 14 :0] ),1'b0}
                           : sa_klraw0 == 'd15  ? $signed(kslrawt33_o [31+ 15 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 15 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 15 :0] ),1'b0}
                           : sa_klraw0 == 'd16  ? $signed(kslrawt33_o [31+ 16 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 16 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 16 :0] ),1'b0}
                           : sa_klraw0 == 'd17  ? $signed(kslrawt33_o [31+ 17 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 17 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 17 :0] ),1'b0}
                           : sa_klraw0 == 'd18  ? $signed(kslrawt33_o [31+ 18 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 18 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 18 :0] ),1'b0}
                           : sa_klraw0 == 'd19  ? $signed(kslrawt33_o [31+ 19 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 19 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 19 :0] ),1'b0}
                           : sa_klraw0 == 'd20  ? $signed(kslrawt33_o [31+ 20 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 20 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 20 :0] ),1'b0}
                           : sa_klraw0 == 'd21  ? $signed(kslrawt33_o [31+ 21 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 21 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 21 :0] ),1'b0}
                           : sa_klraw0 == 'd22  ? $signed(kslrawt33_o [31+ 22 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 22 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 22 :0] ),1'b0}
                           : sa_klraw0 == 'd23  ? $signed(kslrawt33_o [31+ 23 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 23 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 23 :0] ),1'b0}
                           : sa_klraw0 == 'd24  ? $signed(kslrawt33_o [31+ 24 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 24 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 24 :0] ),1'b0}
                           : sa_klraw0 == 'd25  ? $signed(kslrawt33_o [31+ 25 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 25 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 25 :0] ),1'b0}
                           : sa_klraw0 == 'd26  ? $signed(kslrawt33_o [31+ 26 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 26 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 26 :0] ),1'b0}
                           : sa_klraw0 == 'd27  ? $signed(kslrawt33_o [31+ 27 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 27 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 27 :0] ),1'b0}
                           : sa_klraw0 == 'd28  ? $signed(kslrawt33_o [31+ 28 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 28 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 28 :0] ),1'b0}
                           : sa_klraw0 == 'd29  ? $signed(kslrawt33_o [31+ 29 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 29 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 29 :0] ),1'b0}
                           : sa_klraw0 == 'd30  ? $signed(kslrawt33_o [31+ 30 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 30 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 30 :0] ),1'b0}
                           : sa_klraw0 == 'd31  ? $signed(kslrawt33_o [31+ 31 :0] )  > (mul31_1) ? ({32'h7fffffff,1'b1}) : $signed(kslrawt33_o [31 + 31 :0] )  < (mul31) ? ({32'h80000000,1'b1}) : {(kslrawt33_o [31 + 31 :0] ),1'b0}
                           : {(operand_a_i[31 :0]),1'b0} 
                           : {operand_a_i[31 :0],1'b0};

    assign kslraw_o        =  (sa_klraw0[5]) == 1'b1  //$signed(sa_klraw0) < 0 
                             ?  kslraw_t1 : ksllw_t1[32:1]   ;

    assign kslrawu_o        =  (sa_klraw0[5]) == 1'b1  // $signed(sa_klraw0) < 0 
                             ? kslrawu_t2[32:1] : ksllw_t1[32:1]   ;

    // assign kslliw_o       = ksllw_t1[32:1];

    assign kabsw_o        = kabsw_t2[31] == 1'b0 ?//$signed(kabsw_t2) >= 0 ? 
                            operand_a_i[31:0] : 
                            operand_a_i[31:0] == 32'h80000000 ? 32'h7fffffff      :
                            kabsw_t1[31:0]   ;

    // raddw
    wire [32:0] raddw_t2; 
    wire [32:0] rsubw_t2;
    assign raddw_t2 = {kaddw_t3[32],kaddw_t3} >> 1;//$signed(kaddw_t3) >>1;
    assign raddw_o  = raddw_t2[31:0];

    assign      uraddw_o  = ukaddw_t1[32:1];
    assign ursubw_o  = uksubw_t1[32:1];
    assign rsubw_t2  = {ksubw_t3[32],ksubw_t3} >> 1;//$signed(ksubw_t3) >>> 1;
    assign rsubw_o   = rsubw_t2[31:0];

        // msubr32

    wire  [63:0] msubr32_t1 ;
    wire  [31:0] msubr32_t2 ;
    assign msubr32_t1  = operand_a_i[31:0] * operand_b_i[31:0];
    assign msubr32_t2  = reg_kmmac_result[31:0] - msubr32_t1[31:0];
    assign msubr32_o   = msubr32_t2;
    wire [31:0] maddr32_t2;
    wire [XLEN-1:0] maddr32_o;
    assign maddr32_t2 = reg_kmmac_result[31:0]    + msubr32_t1[31:0];
    assign maddr32_o = maddr32_t2 ;
  
    wire [XLEN-1:0] bpick_o;
    generate
      genvar gbpick;
      for (gbpick = 0; gbpick < XLEN; gbpick = gbpick + 1) begin
        assign bpick_o[gbpick] = operator_i == BPICK ? operand_c_i[gbpick] : operand_b_i[gbpick] ? operand_a_i[gbpick] : operator_i == BPICK ? operand_b_i[gbpick]:operand_c_i[gbpick];
      end
    endgenerate
    
    assign ave_t2 = {{operand_a_i[31]},operand_a_i[31:0]} + {{operand_b_i[31]},operand_b_i[31:0]} + $signed(1);
    assign ave_o        = ave_t2[32:1];
    //  SRAu
    wire [32:0] srau_t1 ;
    assign srau_t1 = $signed(operand_a_i[31:0]) >>> ((operand_b_i[4:0])-1);
    wire [32:0] srau_t12;
    assign srau_t12= $signed(srau_t1) + (1);

    wire [XLEN-1:0] srau_o;
    assign      srau_o    = operand_b_i[4:0] != 'd0 ? srau_t12[31+1:1] : operand_a_i ;

    wire [5:0] msb;
    assign msb = operand_b_i[4:0];

    wire [31:0] rev31;
    
    generate
      genvar g31;
      for (g31 = 0; g31 <= 31; g31 = g31 + 1) begin
        assign rev31[g31]    = operand_a_i[31-g31];
      end
    endgenerate

    wire [30:0] rev30;
    generate
      genvar g30;
      for (g30 = 0; g30 <= 30; g30 = g30 + 1) begin
        assign rev30[g30]    = operand_a_i[30-g30];
      end
    endgenerate

    wire [29:0] rev29;
    generate
      genvar g29;
      for (g29 = 0; g29 <= 29; g29 = g29 + 1) begin
        assign rev29[g29]    = operand_a_i[29-g29];
      end
    endgenerate

    wire [28:0] rev28;
    generate
      genvar g28;
      for (g28 = 0; g28 <= 28; g28 = g28 + 1) begin
        assign rev28[g28]    = operand_a_i[28-g28];
      end
    endgenerate

    wire [27:0] rev27;
    generate
      genvar g27;
      for (g27 = 0; g27 <= 27; g27 = g27 + 1) begin
        assign rev27[g27]    = operand_a_i[27-g27];
      end
    endgenerate

    wire [26:0] rev26;
    generate
      genvar g26;
      for (g26 = 0; g26 <= 26; g26 = g26 + 1) begin
        assign rev26[g26]    = operand_a_i[26-g26];
      end
    endgenerate
    wire [25:0] rev25;
    generate
      genvar g25;
      for (g25 = 0; g25 <= 25; g25 = g25 + 1) begin
        assign rev25[g25]    = operand_a_i[25-g25];
      end
    endgenerate

    wire [24:0] rev24;
    generate
      genvar g24;
      for (g24 = 0; g24 <= 24; g24 = g24 + 1) begin
        assign rev24[g24]    = operand_a_i[24-g24];
      end
    endgenerate

    wire [23:0] rev23;
    generate
      genvar g23;
      for (g23 = 0; g23 <= 23; g23 = g23 + 1) begin
        assign rev23[g23]    = operand_a_i[23-g23];
      end
    endgenerate

    wire [22:0] rev22;
    generate
      genvar g22;
      for (g22 = 0; g22 <= 22; g22 = g22 + 1) begin
        assign rev22[g22]    = operand_a_i[22-g22];
      end
    endgenerate

    wire [21:0] rev21;
    generate
      genvar g21;
      for (g21 = 0; g21 <= 21; g21 = g21 + 1) begin
        assign rev21[g21]    = operand_a_i[21-g21];
      end
    endgenerate

    wire [20:0] rev20;
    generate
      genvar g20;
      for (g20 = 0; g20 <= 20; g20 = g20 + 1) begin
        assign rev20[g20]    = operand_a_i[20-g20];
      end
    endgenerate


    wire [19:0] rev19;
    generate
      genvar g19;
      for (g19 = 0; g19 <= 19; g19 = g19 + 1) begin
        assign rev19[g19]    = operand_a_i[19-g19];
      end
    endgenerate

    wire [18:0] rev18;
    generate
      genvar g18;
      for (g18 = 0; g18 <= 18; g18 = g18 + 1) begin
        assign rev18[g18]    = operand_a_i[18-g18];
      end
    endgenerate

    wire [17:0] rev17;
    generate
      genvar g17;
      for (g17 = 0; g17 <= 17; g17 = g17 + 1) begin
        assign rev17[g17]    = operand_a_i[17-g17];
      end
    endgenerate

    wire [16:0] rev16;
    generate
      genvar g16;
      for (g16 = 0; g16 <= 16; g16 = g16 + 1) begin
        assign rev16[g16]    = operand_a_i[16-g16];
      end
    endgenerate

    wire [15:0] rev15;
    generate
      genvar g15;
      for (g15 = 0; g15 <= 15; g15 = g15 + 1) begin
        assign rev15[g15]    = operand_a_i[15-g15];
      end
    endgenerate

    wire [14:0] rev14;
    generate
      genvar g14;
      for (g14 = 0; g14 <= 14; g14 = g14 + 1) begin
        assign rev14[g14]    = operand_a_i[14-g14];
      end
    endgenerate

    wire [13:0] rev13;
    generate
      genvar g13;
      for (g13 = 0; g13 <= 13; g13 = g13 + 1) begin
        assign rev13[g13]    = operand_a_i[13-g13];
      end
    endgenerate

    wire [12:0] rev12;
    generate
      genvar g12;
      for (g12 = 0; g12 <= 12; g12 = g12 + 1) begin
        assign rev12[g12]    = operand_a_i[12-g12];
      end
    endgenerate

    wire [11:0] rev11;
    generate
      genvar g11;
      for (g11 = 0; g11 <= 11; g11 = g11 + 1) begin
        assign rev11[g11]    = operand_a_i[11-g11];
      end
    endgenerate


    wire [10:0] rev10;
    generate
      genvar g10;
      for (g10 = 0; g10 <= 10; g10 = g10 + 1) begin
        assign rev10[g10]    = operand_a_i[10-g10];
      end
    endgenerate

    wire [9:0] rev9;
    generate
      genvar g9;
      for (g9 = 0; g9 <= 9; g9 = g9 + 1) begin
        assign rev9[g9]    = operand_a_i[9-g9];
      end
    endgenerate

    wire [8:0] rev8;
    generate
      genvar g8;
      for (g8 = 0; g8 <= 8; g8 = g8 + 1) begin
        assign rev8[g8]    = operand_a_i[8-g8];
      end
    endgenerate

    wire [7:0] rev7;
    generate
      genvar g7;
      for (g7 = 0; g7 <= 7; g7 = g7 + 1) begin
        assign rev7[g7]    = operand_a_i[7-g7];
      end
    endgenerate


    wire [6:0] rev6;
    generate
      genvar g6;
      for (g6 = 0; g6 <= 6; g6 = g6 + 1) begin
        assign rev6[g6]    = operand_a_i[6-g6];
      end
    endgenerate


    wire [5:0] rev5;
    generate
      genvar g5;
      for (g5 = 0; g5 <= 5; g5 = g5 + 1) begin
        assign rev5[g5]    = operand_a_i[5-g5];
      end
    endgenerate

    wire [4:0] rev4;
    generate
      genvar g4;
      for (g4 = 0; g4 <= 4; g4 = g4 + 1) begin
        assign rev4[g4]    = operand_a_i[4-g4];
      end
    endgenerate

    wire [3:0] rev3;
    generate
      genvar g3;
      for (g3 = 0; g3 <= 3; g3 = g3 + 1) begin
        assign rev3[g3]    = operand_a_i[3-g3];
      end
    endgenerate

    wire [2:0] rev2;
    generate
      genvar g2;
      for (g2 = 0; g2 <= 2; g2 = g2 + 1) begin
        assign rev2[g2]    = operand_a_i[2-g2];
      end
    endgenerate


    wire [1:0] rev1;
    generate
      genvar g1;
      for (g1 = 0; g1 <= 1; g1 = g1 + 1) begin
        assign rev1[g1]    = operand_a_i[1-g1];
      end
    endgenerate

    always_comb begin 
      case (msb)
      'd1 : begin 
        rev[1:0]  = rev1;
        rev[31:2] = 'd0;
      end
      'd2 :begin 
        rev[2:0]  = rev2;
        rev[31:3] = 'd0;
      end
      'd3 :begin 
        rev[3 :0]  = rev3 ;
        rev[31:3 +1] = 'd0;
      end
      'd4 :begin 
        rev[4 :0]  = rev4 ;
        rev[31:4 +1] = 'd0;
      end
      'd5 :begin 
        rev[5 :0]  = rev5 ;
        rev[31:5 +1] = 'd0;
      end
      'd6 :begin 
        rev[6 :0]  = rev6 ;
        rev[31:6 +1] = 'd0;
      end
      'd7 :begin 
        rev[7 :0]  = rev7 ;
        rev[31:7 +1] = 'd0;
      end
      'd8 :begin 
        rev[8 :0]  = rev8 ;
        rev[31:8 +1] = 'd0;
      end
      'd9 :begin 
        rev[9 :0]  = rev9 ;
        rev[31:9 +1] = 'd0;
      end
      'd10:begin 
        rev[10:0]  = rev10;
        rev[31:10+1] = 'd0;
      end
      'd11:begin 
        rev[11:0]  = rev11;
        rev[31:11+1] = 'd0;
      end
      'd12:begin 
        rev[12:0]  = rev12;
        rev[31:12+1] = 'd0;
      end
      'd13:begin 
        rev[13:0]  = rev13;
        rev[31:13+1] = 'd0;
      end
      'd14:begin 
        rev[14:0]  = rev14;
        rev[31:14+1] = 'd0;
      end
      'd15:begin 
        rev[15:0]  = rev15;
        rev[31:15+1] = 'd0;
      end
      'd16:begin 
        rev[16:0]  = rev16;
        rev[31:16+1] = 'd0;
      end
      'd17:begin 
        rev[17:0]  = rev17;
        rev[31:17+1] = 'd0;
      end
      'd18:begin 
        rev[18:0]  = rev18;
        rev[31:18+1] = 'd0;
      end
      'd19:begin 
        rev[19:0]  = rev19;
        rev[31:19+1] = 'd0;
      end
      'd20:begin 
        rev[20:0]  = rev20;
        rev[31:20+1] = 'd0;
      end
      'd21:begin 
        rev[21:0]  = rev21;
        rev[31:21+1] = 'd0;
      end
      'd22:begin 
        rev[22:0]  = rev22;
        rev[31:22+1] = 'd0;
      end
      'd23:begin 
        rev[23:0]  = rev23;
        rev[31:23+1] = 'd0;
      end
      'd24:begin 
        rev[24:0]  = rev24;
        rev[31:24+1] = 'd0;
      end
      'd25:begin 
        rev[25:0]  = rev25;
        rev[31:25+1] = 'd0;
      end
      'd26:begin 
        rev[26:0]  = rev26;
        rev[31:26+1] = 'd0;
      end
      'd27:begin 
        rev[27:0]  = rev27;
        rev[31:27+1] = 'd0;
      end
      'd28:begin 
        rev[28:0]  = rev28;
        rev[31:28+1] = 'd0;
      end
      'd29:begin 
        rev[29:0]  = rev29;
        rev[31:29+1] = 'd0;
      end
      'd30:begin 
        rev[30:0]  = rev30;
        rev[31:30+1] = 'd0;
      end
      'd31:begin 
        rev[31:0]  = rev31;
        // rev[32:31+1] = 'd0;
      end
      default : begin 
        rev[31:1] = 'd0;
        rev[0]  = operand_a_i[0];
      end
      endcase
    end


    assign bitrev_o  = rev[31:0];
    logic [63:0] wext_src;
    assign       wext_src = operand_b_i[5:0] > 32 ? {operand_a_i,operand_c_i}:{operand_c_i,operand_a_i};

    // WEXT
    assign wext_t1 = wext_src >> lsb_loc;
    assign wext_o  = wext_t1;

  wire [31:0]   insb_o ;
  // assign   insb_o   =   operand_b_i[1:0] == 1 ?  {reg_kmmac_result[31:16],operand_a_i[7:0],reg_kmmac_result[7:0]}
  //                     : operand_b_i[1:0] == 2 ?  {reg_kmmac_result[31:24],operand_a_i[7:0],reg_kmmac_result[15:0]}
  //                     : operand_b_i[1:0] == 3 ?  {operand_a_i[7:0],reg_kmmac_result[23:0]}
  //                     :   {reg_kmmac_result[31:8],operand_a_i[7:0]};
  wire [55:0] shift_insb,shift_insb1;
  assign      shift_insb = 56'hffffff00ffffff << (operand_b_i[1:0]*8);
  assign      shift_insb1 = {24'h000000,operand_a_i[7:0],24'h000000} << (operand_b_i[1:0]*8);
  assign insb_o        = (reg_kmmac_result[31:0] & (shift_insb[55:24])) | (shift_insb1[55:24]);
    // parameter MU63_1 = 64'h7fffffffffffffff;
    logic signed [63:0] mul63_1= 64'h7fffffffffffffff;
    logic signed [63:0] mul63  = 64'h8000000000000000;
    parameter MU63   = 64'h8000000000000000;
    //  test syn
    logic [63:0]      operand_b64_i_neg;
    logic [63:0]      operand_a64_i_neg; 
    assign            operand_b64_i_neg = operator_i == RSUB64 || operator_i == KSUB64 ? ((~(operand_b64_i)) + 1'b1) : operand_b64_i;
    logic [64:0]      result_test;
    // test syn
    assign result_test       = ({operand_a64_i[63],operand_a64_i} + {operand_b64_i_neg[63],operand_b64_i_neg});

    assign rsub64_t1  = ({operand_a64_i[63],operand_a64_i}) - ({operand_b64_i[63],operand_b64_i});
    // assign rsub64_o   = $signed(result_test) >>> 1;
    assign rsub64_o   = {rsub64_t1[64],rsub64_t1} >> 1;//$signed(rsub64_t1) >>> 1;

    // uradd64
    assign uradd64_t1 = operand_a64_i + operand_b64_i;
    assign uradd64_o  = uradd64_t1[64:1];

    assign ursub64_t1 = operand_a64_i - operand_b64_i;
    assign ursub64_o  = ursub64_t1[64:1];
    // kadd64
    assign kadd64_o   = $signed(result_test) > (mul63_1)  ? {(64'h7fffffffffffffff),1'b1}  :
                        $signed(result_test) < mul63      ? {(64'h8000000000000000),1'b1}  :  //$signed(MU63) ? {(64'h8000000000000000),1'b1}  :
                        {result_test,1'b0};

    assign ksub64_o   = $signed(rsub64_t1) > (mul63_1)  ? {(64'h7fffffffffffffff),1'b1} : //(2**63-1) :
                        $signed(rsub64_t1) < mul63 ? {(64'h8000000000000000),1'b1} : //(-(2**63))  :
                        {rsub64_t1,1'b0};

    assign ukadd64_o  = uradd64_t1 > (64'hffffffffffffffff) ? {(64'hffffffffffffffff),1'b1} : //2**64-1) :
                        {uradd64_t1,1'b0};

    assign uksub64_o  = $signed(ursub64_t1) < (0) ? ({64'h0,1'b1}) :
                        {ursub64_t1,1'b0};

    assign smar64_o = (reg_kmmac_result) + smmult_result;
   
    assign smsr64_o = (reg_kmmac_result) - smmult_result;                  
  
    assign umsr64_o = (reg_kmmac_result) - msubr32_t1;

    assign kmar64_t3  = $signed(reg_kmmac_result) + $signed(smmult_result);
    assign kmar64_o   = $signed(kmar64_t3) > (mul63_1)  ? ({64'h7fffffffffffffff,1'b1}) :
                        $signed(kmar64_t3) < mul63      ? ({64'h8000000000000000,1'b1})  :
                        {kmar64_t3[63:0],1'b0};
    assign kmsr64_t3  = $signed(reg_kmmac_result) - $signed(smmult_result);//mulsr64_o); 
    assign kmsr64_o   = $signed(kmsr64_t3) > (mul63_1)  ? ({64'h7fffffffffffffff,1'b1}) :
                        $signed(kmsr64_t3) < mul63      ? ({64'h8000000000000000,1'b1})  :
                        {kmsr64_t3,1'b0};
  
    assign ukmar64_t3   = ((reg_kmmac_result)) + (msubr32_t1);
        assign ukmar64_o    = ( ukmar64_t3) > (64'hffffffffffffffff)  ? ({64'hffffffffffffffff,1'b1}) :
                            {ukmar64_t3,1'b0};
    assign umar64_o     = ukmar64_t3;   

    assign ukmsr64_t3   = ((reg_kmmac_result)) - (msubr32_t1);
    assign ukmsr64_o    = $signed(ukmsr64_t3) < (0)  ? ({64'h0,1'b1}) :
                           {ukmsr64_t3,1'b0};
        
    assign smalbb64_o  = (reg_kmmac_result) +   { {32{smbb16_result[31]}} ,smbb16_result[31:0]};
    assign smalbt64_o  = (reg_kmmac_result) +   { {32{smbt16_result[31]}} ,smbt16_result[31:0]};
    assign smaltt64_o  = (reg_kmmac_result) +   { {32{smtt16_result[31]}} ,smtt16_result[31:0]};
    assign smalds64_o  = (reg_kmmac_result) + ( { {32{smtt16_result[31]}} ,smtt16_result[31:0]} - { {32{smbb16_result[31]}} ,smbb16_result[31:0 ]});
    assign smaldrs64_o = (reg_kmmac_result) + ( { {32{smbb16_result[31]}} ,smbb16_result[31:0]} - { {32{smtt16_result[31]}} ,smtt16_result[31:0 ]});
    assign smalxds64_o = (reg_kmmac_result) + ( { {32{smtb16_result[31]}} ,smtb16_result[31:0]} - { {32{smbt16_result[31]}} ,smbt16_result[31:0 ]});
    
    assign smslda64_o  = (reg_kmmac_result) -   { {32{smbb16_result[31]}} ,smbb16_result[31:0]} - { {32{smtt16_result[31]}} ,smtt16_result[31:0 ]};
    assign smslxda64_o = (reg_kmmac_result) -   { {32{smbt16_result[31]}} ,smbt16_result[31:0]} - { {32{smtb16_result[31]}} ,smtb16_result[31:0 ]};

    assign smalda64_o   =(reg_kmmac_result) +   { {32{smbb16_result[31]}} ,smbb16_result[31:0]} + { {32{smtt16_result[31]}} ,smtt16_result[31:0 ]};  
    assign smalxda64_o  =(reg_kmmac_result) +   { {32{smbt16_result[31]}} ,smbt16_result[31:0]} + { {32{smtb16_result[31]}} ,smtb16_result[31:0 ]}; 
  ////////////////////////////////////////////////////////
  //   ____                 _ _     __  __              //
  //  |  _ \ ___  ___ _   _| | |_  |  \/  |_   ___  __  //
  //  | |_) / _ \/ __| | | | | __| | |\/| | | | \ \/ /  //
  //  |  _ <  __/\__ \ |_| | | |_  | |  | | |_| |>  <   //
  //  |_| \_\___||___/\__,_|_|\__| |_|  |_|\__,_/_/\_\  //
  //                                                    //
  ////////////////////////////////////////////////////////
  logic debug_add8;
  logic [31:0] test_rsub64_h;
  // logic ov_o;
  always_comb begin
    result_o    = '0;
    result64_o  = '0;
    debug_add8  = 'd0;
    ov_o        = 'd0;
    unique case (operator_i)
      // Standard Operations
      ALU_AND: result_o = operand_a_i & operand_b_i;
      ALU_OR:  result_o = operand_a_i | operand_b_i;
      ALU_XOR: result_o = operand_a_i ^ operand_b_i;
      // ADD8 : begin
      //   result_o   = add8_o;
      //   debug_add8 = 'd1;
      // end
      RADD8:begin 
        result_o = radd8_o;
      end
      // URADD8: begin
      //   result_o = uradd8_o;
      // end 
      URSUB8: begin 
        result_o = ursub8_o;
      end
      KADD8: begin
        result_o = {kadd8_o[3][8:1],kadd8_o[2][8:1],kadd8_o[1][8:1],kadd8_o[0][8:1]};
        ov_o     = kadd8_o[3][0] || kadd8_o[2][0] || kadd8_o[1][0] || kadd8_o[0][0];
        //debug_add8 = 'd1;
      end
      UKADD8: begin 
        result_o = {ukadd8_o[3][8:1],ukadd8_o[2][8:1],ukadd8_o[1][8:1],ukadd8_o[0][8:1]};;//ukadd8_o;
        ov_o     = ukadd8_o[3][0] || ukadd8_o[2][0] || ukadd8_o[1][0] || ukadd8_o[0][0];//|ukadd8_ov_o;
        debug_add8 = 1;
      end
      RSUB8: begin 
        result_o = rsub8_o;
      end
      // SUB8: begin 
      //   result_o = sub8_o;
      // end
      KSUB8: begin 
        result_o = {ksub8_o[3][8:1],ksub8_o[2][8:1],ksub8_o[1][8:1],ksub8_o[0][8:1]};//ksub8_o;
        ov_o     = ksub8_o[3][0] || ksub8_o[2][0] || ksub8_o[1][0] || ksub8_o[0][0];//|ksub8_ov_o;
      end
      UKSUB8: begin 
        result_o = {uksub8_o[3][8:1],uksub8_o[2][8:1],uksub8_o[1][8:1],uksub8_o[0][8:1]};
        ov_o     = uksub8_o[3][0] || uksub8_o[2][0] || uksub8_o[1][0] || uksub8_o[0][0];
      end
      // ADD16: begin 
      //   result_o = add16_o;
      // end
      // SUB16: begin 
      //   result_o = sub16_o;
      // end
      RADD16: begin 
        result_o = radd16_o;
        //debug_add8 = 1;
      end
      // URADD16: begin 
      //   result_o = uradd16_o;
      // end
      URSUB16: begin 
        result_o = ursub16_o;
      end
      KADD16: begin 
        result_o = {kadd16_o[1][16:1],kadd16_o[0][16:1]};
        ov_o     = kadd16_o[1][0] || kadd16_o[0][0];//|kadd16_ov_o;
        //debug_add8 = 'd1;
      end
      UKADD16: begin 
        result_o = {ukadd16_o[1][16:1],ukadd16_o[0][16:1]};
        ov_o     = ukadd16_o[0][0] || ukadd16_o[1][0];//|ukadd16_ov_o;
      end
      RSUB16: begin 
        result_o = rsub16_o;
        debug_add8 = 1;
      end
      KSUB16: begin 
        result_o = {ksub16_o[1][16:1],ksub16_o[0][16:1]};
        ov_o     = ksub16_o[0][0] || ksub16_o[1][0];//|ksub16_ov_o;
      end
      UKSUB16: begin 
        result_o = {uksub16_o[1][16:1],uksub16_o[0][16:1]};
        ov_o     = uksub16_o[1][0] || uksub16_o[0][0];//|uksub16_ov_o;
      end
      SRA16: begin 
        result_o = sra16_o;
      end
      SRA16U: begin 
        result_o = sra16u_o;
        //debug_add8 = 'd1;
      end
      SRA8: begin 
        result_o = sra8_o;
      end
      SRA8U: begin 
        result_o = sra8u_o;
      end

      SRAI16: begin
        if (~operand_b_i[4]) begin
          result_o = sra16_o;//srai16_o; 
          //debug_add8 = 'd1;
         end 
        else begin 
          result_o = sra16u_o;//srai16u_o;
        end
      end

      SRAI8: begin
        if (operand_b_i[4:3] == 'b00) begin
          result_o = sra8_o;//srai8_o; 
         end 
        else if (operand_b_i[4:3] == 'b01) result_o = sra8u_o;//srai8u_o;
        else result_o = 'd0;
      end

      CRAS16:begin 
        result_o = cras16_o;
      end
      RCRAS16:begin 
        result_o = rcras16_o;
      end
      URCRAS16:begin 
        result_o = urcras16_o;
      end
      KCRAS16:begin 
        result_o   =  kcras16_o;
        ov_o       = |kcras16_ov;
        
      end
      UKCRAS16:begin 
        result_o = ukcras16_o;
        ov_o     = |ukcras16_ov;
        // debug_cmix = 1;
      end

      CRSA16:begin 
        result_o = crsa16_o;
      end
      RCRSA16:begin 
        result_o = rcrsa16_o;
      end
      URCRSA16:begin 
        result_o = urcrsa16_o;
      end
      KCRSA16:begin 
        result_o = kcrsa16_o;
        ov_o     = |kcrsa16_ov;
      end
      UKCRSA16:begin 
        result_o = ukcrsa16_o;
        ov_o     = |ukcrsa16_ov;
      end

      STAS16:begin 
        result_o = stas16_o;
      end
      RSTAS16:begin 
        result_o = rstas16_o;
      end
      URSTAS16:begin 
        result_o = urstas16_o;
      end
      KSTAS16:begin 
        result_o = kstas16_o;
        ov_o     = |kstas16_ov;
      end
      UKSTAS16:begin 
        result_o = ukstas16_o;
        ov_o     = |ukstas16_ov;
      end

      STSA16:begin 
        result_o = stsa16_o;
      end
      RSTSA16:begin 
        result_o = rstsa16_o;
      end
      URSTSA16:begin 
        result_o = urstsa16_o;
      end
      KSTSA16:begin 
        result_o = kstsa16_o;
        ov_o     = |kstsa16_ov;
      end
      UKSTSA16:begin 
        result_o = ukstsa16_o;
        ov_o     = |ukstsa16_ov;
      end
      SRL16U:begin 
        result_o = srl16u_o;
      end
      SRL16:begin 
        result_o = srl16_o;
      end

      SRL8U:begin 
        result_o = srl8u_o;
      end
      SRL8:begin 
        result_o = srl8_o;
      end

      SRLI16:begin 
        if (~operand_b_i[4]) begin
          result_o = srl16_o;//srli16_o;
        end
        else result_o = srl16u_o;//srli16u_o;
      end

      SRLI8:begin 
        if (operand_b_i[4:3] == 2'b00) begin
          result_o = srl8_o;
        end
        else if (operand_b_i[4:3] == 2'b01) result_o = srl8u_o;
      end

      SLL16:begin 
        result_o = sll16_o;
      end

      SLL8:begin 
        result_o = sll8_o;
      end

      KSLL16:begin 
        result_o = {ksll16_o[1][16:1],ksll16_o[0][16:1]};
        ov_o     = ksll16_o[1][0] || ksll16_o[0][0];//|ksll16_ov;
        //debug_add8 = 1;
      end
      KSLL8:begin 
        result_o = {ksll8_o[3][8:1],ksll8_o[2][8:1],ksll8_o[1][8:1],ksll8_o[0][8:1]};
        ov_o     = ksll8_o[3][0] || ksll8_o[2][0] || ksll8_o[1][0] || ksll8_o[0][0];//|ksll8_ov;
        //debug_add8 = 'd1;
      end

      KSLLI16:begin 
        if (!imm4u_sll_en) begin
          result_o = sll16_o;//slli16_o;
        end
        else result_o = {ksll16_o[1][16:1],ksll16_o[0][16:1]};
        ov_o          = ksll16_o[1][0] || ksll16_o[0][0];
      end

      SLLI8:begin 
        if (imm3u_sll8_en == 'b00) begin
          result_o = sll8_o;//slli8_o;
        end
        else if (imm3u_sll8_en == 'b01) begin 
         result_o = {ksll8_o[3][8:1],ksll8_o[2][8:1],ksll8_o[1][8:1],ksll8_o[0][8:1]};//ksll8_o;
         ov_o     = ksll8_o[3][0] || ksll8_o[2][0] || ksll8_o[1][0] || ksll8_o[0][0];//|ksll8_ov;
       end
        else result_o = 'd0;
      end

      KSLRA16: begin
        if (operand_b_i[4] == 0) begin //$signed(operand_b_i[4:0]) >= 0) begin
          result_o = {ksll16_o[1][16:1],ksll16_o[0][16:1]};
        end
        else begin
          result_o = sra16kl_o;
        end
        ov_o     = ksll16_o[1][0] || ksll16_o[0][0];
      end
      KSLRA16U: begin 
        if (operand_b_i[4] == 0) begin //($signed(operand_b_i[4:0]) >= 0) begin
          result_o = {ksll16_o[1][16:1],ksll16_o[0][16:1]};
        end
        else begin
          result_o = sra16klu_o;
        end
        ov_o     = ksll16_o[1][0] || ksll16_o[0][0];
      end
      KSLRA8: begin
        if (operand_b_i[3] == 0) begin //$signed(operand_b_i[3:0]) >= 0) begin
          result_o = {ksll8_o[3][8:1],ksll8_o[2][8:1],ksll8_o[1][8:1],ksll8_o[0][8:1]};//ksll8_o;
        end
        else begin
          result_o = sra8kl_o;
        end
        ov_o     = ksll8_o[3][0] || ksll8_o[2][0] || ksll8_o[1][0] || ksll8_o[0][0];//|ksll8_ov;
      end

      KSLRA8U: begin
        if (operand_b_i[3] == 0) begin //$signed(operand_b_i[3:0]) >= 0) begin
          result_o = {ksll8_o[3][8:1],ksll8_o[2][8:1],ksll8_o[1][8:1],ksll8_o[0][8:1]};//ksll8_o;
        end
        else begin
          result_o = sra8klu_o;
        end
        ov_o     = ksll8_o[3][0] || ksll8_o[2][0] || ksll8_o[1][0] || ksll8_o[0][0];//|ksll8_ov;
      end

      CMPEQ16:begin 
        result_o = cmpeq16_o;
      end
      SCMPLT16:begin 
        result_o = scmplt16_o;
      end
      UCMPLT16:begin 
        result_o = ucmplt16_o;
      end
      SCMPLE16:begin 
        result_o = scmple16_o;
      end
      UCMPLE16:begin 
        result_o = ucmple16_o;
      end
      CMPEQ8:begin 
        result_o = cmpeq8_o;
      end
      SCMPLT8:begin 
        result_o = scmplt8_o;
      end
      UCMPLT8:begin 
        result_o = ucmplt8_o;
      end
      SCMPLE8:begin 
        result_o = scmple8_o;
      end
      UCMPLE8:begin 
        result_o = ucmple8_o;
      end
      SMUL16: begin
        {result64_o,result_o}= smul16_result ;
      end

      UMUL16: begin
        {result64_o,result_o}= umul16_result ;
        //debug_add8           = 'd1;
      end

      SMULX16: begin
        {result64_o,result_o}= {smtb16_result,smbt16_result};//smulx16_result ;
      end
      UMULX16: begin
        {result64_o,result_o}= umulx16_result ;
      end
      KHM16: begin
        result_o= khm16_result ;
        ov_o    = (operand_a_i[0*16+15:0*16] == 'h8000 && operand_b_i[0*16+15:0*16] == 'h8000) ? 'b1 :
                  (operand_a_i[1*16+15:1*16] == 'h8000 && operand_b_i[1*16+15:1*16] == 'h8000) ? 'b1 :
                  'b0;
      end
      KHMX16: begin
        result_o= khmx16_result ;
        ov_o    = (operand_a_i[0*16+15:0*16] == 'h8000 && operand_b_i[0*16+15:0*16] == 'h8000) ? 'b1 :
                  (operand_a_i[1*16+15:1*16] == 'h8000 && operand_b_i[1*16+15:1*16] == 'h8000) ? 'b1 :
                  'b0;
      end

      SMUL8: begin
        {result64_o,result_o}= smul8_result ;
      end

      UMUL8: begin
        {result64_o,result_o}= umul8_result ;
      end

      SMULX8: begin
        {result64_o,result_o}= smulx8_result ;
      end
      UMULX8: begin
        {result64_o,result_o}= umulx8_result ;
      end
      KHM8: begin
        result_o = khm8_result ;
        ov_o     = |khm8_result_ov;


      end
      KHMX8: begin
        result_o = khmx8_result ;
        ov_o     = (operand_a_i[0*8+7:0*8] == 'h80 && operand_b_i[1*8+7:1*8] == 'h80) ? 'b1 : 
                   (operand_a_i[1*8+7:1*8] == 'h80 && operand_b_i[0*8+7:0*8] == 'h80) ? 'b1 :
                   (operand_a_i[2*8+7:2*8] == 'h80 && operand_b_i[3*8+7:3*8] == 'h80) ? 'b1 :
                   (operand_a_i[3*8+7:3*8] == 'h80 && operand_b_i[2*8+7:2*8] == 'h80) ? 'b1 :
                   'b0;
      end

      SMIN16: begin
        result_o= smin16_o ;
      end

      UMIN16: begin
        result_o= umin16_o ;
      end

      SMAX16: begin
        result_o= smax16_o ;
      end

      UMAX16: begin
        result_o= umax16_o ;
      end

      SMIN8: begin
        result_o= smin8_o ;
      end

      UMIN8: begin
        result_o= umin8_o ;
      end

      SMAX8: begin
        result_o= smax8_o ;
      end

      UMAX8: begin
        result_o= umax8_o ;
      end

      ONEOP: begin
        if (operand_b_i[4:0] == 5'b10001) begin
          result_o = {kabs16_o[1][16:1],kabs16_o[0][16:1]} ;
          ov_o     = kabs16_o[1][0] || kabs16_o[0][0];//|kabs16_ov;
          //debug_add8 = 1;
        end
        else if (operand_b_i[4:0] == 'b11000) begin
          result_o = {operand_a_i[23:16],operand_a_i[31:24],
                      operand_a_i[7:0]  ,operand_a_i[15:8]};
        end
        else if (operand_b_i[4:0] == 'b01000) begin
          result_o = {sunpkd810_o};
        end
        else if (operand_b_i[4:0] == 'b01001) begin
          result_o = {sunpkd820_o};
        end
        else if (operand_b_i[4:0] == 'b01010) begin
          result_o = {sunpkd830_o};
        end
        else if (operand_b_i[4:0] == 'b01011) begin
          result_o = {sunpkd831_o};
        end
        else if (operand_b_i[4:0] == 'b10011) begin
          result_o = {sunpkd832_o};
        end

        else if (operand_b_i[4:0] == 'b01100) begin
          result_o = {zunpkd810_o};
        end
        else if (operand_b_i[4:0] == 'b01101) begin
          result_o = {zunpkd820_o};
        end
        else if (operand_b_i[4:0] == 'b01110) begin
          result_o = {zunpkd830_o};
        end
        else if (operand_b_i[4:0] == 'b01111) begin
          result_o = {zunpkd831_o};
        end
        else if (operand_b_i[4:0] == 'b10111) begin
          result_o = {zunpkd832_o};
        end
        else if (operand_b_i[4:0] == 'b10000) begin
          result_o = {kabs8_o[3][8:1],kabs8_o[2][8:1],kabs8_o[1][8:1],kabs8_o[0][8:1]};
          ov_o     = kabs8_o[3][0] || kabs8_o[2][0] || kabs8_o[1][0] || kabs8_o[0][0];//|kabs8_ov;
        end
        else if (operand_b_i[4:0] == 'b10010) begin
        end
        else if (operand_b_i[4:0] == 'b10100) begin
          result_o = kabsw_o;
          ov_o     = ($signed(kabsw_t2) >= 0) ? 'd0:
                     operand_a_i[31:0] == 32'h80000000 ? 'd1: 'd0; 
        end
        else begin 
          result_o = insb_o;
          debug_add8 = 1;
        end
      end

      ONEOP2: begin
        if (operand_b_i == 'b01000) begin
        // if (operand_b_i[4:0] == 'b01000) begin
          result_o= cnt_clrs16_o ;
        end
        else if(operand_b_i[4:0] == 'b01001) begin
        // else if(operand_b_i[4:0] == 'b01001) begin
          result_o= cnt_clz16_o ;
        end
        else if(operand_b_i[4:0] == 'b00001) begin
          result_o= cnt_clz8_o ;
        end
        else if(operand_b_i[4:0] == 'b11001) begin
          result_o= cnt_clz32_o ;
        end
        else if(operand_b_i[4:0] == 'b11000) begin
          result_o= cnt_clrs32_o ;
        end
        else result_o = cnt_clrs8_o;
      end
      PKBT16: begin
        result_o = {operand_a_i[15:0],operand_b_i[31:16]};
        debug_add8 = 1;
      end

      // PKBB16: begin
      //   result_o = {operand_a_i[15:0],operand_b_i[15:0]};
      //   //debug_add8 = 1;
      // end

      // PKTT16: begin
      //   result_o = {operand_a_i[31:16],operand_b_i[31:16]};
      // end

      PKTB16: begin
        result_o = {operand_a_i[31:16],operand_b_i[15:0]};
      end

      SCLIP8: begin
        if (operand_b_i[4:3] == 'b00) begin
          result_o = sclip8_o;
          ov_o     = |sclip8_ov;
        end
        else if (operand_b_i[4:3] == 'b10) begin
          result_o = uclip8_o;
          ov_o     = |uclip8_ov;
        end
      end

      SCLIP16: begin
        if (operand_b_i[4] == 'b0) begin
          result_o = sclip16_o;
          ov_o     = $signed(operand_a_i[15:0        ]) > (2**imm4u_srai16 -1)   ? 'd1 :
                     $signed(operand_a_i[15:0        ]) < (-(2**imm4u_srai16))   ? 'd1 :
                     $signed(operand_a_i[16+15:16    ]) > (2**imm4u_srai16 -1)   ? 'd1 :
                     $signed(operand_a_i[16+15:16    ]) < (-(2**imm4u_srai16))   ? 'd1 :
                     'd0;
        end
        else begin
          result_o = uclip16_o;
          ov_o     =  $signed(operand_a_i[15:0        ]) > (2**imm4u_srai16 -1) ? ('d1):
                      $signed(operand_a_i[15:0        ]) < (0)   ? ('d1 ):
                      $signed(operand_a_i[16+15:16    ]) > (2**imm4u_srai16 -1) ? ('d1):
                      $signed(operand_a_i[16+15:16    ]) < (0)   ? ('d1 ):
                      'd0; 
        end
      end

      SMMUL: begin
        result_o = smmul_result;
      end

      SMMULU: begin
        result_o = smmulu_result;
      end

      KMMAC: begin
        result_o = kmmac_result;
        ov_o     = kmmact2_result[0];//|kmmac_result_ov;
        debug_add8  = 'd1;
      end

      KMMACU: begin
        result_o = kmmacu_result;
        ov_o     = kmmacut3_result[0];//|kmmacu_result_ov;
      end

      KMMSB: begin
        result_o = kmmsb_result;
        ov_o     = kmmsbt2_result[0];//|kmmsb_result_ov;
      end

      KMMSBU: begin
        result_o = kmmsbu_result;
        ov_o     = kmmsbut3_result[0];//|kmmsbu_result_ov;
      end

      KWMMUL: begin
        result_o = kwmmul_result;
        ov_o     = |kwmmul_result_ov;
      end

      KWMMULU: begin
        result_o = kwmmulu_result;
        ov_o     = |kwmmul_result_ov;
      end

      SMMWB: begin
        result_o = smmwb_result;
      end

      SMMWBU: begin
        result_o = smmwbu_result;
      end

      SMMWT: begin
        result_o = smmwt_result;
      end

      SMMWTU: begin
        result_o = smmwtu_result;
      end

      KMMAWB: begin
        result_o = kmmawb_result;
        ov_o     = kmmawbt2_result[0];//|kmmawb_result_ov;
      end

      KMMAWBU: begin
        result_o = kmmawbu_result;
        ov_o     = kmmawbut2_result[0];//|kmmawbu_result_ov;
      end

      KMMAWT: begin
        result_o = kmmawt_result;
        ov_o     = kmmawtt2_result[0];//|kmmawt_result_ov;
      end

      KMMAWTU: begin
        result_o = kmmawtu_result;
        ov_o     = kmmawtut2_result[0];//|kmmawtu_result_ov;
      end

      KMMWB2: begin
        result_o = kmmwb2_result;
        ov_o     = |kmmwb2_result_ov;
      end

      KMMWB2U: begin
        result_o = kmmwb2u_result;
        ov_o     = |kmmwb2_result_ov;
      end

      KMMWT2: begin
        result_o = kmmwt2_result[32:1];
        ov_o     = kmmwt2_result[0];//|kmmwt2_result_ov;
      end

      KMMWT2U: begin
        result_o = kmmwt2u_result[32:1];
        ov_o     = kmmwt2u_result[0];//operand_a_i     [31   :0 ] == 32'h80000000 && operand_b_i[31   :     16] == 16'h8000 ? 1'b1 :1'b0;
      end

      KMMAWB2: begin
        result_o = kmmawb2_result;
        ov_o     = |kmmawb2_result_ov;
      end

      KMMAWB2U: begin
        result_o = kmmawb2u_result;
        ov_o     = |kmmawb2u_result_ov;
      end

      KMMAWT2: begin
        result_o = kmmawt2_result;
        ov_o     = |kmmawt2_result_ov;
      end

      KMMAWT2U: begin
        result_o = kmmawt2u_result;
        ov_o     = |kmmawt2u_result_ov;
      end

      SMBB16: begin
        result_o = smbb16_result;
      end

      SMBT16: begin
        result_o = smbt16_result;
      end

      SMTT16: begin
        result_o = smtt16_result;
      end

      KMDA: begin
        result_o = kmda_result;
        ov_o     = |kmda_result_ov;
      end

      KMXDA: begin
        result_o = kmxda_result;
        ov_o     = |kmda_result_ov;
      end

      SMDS: begin
        result_o = smds_result;
      end

      SMDRS: begin
        result_o = smdrs_result;
      end

      SMXDS: begin
        result_o = smxds_result;
      end

      KMABB: begin
        result_o = kmabb_result;
        ov_o     = |kmabb_result_ov;
      end

      KMABT: begin
        result_o = kmabt_result;
        ov_o     = |kmabt_result_ov;
      end

      KMATT: begin
        result_o = kmatt_result;
        ov_o     = |kmatt_result_ov;
      end

      KMADA: begin
        result_o = kmada_result;
        ov_o     = |kmada_result_ov;
      end

      KMAXDA: begin
        result_o = kmaxda_result;
        ov_o     = |kmaxda_result_ov;
      end

      KMADS: begin
        result_o = kmads_result;
        ov_o     = |kmads_result_ov;
      end

      KMADRS: begin
        result_o = kmadrs_result;
        ov_o     = |kmadrs_result_ov;
      end

      KMAXDS: begin
        result_o = kmaxds_result;
        ov_o     = |kmaxds_result_ov;
      end

      KMSDA: begin
        result_o = kmsda_result;
        ov_o     = |kmsda_result_ov;
      end

      KMSXDA: begin
        result_o = kmsxda_result;
        ov_o     = |kmsxda_result_ov;
      end

      SMAL: begin
        {result64_o,result_o} = smal_result;
        debug_add8            = 1;
      end

      SCLIP32: begin
        result_o = sclip32_o;
        ov_o        = $signed(operand_a_i[31:0]) > (2**alu_imm_i -1)   ? 'd1 :
                      $signed(operand_a_i[31:0]) < (-(2**alu_imm_i))   ? 'd1 :
                      'd0;
      end

      UCLIP32: begin
        result_o = uclip32_o;
        ov_o     = $signed(operand_a_i[31:0]) > (2**alu_imm_i -1) ? 'd1 :
                   $signed(operand_a_i[31:0]) < (0)                   ? 'd1 : 
                  'd0;
      end
      PBSAD: begin
        result_o = pbsadt1_o;//pbsad_o;
      end
      PBSADA: begin
        result_o = pbsada_o;
      end

      SMAQA: begin
        result_o = smaqa_result;
      end

      UMAQA: begin
        result_o = umaqa_result;
      end

      SMAQASU: begin
        result_o = smaqasu_result;
      end
      KADDH: begin
        result_o = kaddh_o;
        ov_o     =  kadd16_o[0];//$signed(kaddh_t1[16:0]) > (MU15_1) ? 'd1 :
                    // $signed(kaddh_t1[16:0]) < ((MU15))  ? 'd1:
                    // 'd0;
      end 

      KSUBH: begin
        result_o = ksubh_o;
        ov_o     = ksub16_o[0][0];// $signed(ksubh_t1[16:0]) > (MU15_1) ? 'd1 :
                    // $signed(ksubh_t1[16:0]) < ((MU15))  ? 'd1 :
                    // 'd0;
      end 

      KHMBB: begin
        result_o = khmbb_o[32:1];
        ov_o     = khmbb_o[0];//(operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000) ? 
                   // 1'b1: 
                   // 1'b0;
      end 

      KHMBT: begin
        result_o = khmbt_o[32:1];
        ov_o     = khmbt_o[0];//(operand_a_i[15:0] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 
                    // 1'b1 : 
                    // 1'b0;
      end 

      KHMTT: begin
        result_o = khmtt_o[32:1];
        ov_o     = khmtt_o[0];//(operand_a_i[31:16] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 
                    // 1'b1 : 
                    // 1'b0;
      end 

      UKADDH: begin
        result_o = ukaddh_o;
        ov_o     = ukadd16_o[0];//(ukaddh_t1[16:0]) > ((2**16)-1) ? (1'b1):
                   // 1'b0;
      end 

      UKSUBH: begin
        result_o = uksubh_o;
        ov_o     = uksub16_o[0][0];//$signed(uksubh_t1) > ((2**16)-1) ? 'd1:
                   // $signed(uksubh_t1) < 0           ? 'd1:
                   // 'd0;
      end 

      KADDW: begin
        result_o = kaddw_o;
        ov_o     =  kaddw_t4[0];//$signed(kaddw_t3) > (mul31_1) ? 'd1 :
                    //$signed(kaddw_t3) < ((MU31))  ? 'd1 :
                    //'d0;
      end 

      UKADDW: begin
        result_o = ukaddw_o;
        ov_o     = ukaddw_t2[0];//(ukaddw_t1) > ((2**32)-1) ? 'd1 : 'd0;
      end 

      KSUBW: begin
        result_o = ksubw_o;
        ov_o     = ksubw_t4[0];//$signed(ksubw_t3) > (mul31_1) ? (1'b1) :
                   //$signed(ksubw_t3) < ((MU31))  ? (1'b1)  :
                   //1'b0;
      end 

      UKSUBW: begin
        result_o = uksubw_o;
        ov_o     = uksubw_t2[0];//$signed(uksubw_t1) < (0)  ? ('d1)  :
                   //'d0;
      end 
      KDMBB: begin
        result_o = kdmabb_t1;//kdmbb_o;
        ov_o     =  (operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000) ? 1'b1 :
                    'd0;
      end

      KDMBT: begin
        result_o = kdmabt_t1;//kdmbt_o;
        // debug_cmix = 1'b1;
        ov_o     =  (operand_a_i[15:0] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 1'b1 :
                    'd0;
      end

      KDMTT: begin
        result_o = kdmatt_t1;//kdmtt_o;
        ov_o     =  (operand_a_i[31:16] == 16'h8000) && (operand_b_i[31:16] == 16'h8000) ? 1'b1 :
                    'd0;
      end

      KSLRAW: begin
        result_o       = kslraw_o;
        ov_o           = ksllw_t1[0];//|kslraw_ov;
      end

      KSLRAWU: begin
        result_o        = kslrawu_o;
        ov_o           = ksllw_t1[0];//|kslraw_ov;
      end

      KSLLW: begin
        result_o = ksllw_t1[32:1];//ksllw_o;
        ov_o     = ksllw_t1[0];//|kslraw_ov;//ksllw_ov;
        //debug_add8 = 1'b1;
      end

      KSLLIW: begin
        result_o = ksllw_t1[32:1];//kslliw_o;
        ov_o     = ksllw_t1[0];//|kslraw_ov;//ksllw_ov;
        debug_add8 = 1;
      end

      KDMABB: begin
        result_o = kdmabb_t3[32:1];//kdmabb_o;
        ov_o     =  kdmabb_t3[0] || ((operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000));
                    //(operand_a_i[15:0] == 16'h8000) && (operand_b_i[15:0] == 16'h8000) ? 1'b1 :
                    //$signed(kdmabb_t2) > (MU31_1)  ? 'd1: 
                    //$signed(kdmabb_t2) < ((MU31)) ? 'd1 :
                    //'d0;
        debug_add8 = 1;
      end
      KDMABT: begin
        result_o = kdmabt_t3[32:1];//kdmabt_o;
        ov_o     = kdmabt_t3[0] || (operand_a_i[15:0] == 16'h8000) && (operand_b_i[31:16] == 16'h8000);// ? 1'b1 :
                    // $signed(kdmabt_t2) > (MU31_1)  ? (1'b1)   : 
                    // $signed(kdmabt_t2) < ((MU31)) ? (1'b1)   :
                    // 1'b0;
        // debug_cmix = 1'b1;
      end

      KDMATT: begin
        result_o = kdmatt_t3[32:1];//kdmatt_o;
        ov_o     = kdmatt_t3[0] || (operand_a_i[31:16] == 16'h8000) && (operand_b_i[31:16] == 16'h8000);// ? 1'b1 :
                    // $signed(kdmatt_t2) > (MU31_1)  ? 'd1: 
                    // $signed(kdmatt_t2) < ((MU31)) ? 'd1 :
                    // 'd0;
      end
      RADDW: begin
        result_o = raddw_o;
        //debug_add8 = 1;
      end
      URADDW: begin
        result_o = uraddw_o;
        //debug_add8 = 1;
      end

      RSUBW: begin
        result_o = rsubw_o;
      end

      URSUBW: begin
        result_o = ursubw_o;
      end

      MSUBR32: begin
        result_o = msubr32_o;
      end

      MADDR32: begin
        result_o = maddr32_o;
      end

      MULR64: begin
        {result64_o,result_o} = msubr32_t1;//mulr64_o;
      end

      MULSR64: begin
        {result64_o,result_o} = smmult_result;//mulsr64_o;
      end
      BITREV: begin
        result_o = bitrev_o;
        // debug_cmix = 'b1;
      end
      AVE: begin
        result_o = ave_o;
      end

      SRAU,SRAIU: begin
        result_o = srau_o;
        debug_add8 = 1;
      end

      // SRAIU: begin
      //   result_o = srau_o;
      // end

      REV: begin
        result_o = rev31;
      end

      REV8H: begin
        result_o = {operand_a_i[23:16],operand_a_i[31:24],operand_a_i[7:0],operand_a_i[15:8]};
      end

      BITREVI: begin
        result_o = bitrev_o;
      end

      WEXT,FSR: begin
        result_o = wext_o;
        debug_add8 = 1;
      end

      WEXTI,FSRI: begin
        result_o = wext_o;
      end

      PACK: begin 
        result_o = {operand_b_i[15:0],operand_a_i[15:0]};
      end
      PACKU: begin 
        result_o = {operand_b_i[31:16],operand_a_i[31:16]};
      end
      // MAXW: begin
      //   result_o = max_o;
      // end

      // MINW: begin
      //   result_o = min_o;
      // end

      CMIX: begin
        result_o = bpick_o;
      end

      BPICK: begin
        result_o = bpick_o;
      end

      CLZ: begin
        result_o = cnt_clz32_o;
      end

      ADD64: begin
        {result64_o,result_o} = operand_a64_i + operand_b64_i;//add64_o;
        //debug_add8            = 1;
      end

      RADD64: begin
        {result64_o,result_o} = {result_test[64],result_test} >> 1;//$signed(result_test) >>> 1;//rsub64_o;//radd64_o;
        debug_add8            = 1;
      end

      URADD64: begin
        {result64_o,result_o} = uradd64_o;
      end

      KADD64: begin
        {result64_o,result_o} = kadd64_o[64:1];
        debug_add8            = 1;
        // ov_o                  = $signed(radd64_t1) > (2**63-1)  ? 'd1 :
        //                         $signed(radd64_t1) < (-(2**63)) ? 'd1  : 'd0;
        ov_o                  = kadd64_o[0] ;//$signed(result_test) > (2**63-1)  ? 'd1 :
                                //$signed(result_test) < (-(2**63)) ? 'd1  : 'd0;
      end

      UKADD64: begin
        {result64_o,result_o} = ukadd64_o[64:1];
        ov_o                  = ukadd64_o[0]   ;////uradd64_t1 > (2**64-1) ? (1'b1) :
                                //      1'b0;
        // debug_add8            = 1;
      end

      SUB64: begin
        {result64_o,result_o} = operand_a64_i - operand_b64_i;//sub64_o;
      end

      RSUB64: begin
        {result64_o,result_o} = rsub64_o;
        // result_o                = rsub64_o[31:0];
        // test_rsub64_h           = rsub64_o[63:32];
        // result64_o              = rsub64_o[63:32];
        debug_add8              = 1;
      end

      URSUB64: begin
        {result64_o,result_o} = ursub64_o;
      end

      KSUB64: begin
        {result64_o,result_o} = ksub64_o[64:1];
        ov_o                  = ksub64_o[0];//ksub64_ov;
        debug_add8            = 1;
      end

      UKSUB64: begin
        {result64_o,result_o} = uksub64_o[64:1];
        ov_o                  = uksub64_o[0];//$signed(ursub64_t1) < (0) ? ('d1) :
                                //1'b1;
        debug_add8            = 1'b1;
      end

      SMAR64: begin
        {result64_o,result_o} = smar64_o;
        debug_add8            = 1'b1;
      end

      SMSR64: begin
        {result64_o,result_o} = smsr64_o;
      end

      UMAR64: begin
        {result64_o,result_o} = umar64_o;
      end

      UMSR64: begin
        {result64_o,result_o} = umsr64_o;
      end

      KMAR64: begin
        {result64_o,result_o} = kmar64_o[64:1];
        ov_o                  = kmar64_o[0];
        debug_add8            = 1;
      end

      KMSR64: begin
        {result64_o,result_o} = kmsr64_o[64:1];
        ov_o     =  kmsr64_o[0];//$signed(kmsr64_t3) > (2**63-1)  ? 'd1 :
                    //$signed(kmsr64_t3) < (-(2**63)) ? 'd1 :
                    //'d0;
        debug_add8 = 1;
      end

      UKMAR64: begin
        {result64_o,result_o} = ukmar64_o[64:1];
        ov_o                  = ukmar64_o[0];
        //debug_add8            = 1;
      end

      UKMSR64: begin
        {result64_o,result_o} = ukmsr64_o[64:1];
        ov_o                  = ukmsr64_o[0];
        debug_add8 =1;
      end

      SMALBB: begin
        {result64_o,result_o} = smalbb64_o;
      end 

      SMALBT: begin
        {result64_o,result_o} = smalbt64_o;
      end 

      SMALTT: begin
        {result64_o,result_o} = smaltt64_o;
      end    

      SMALDA: begin
        {result64_o,result_o} = smalda64_o;
      end 

      SMALXDA: begin
        {result64_o,result_o} = smalxda64_o;
      end 

      SMALDS: begin
        {result64_o,result_o} = smalds64_o;
      end 

      SMALDRS: begin
        {result64_o,result_o} = smaldrs64_o;
      end 

      SMALXDS: begin
        {result64_o,result_o} = smalxds64_o;
      end

      SMSLDA: begin
        {result64_o,result_o} = smslda64_o;
      end

      SMSLXDA: begin
        {result64_o,result_o} = smslxda64_o;
      end

      // Shift Operations
      ALU_ADD, ALU_ADDR, ALU_ADDU, ALU_ADDUR,
      ALU_SUB, ALU_SUBR, ALU_SUBU, ALU_SUBUR,
      ALU_SLL,
      ALU_SRL, ALU_SRA,
      ALU_ROR,
      ADD8,URADD8,ADD16,URADD16,SUB8,SUB16      :
      result_o = shift_result;

      // bit manipulation instructions
      ALU_BINS, ALU_BEXT, ALU_BEXTU: result_o = bextins_result;

      ALU_BCLR: result_o = bclr_result;
      ALU_BSET: result_o = bset_result;

      // Bit reverse instruction
      ALU_BREV: result_o = reverse_result;

      // pack and shuffle operations
      ALU_SHUF, ALU_SHUF2, ALU_PCKLO, ALU_PCKHI, ALU_EXT, ALU_EXTS, ALU_INS: result_o = pack_result;

      // Min/Max/Ins
      ALU_MIN, ALU_MINU, ALU_MAX, ALU_MAXU: result_o = result_minmax;

      //Abs/Cplxconj , ABS is used to do 0 - A for Cplxconj
      ALU_ABS: result_o = is_clpx_i ? {adder_result[31:16], operand_a_i[15:0]} : result_minmax;

      ALU_CLIP, ALU_CLIPU: result_o = clip_result;

      // Comparison Operations
      ALU_EQ, ALU_NE, ALU_GTU, ALU_GEU, ALU_LTU, ALU_LEU, ALU_GTS, ALU_GES, ALU_LTS, ALU_LES: begin
        result_o[31:24] = {8{cmp_result[3]}};
        result_o[23:16] = {8{cmp_result[2]}};
        result_o[15:8]  = {8{cmp_result[1]}};
        result_o[7:0]   = {8{cmp_result[0]}};
      end
      // Non-vector comparisons
      ALU_SLTS, ALU_SLTU, ALU_SLETS, ALU_SLETU: result_o = {31'b0, comparison_result_o};

      ALU_FF1, ALU_FL1, ALU_CLB, ALU_CNT: result_o = {26'h0, bitop_result[5:0]};

      // Division Unit Commands
      ALU_DIV, ALU_DIVU, ALU_REM, ALU_REMU: result_o = result_div;

      default: ;  // default case to suppress unique warning
    endcase
  end

  assign ready_o = div_ready;

endmodule
