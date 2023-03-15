// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_top_verilator.h for the primary calling header

#include "Vtb_top_verilator.h"
#include "Vtb_top_verilator__Syms.h"

#include "verilated_dpi.h"

void Vtb_top_verilator::_settle__TOP__2(Vtb_top_verilator__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_settle__TOP__2\n"); );
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_rdata_ext
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result 
        = ((0xff000000U & (((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through))
                             ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result 
                                >> 0x18U) : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                             >> 0x18U)) 
                           << 0x18U)) | ((0xff0000U 
                                          & (((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through))
                                               ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result 
                                                  >> 0x10U)
                                               : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                  >> 0x10U)) 
                                             << 0x10U)) 
                                         | ((0xff00U 
                                             & (((2U 
                                                  & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through))
                                                  ? 
                                                 (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result 
                                                  >> 8U)
                                                  : 
                                                 (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                  >> 8U)) 
                                                << 8U)) 
                                            | (0xffU 
                                               & ((1U 
                                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through))
                                                   ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result
                                                   : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex)))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result 
        = (0x3ffffffffULL & VL_SHIFTRS_QQI(34,34,5, 
                                           (((QData)((IData)(
                                                             ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith) 
                                                              & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                                                  ? (IData)(
                                                                            (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                                             >> 0x21U))
                                                                  : (IData)(
                                                                            (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                                             >> 0x1fU)))))) 
                                             << 0x21U) 
                                            | (((QData)((IData)(
                                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith) 
                                                                 & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                                                     ? (IData)(
                                                                               (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                                                >> 0x20U))
                                                                     : (IData)(
                                                                               (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                                                >> 0x1fU)))))) 
                                                << 0x20U) 
                                               | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac)))), 
                                           ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                             ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm)
                                             : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS;
    if ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS))) {
        if (((6U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)) 
             & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = 1U;
        }
    } else {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = 2U;
        } else {
            if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = 3U;
            } else {
                if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = 4U;
                } else {
                    if ((4U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = 0U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result 
        = (0x3fU & ((0x1fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4)) 
                    + (0x1fU & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4) 
                                >> 5U))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__branch_in_ex) 
           & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
              >> 3U));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result 
        = ((0xff000000U & ((IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                    >> 0x1cU)) << 0x18U)) 
           | ((0xff0000U & ((IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                     >> 0x13U)) << 0x10U)) 
              | ((0xff00U & ((IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                      >> 0xaU)) << 8U)) 
                 | (0xffU & (IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                     >> 1U))))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid)
            ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift)
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result = 0U;
    if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))) {
        if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))) {
            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                    = (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result);
            }
        } else {
            if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))) {
                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex) {
                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                            = ((0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result) 
                               | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result) 
                                  << 0x10U));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                            = ((0xffff0000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result) 
                               | (0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex));
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                            = ((0xffff0000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result) 
                               | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                            = ((0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result) 
                               | (0xffff0000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex));
                    }
                } else {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                        = (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_result);
                }
            } else {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
                    = ((((VL_EXTENDS_II(32,18, (0x3ffffU 
                                                & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[0U])) 
                          + VL_EXTENDS_II(32,18, (0x3ffffU 
                                                  & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                      << 0xeU) 
                                                     | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[0U] 
                                                        >> 0x12U))))) 
                         + VL_EXTENDS_II(32,18, (0x3ffffU 
                                                 & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[2U] 
                                                     << 0x1cU) 
                                                    | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                       >> 4U))))) 
                        + VL_EXTENDS_II(32,18, (0x3ffffU 
                                                & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[2U] 
                                                    << 0xaU) 
                                                   | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                      >> 0x16U))))) 
                       + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex);
            }
        }
    } else {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result 
            = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))
                ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result)
                : ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex 
                    + (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex 
                       & (- (IData)((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))) 
                   + VL_MULS_III(32,32,32, (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex 
                                            ^ (- (IData)(
                                                         (1U 
                                                          == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))))), vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex)));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S 
        = (((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP 
             == vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP) 
            | ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP 
                > vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP) 
               ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP))) 
           & ((0U != vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP) 
              | (0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                  >> 6U)))) {
        if ((0x20U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
            if ((0x10U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                              >> 3U)))) {
                    if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result 
                            = (0x3fU & ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                         ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                             ? ((1U 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes)
                                                 ? 
                                                (0x1fU 
                                                 & ((IData)(0x1fU) 
                                                    - 
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]))
                                                 : 0x20U)
                                             : ((1U 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes)
                                                 ? 
                                                (0x1fU 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U])
                                                 : 0x20U))
                                         : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                             ? ((1U 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes)
                                                 ? 
                                                ((0x1fU 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]) 
                                                 - (IData)(1U))
                                                 : 
                                                ((0x80000000U 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex)
                                                  ? 0x1fU
                                                  : 0U))
                                             : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result))));
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall = 0U;
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id)))) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall = 0U;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n = 0U;
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                         & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n = 1U;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                      >> 3U)))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if ((1U & (~ 
                                                   ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                                    & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal = 0U;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                      >> 3U)))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack = 1U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                      >> 3U)))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask = 0U;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                      >> 3U)))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out 
                                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out 
                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                      >> 3U)))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec 
                                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec 
                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n = 0U;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n = 0U;
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if ((1U & (~ 
                                                   ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                                    & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n = 1U;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = 2U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = 3U;
                                } else {
                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = 0xbU;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = 1U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause 
                                                = (0x20U 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl));
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause 
                                = (0x20U | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl));
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if = 1U;
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if = 1U;
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if = 1U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 1U;
                        }
                    }
                } else {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 1U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 1U;
                                } else {
                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 1U;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 1U;
                    }
                }
            } else {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 1U;
                        }
                    }
                } else {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause 
                                    = (1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)));
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 1U;
                                } else {
                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause 
                                            = (1U & 
                                               (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause 
                                    = (1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)));
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = 1U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                                } else {
                                    if (((((((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) 
                                               | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec)) 
                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec)) 
                                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec)) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec)) 
                                           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status)) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec)) 
                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec))) {
                                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                                        } else {
                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = 0U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 1U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 2U;
                    }
                }
            } else {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 2U;
                    } else {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 3U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 3U;
                            }
                        }
                    }
                } else {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 0U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id 
                                    = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                        ? 3U : 0U);
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id 
                                        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                            ? 3U : 0U);
                                } else {
                                    if (((((((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) 
                                               | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec)) 
                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec)) 
                                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec)) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec)) 
                                           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status)) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec)) 
                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec))) {
                                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 0U;
                                        } else {
                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id 
                                                    = 
                                                    ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                                      ? 3U
                                                      : 0U);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = 1U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause = 0U;
    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                  >> 4U)))) {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                          >> 2U)))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause 
                                = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex)
                                    ? 5U : 7U);
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause = 1U;
                            }
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex)))) {
                            if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id)))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause 
                                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause 
                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
    if ((0x10U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
    } else {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                    }
                } else {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                }
            } else {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 1U;
                                    if ((1U & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))))) {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                                        }
                                    }
                                } else {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                                }
                            }
                        }
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
                    }
                }
            } else {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = 0U;
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b 
        = ((0x14U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left)
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_rev
            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round)
                ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result 
                   + (((((0x1cU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                         | (0x1dU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                        | (0x1eU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                       | (0x1fU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))
                       ? (0x7fffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
                                         >> 1U)) : 0U))
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex));
    if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
            = ((0xffff0000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
               | (0xffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                             >> 0x10U)));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
            = ((0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
               | (0xffff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                                 << 0x10U)));
    } else {
        if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
                = ((0xffffff00U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
                   | (0xffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                               >> 0x18U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
                = ((0xffff00ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
                   | (0xff00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                                 >> 8U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
                = ((0xff00ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
                   | (0xff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                                   << 8U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
                = ((0xffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left) 
                   | (0xff000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt 
                                     << 0x18U)));
        } else {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left 
                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt;
        }
    }
    vlTOPp->__Vtableidx2 = (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready) 
                             << 5U) | ((0x10U & ((~ (IData)(
                                                            (0U 
                                                             != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP)))) 
                                                 << 4U)) 
                                       | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S) 
                                           << 3U) | 
                                          (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid) 
                                            << 2U) 
                                           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SP)))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S 
        = vlTOPp->__Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S
        [vlTOPp->__Vtableidx2];
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n = 3U;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause) {
        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n = 3U;
        }
    } else {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n = 3U;
        } else {
            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_dret_id) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n 
                    = (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q);
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_q;
    if ((1U & (~ ((((((((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                        | (2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                       | (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                      | (0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                     | (0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                    | (0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                   | (0x340U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                  | (0x341U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))))) {
        if (((((((((0x342U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                   | (0x7b0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                  | (0x7b1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                 | (0x7b2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                | (0x7b3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
               | (0x800U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (0x801U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x802U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
            if ((0x342U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n 
                        = ((0x20U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                     >> 0x1aU)) | (0x1fU 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int));
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause) {
        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n 
                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause;
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q;
    if (((((((((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
               | (2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
            | (0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
           | (0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
          | (0x340U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
         | (0x341U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
        if ((1U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
            if ((2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if ((3U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                    if ((0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                                = ((0x40U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                             << 6U)) 
                                   | ((0x20U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                                << 2U)) 
                                      | ((0x10U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int) 
                                         | ((8U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                                   >> 4U)) 
                                            | ((6U 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                                   >> 0xaU)) 
                                               | (1U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                                     >> 0x11U)))))));
                        }
                    }
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause) {
        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = ((0x77U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n)) 
                   | (8U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                            >> 2U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = (0x5fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = (6U | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n));
        }
    } else {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = ((0x5fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n)) 
                   | (0x20U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                               << 2U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = (8U | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n 
                = (6U | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n));
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id;
    if (((((((((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
               | (2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
            | (0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
           | (0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
          | (0x340U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
         | (0x341U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
        if ((1U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
            if ((2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if ((3U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                    if ((0x300U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                        if ((0x304U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                            if ((0x305U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                                if ((0x340U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n 
                                            = (0xfffffffeU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    } else {
        if (((((((((0x342U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                   | (0x7b0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                  | (0x7b1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                 | (0x7b2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                | (0x7b3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
               | (0x800U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (0x801U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x802U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
            if ((0x342U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if ((0x7b0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                    if ((0x7b1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n 
                                = (0xfffffffeU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int);
                        }
                    }
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc 
                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q;
        } else {
            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id;
            }
        }
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n 
                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc;
        } else {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n 
                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc;
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id 
        = ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_q))
            ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = 0U;
    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = 1U;
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = 1U;
    }
    if (((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex)) 
          | ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb)) 
             & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb))) 
         & ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id) 
              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id)) 
             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id)) 
            | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding) 
                & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we) 
                   & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned)))) 
               & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex) 
                  == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id)))))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = 1U;
    }
    if (((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn)) 
         & ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb) 
              & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_wb_is_reg_a_id)) 
             | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex) 
                & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id))) 
            | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_fw) 
               & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_alu_is_reg_a_id))))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = 1U;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall = 0U;
    if (((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex)) 
          | ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb)) 
             & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb))) 
         & ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id) 
              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id)) 
             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id)) 
            | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding) 
                & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we) 
                   & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned)))) 
               & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex) 
                  == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id)))))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall = 1U;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax 
        = ((0xff000000U & (((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax))
                             ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                >> 0x18U) : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b 
                                             >> 0x18U)) 
                           << 0x18U)) | ((0xff0000U 
                                          & (((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax))
                                               ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                                  >> 0x10U)
                                               : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b 
                                                  >> 0x10U)) 
                                             << 0x10U)) 
                                         | ((0xff00U 
                                             & (((2U 
                                                  & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax))
                                                  ? 
                                                 (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                                  >> 8U)
                                                  : 
                                                 (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b 
                                                  >> 8U)) 
                                                << 8U)) 
                                            | (0xffU 
                                               & ((1U 
                                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax))
                                                   ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex
                                                   : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b)))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round)
            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex)
                ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex) 
                    << 0x10U) | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex))
                : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                    << 0x18U) | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                                  << 0x10U) | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                                                << 8U) 
                                               | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex)))))
            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left)
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt));
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DN 
            = (0x3fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SN 
            = (1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                     >> 1U));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SN 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DN = 0U;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SN 
            = (1U & ((((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result)) 
                       | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                          >> 1U)) & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                     & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                         >> 0x1fU) ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed))));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D = 0U;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex;
    } else {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DN 
            = (0x3fU & ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP))
                         ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP) 
                            - (IData)(1U)) : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP)));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SN 
            = (1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SN 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DN 
            = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S)
                ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S) 
                    << 0x1fU) | (0x7fffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP 
                                                >> 1U)))
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP);
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SN 
            = (1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP;
    }
    if ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q;
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id;
    } else {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr 
            = ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux))
                ? 0U : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q);
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux 
            = ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux))
                ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc 
        = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id))
            ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr 
               << 8U) : ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id))
                          ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id))
                              ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__dm_exception_addr_i)
                              : 0x1a110800U) : ((1U 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id))
                                                 ? 
                                                ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr 
                                                  << 8U) 
                                                 | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux) 
                                                    << 2U))
                                                 : 
                                                (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr 
                                                 << 8U))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_en 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__alu_en));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_int_en 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__mult_int_en));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_we_id 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_mem_we));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_we_id 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_req_id 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__data_req));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)
            ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready 
        = (((((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned)) 
              & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall))) 
             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall))) 
            & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access) 
                  & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex) 
                     & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex) 
                        >> 1U))))) & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready));
    if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
            = ((0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
               | (0xffff0000U & (VL_SHIFTRS_III(17,17,4, 
                                                ((0x10000U 
                                                  & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                      << 0x10U) 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                        >> 0xfU))) 
                                                 | (0xffffU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                       >> 0x10U))), 
                                                (0xfU 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int 
                                                    >> 0x10U))) 
                                 << 0x10U)));
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
            = ((0xffff0000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
               | (0xffffU & VL_SHIFTRS_III(17,17,4, 
                                           ((0xffff0000U 
                                             & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                 << 0x10U) 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                   << 1U))) 
                                            | (0xffffU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)), 
                                           (0xfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int))));
    } else {
        if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                = ((0xffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
                   | (0xff000000U & (VL_SHIFTRS_III(9,9,3, 
                                                    ((0x100U 
                                                      & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                          << 8U) 
                                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                            >> 0x17U))) 
                                                     | (0xffU 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                           >> 0x18U))), 
                                                    (7U 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int 
                                                        >> 0x18U))) 
                                     << 0x18U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                = ((0xff00ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
                   | (0xff0000U & (VL_SHIFTRS_III(9,9,3, 
                                                  ((0x1ff00U 
                                                    & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                        << 8U) 
                                                       & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                          >> 0xfU))) 
                                                   | (0xffU 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                         >> 0x10U))), 
                                                  (7U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int 
                                                      >> 0x10U))) 
                                   << 0x10U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                = ((0xffff00ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
                   | (0xff00U & (VL_SHIFTRS_III(9,9,3, 
                                                ((0x1ffff00U 
                                                  & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                      << 8U) 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                        >> 7U))) 
                                                 | (0xffU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                       >> 8U))), 
                                                (7U 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int 
                                                    >> 8U))) 
                                 << 8U)));
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                = ((0xffffff00U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result) 
                   | (0xffU & VL_SHIFTRS_III(9,9,3, 
                                             ((0xffffff00U 
                                               & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                   << 8U) 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                     << 1U))) 
                                              | (0xffU 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)), 
                                             (7U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int))));
        } else {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                = (IData)((((0x26U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                             ? (((QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)) 
                                 << 0x20U) | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)))
                             : (((QData)((IData)((- (IData)(
                                                            ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                             & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                                >> 0x1fU)))))) 
                                 << 0x20U) | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)))) 
                           >> (0x1fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int)));
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DN 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S)
            ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                      & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                          >> 0x1fU) ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))
                ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                   + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D)
                : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                   - vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D))
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec 
        = ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn)) 
           | (1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id 
        = (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode 
        = (1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                 >> 0xfU));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 1U;
    if ((0x10U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0U;
    } else {
        if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 3U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        }
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xdU;
                    }
                } else {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                            = (((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q) 
                                  | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                 | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec))) 
                                | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q))
                                ? 0xbU : 0xcU);
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 3U;
                        } else {
                            if ((4U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q)) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 4U;
                            }
                        }
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 5U;
                    }
                }
            } else {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                        if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 2U;
                            } else {
                                if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode) 
                                     & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec))) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 1U;
                                } else {
                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = 3U;
                                    }
                                }
                            }
                        }
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 5U;
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 5U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id 
                                = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                    ? 4U : 5U);
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id 
                                    = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                        ? 4U : 6U);
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_dec) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 7U;
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                }
                            }
                        }
                        if ((1U & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                    >> 2U) & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xcU;
                        }
                    }
                } else {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 5U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                    if ((1U & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                                >> 2U) 
                                               & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xcU;
                                    }
                                } else {
                                    if (((((((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) 
                                               | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec)) 
                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec)) 
                                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec)) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec)) 
                                           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status)) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec)) 
                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec))) {
                                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                            if ((1U 
                                                 & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                                     >> 2U) 
                                                    & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xcU;
                                            }
                                        } else {
                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                                if (
                                                    (1U 
                                                     & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                                         >> 2U) 
                                                        & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xcU;
                                                }
                                            } else {
                                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec) {
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xaU;
                                                } else {
                                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec) {
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xaU;
                                                    } else {
                                                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec) {
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xaU;
                                                        } else {
                                                            if (
                                                                (1U 
                                                                 & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status)))) {
                                                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec) {
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                        = 
                                                                        ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending)
                                                                          ? 0xcU
                                                                          : 3U);
                                                                } else {
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 1U;
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 9U;
                        }
                    }
                }
            }
        } else {
            if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs) 
                              >> 1U)))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 3U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        } else {
                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 9U;
                            } else {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id) {
                                    if ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)) 
                                         & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 0xdU;
                                    } else {
                                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                                        } else {
                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                    = 
                                                    ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                      ? 8U
                                                      : 5U);
                                            } else {
                                                if (
                                                    (((((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec) 
                                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec)) 
                                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active)) 
                                                        | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec)) 
                                                       | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec)) 
                                                      | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec) 
                                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec)) 
                                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec))) 
                                                     | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status))) {
                                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec) {
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 2U;
                                                        if (
                                                            (1U 
                                                             & ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall)) 
                                                                & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q))))) {
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done = 1U;
                                                        }
                                                    } else {
                                                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec) {
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                = 
                                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)
                                                                  ? 0xdU
                                                                  : 
                                                                 ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode)
                                                                   ? 0xdU
                                                                   : 
                                                                  ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                    ? 8U
                                                                    : 5U)));
                                                        } else {
                                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active) {
                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                    = 
                                                                    ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                      ? 8U
                                                                      : 5U);
                                                            } else {
                                                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec) {
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                        = 
                                                                        ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                          ? 8U
                                                                          : 5U);
                                                                } else {
                                                                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec) {
                                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                            = 
                                                                            ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                              ? 8U
                                                                              : 5U);
                                                                    } else {
                                                                        if (
                                                                            (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec) 
                                                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec)) 
                                                                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec))) {
                                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 0U;
                                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                                = 
                                                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                                 ? 8U
                                                                                 : 5U);
                                                                        } else {
                                                                            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status) {
                                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                                = 
                                                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                                 ? 8U
                                                                                 : 5U);
                                                                            } else {
                                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                                                = 
                                                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)
                                                                                 ? 7U
                                                                                 : 5U);
                                                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if ((1U 
                                                 & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                                     >> 2U) 
                                                    & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready) {
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                                        = 
                                                        (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec) 
                                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec))
                                                          ? 8U
                                                          : 
                                                         (((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode)) 
                                                           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec))
                                                           ? 8U
                                                           : 
                                                          (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec) 
                                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec))
                                                            ? 8U
                                                            : 
                                                           ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id)
                                                             ? 0xeU
                                                             : 0xdU))));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 5U;
                        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl) 
                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q))))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 4U;
                        }
                    }
                }
            } else {
                if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 2U;
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = 1U;
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                                = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending)
                                    ? 0xcU : 4U);
                        }
                    }
                } else {
                    if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = 0U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns 
                            = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending)
                                ? 0xcU : 4U);
                    } else {
                        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = 1U;
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffffeU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                    >> 0x1fU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffffdU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (2U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                    >> 0x1dU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffffbU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (4U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                    >> 0x1bU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffff7U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (8U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                    >> 0x19U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffffefU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x10U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                       >> 0x17U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffffdfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x20U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                       >> 0x15U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffffbfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x40U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                       >> 0x13U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffff7fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x80U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                       >> 0x11U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffeffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x100U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                        >> 0xfU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffdffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x200U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                        >> 0xdU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffffbffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x400U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                        >> 0xbU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffff7ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x800U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                        >> 9U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffefffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x1000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                         >> 7U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffdfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x2000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                         >> 5U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffffbfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x4000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                         >> 3U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffff7fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x8000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                         >> 1U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffeffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x10000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                          << 1U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffdffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x20000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                          << 3U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfffbffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x40000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                          << 5U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfff7ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x80000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                          << 7U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffefffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x100000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                           << 9U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffdfffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x200000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                           << 0xbU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xffbfffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x400000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                           << 0xdU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xff7fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x800000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                           << 0xfU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfeffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x1000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                            << 0x11U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfdffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x2000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                            << 0x13U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xfbffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x4000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                            << 0x15U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xf7ffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x8000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                            << 0x17U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xefffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x10000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                             << 0x19U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xdfffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x20000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                             << 0x1bU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0xbfffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x40000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                             << 0x1dU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result 
        = ((0x7fffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result) 
           | (0x80000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result 
                             << 0x1fU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs;
    if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs))) {
        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n) 
             | (4U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns 
                = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n)
                    ? 4U : 2U);
        }
    } else {
        if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs))) {
            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns = 4U;
            }
        } else {
            if ((4U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs))) {
                if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n)))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns = 2U;
                }
            } else {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns = 1U;
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q;
    if ((1U & (~ ((((((((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                        | (2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                       | (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                      | (0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                     | (0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                    | (0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                   | (0x340U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                  | (0x341U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))))) {
        if (((((((((0x342U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                   | (0x7b0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                  | (0x7b1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                 | (0x7b2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
                | (0x7b3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
               | (0x800U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (0x801U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x802U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
            if ((0x342U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if ((0x7b0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = ((0xffff7fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n) 
                               | (0x8000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (0xffffdfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (0xffffefffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = ((0xfffff7ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n) 
                               | (0x800U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (0xfffffbffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (0xfffffdffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (0xffffffefU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = ((0xfffffffbU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n) 
                               | (4U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                            = (3U | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
                    }
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                = (3U | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n);
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n 
                = ((0xfffffe3fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n) 
                   | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause) 
                      << 6U));
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clear_instr_valid 
        = (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready) 
            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id)) 
           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n = 0x80U;
    if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id) 
                      >> 2U)))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id) 
                          >> 1U)))) {
                if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id)))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n = 0U;
                }
            }
        }
    } else {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n 
            = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                ? ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                    ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                        ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q
                        : 0U) : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                                  ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q
                                  : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc))
                : ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                    ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                        ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex
                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target)
                    : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id))
                        ? ((IData)(4U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id)
                        : 0x80U)));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n 
        = (0xffffffU & (((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id)) 
                         & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set))
                         ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mtvec_addr_i 
                            >> 8U) : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q));
    if (((((((((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
               | (2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
              | (3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
             | (0x300U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
            | (0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
           | (0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
          | (0x340U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) 
         | (0x341U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))) {
        if ((1U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
            if ((2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                if ((3U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                    if ((0x300U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                        if ((0x304U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                            if ((0x305U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int))) {
                                if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n 
                                        = (0xffffffU 
                                           & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int 
                                              >> 8U));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req = 0U;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req = 1U;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DN 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S)
            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
                : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP) 
                    << 0x1fU) | (0x7fffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP 
                                                >> 1U))))
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left)
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result);
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__minstret 
        = (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid) 
            & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding)) 
           & (~ (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec) 
                  | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec)) 
                 | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q;
        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid) 
             & (0U < (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt 
                = (3U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q) 
                         - (IData)(1U)));
        }
    } else {
        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid) 
             & (0U < (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt 
                = (3U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q) 
                         - (IData)(1U)));
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state;
    if ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
            = ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))
                ? 0U : 1U);
    } else {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
                = ((3U == (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h)))
                    ? 1U : 2U);
        } else {
            if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
                    = ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))
                        ? 0U : 1U);
            } else {
                if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
                        = ((3U == (3U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata 
                                         >> 0x10U)))
                            ? 1U : 0U);
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state 
            = ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)
                ? 3U : 0U);
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q;
    if ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
        if ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                = ((IData)(4U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q);
            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_update_pc_q) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_addr_q;
            }
        } else {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                = ((IData)(2U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q);
        }
    } else {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                = ((3U == (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h)))
                    ? ((IData)(4U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)
                    : ((IData)(2U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q));
        } else {
            if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                    = ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))
                        ? ((IData)(4U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)
                        : ((IData)(2U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q));
            } else {
                if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
                        = ((3U == (3U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata 
                                         >> 0x10U)))
                            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q
                            : ((IData)(2U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q));
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n 
            = (0xfffffffeU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n);
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr 
                = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req)
                    ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q);
        }
    } else {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr 
            = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req)
                ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)
                : ((IData)(4U) + (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q)));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int) 
           & (2U > (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req)
                      ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)) 
                    + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid 
        = (((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)) 
            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)) 
           & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) 
                 | (0U < (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q)))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result 
        = ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result) 
           | (((0x2aU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex
                : (- (IData)(((0x28U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                                 >> (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))))) 
              & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xfffffff8U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (7U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x1dU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xffffffc7U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x38U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x17U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xfffffe3fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x1c0U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0x11U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xfffff1ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0xe00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xbU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xffff8fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x7000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 5U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xfffc7fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x38000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 1U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xffe3ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x1c0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 7U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xff1fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0xe00000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xdU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xf8ffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x7000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x13U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev 
        = ((0xc7ffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev) 
           | (0x38000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x19U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (3U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x1eU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfffffff3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xcU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                      >> 0x1aU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xffffffcfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x30U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x16U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xffffff3fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc0U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x12U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfffffcffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x300U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xeU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfffff3ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xaU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xffffcfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x3000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 6U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xffff3fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 2U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfffcffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x30000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 2U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfff3ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 6U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xffcfffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x300000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xaU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xff3fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc00000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xeU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xfcffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x3000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x12U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xf3ffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x16U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0xcfffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0x30000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x1aU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev 
        = ((0x3fffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev) 
           | (0xc0000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x1eU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffffeU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x1fU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffffdU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (2U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x1dU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffffbU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (4U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x1bU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffff7U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (8U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                    >> 0x19U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffffefU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x10U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x17U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffffdfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x20U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x15U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffffbfU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x40U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x13U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffff7fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x80U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                       >> 0x11U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffeffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x100U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xfU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffdffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x200U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xdU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffffbffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x400U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 0xbU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffff7ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x800U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                        >> 9U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffefffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x1000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 7U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffdfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x2000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 5U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffffbfffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x4000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 3U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffff7fffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x8000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                         >> 1U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffeffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x10000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 1U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffdffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x20000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 3U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfffbffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x40000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 5U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfff7ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x80000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                          << 7U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffefffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x100000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 9U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffdfffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x200000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xbU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xffbfffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x400000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xdU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xff7fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x800000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                           << 0xfU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfeffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x1000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x11U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfdffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x2000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x13U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xfbffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x4000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x15U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xf7ffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x8000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                            << 0x17U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xefffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x10000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x19U)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xdfffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x20000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x1bU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0xbfffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x40000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x1dU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev 
        = ((0x7fffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev) 
           | (0x80000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                             << 0x1fU)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_addr_q
            : (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q) {
            if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                 & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state = 0U;
            }
        }
    } else {
        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) 
             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                   & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state = 1U;
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_cnt 
        = (3U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                  & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))
                  ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                      ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)
                      : ((IData)(1U) + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)))
                  : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                      ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q) 
                         - (IData)(1U)) : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q) 
           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid;
    if ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
            if ((3U != (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h)))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid = 1U;
            }
        } else {
            if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid 
                    = (1U & ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q)) 
                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)));
            } else {
                if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                    if ((3U == (3U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata 
                                      >> 0x10U)))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid = 0U;
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready = 1U;
    if ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
            if ((3U != (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h)))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready 
                    = (1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)));
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid 
        = ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if)) 
           & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
              & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result = 0U;
    if ((0x40U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                      >> 5U)))) {
            if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                          >> 4U)))) {
                if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                    if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                  >> 2U)))) {
                        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                      >> 1U)))) {
                            if ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                    = ((0U == (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                        ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev
                                        : ((1U == (3U 
                                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev
                                            : ((2U 
                                                == 
                                                (3U 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev
                                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev)));
                            }
                        }
                    }
                }
            }
        }
    } else {
        if ((0x20U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
            if ((0x10U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                    if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                        if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result;
                        }
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result;
                    }
                } else {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                        = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                            ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result)
                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP)
                                ? (- vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D)
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D));
                }
            } else {
                if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                        = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                            ? ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                    ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                       ^ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)
                                    : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                       | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex))
                                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result
                                    : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                       | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)))
                            : ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                    ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                       & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask))
                                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result)
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result));
                } else {
                    if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result;
                    }
                }
            }
        } else {
            if ((0x10U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                    = ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                        ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result
                        : ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                            ? ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                ? ((0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                    ? ((1U & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                               >> 0x1fU) 
                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                        ? 0U : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax)
                                    : ((1U & ((IData)(
                                                      (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                                       >> 0x24U)) 
                                              | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                        ? (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)
                                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax))
                                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                    ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                       & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)
                                    : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex)
                                        ? ((0xffff0000U 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result) 
                                           | (0xffffU 
                                              & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex))
                                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax)))
                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax));
            } else {
                if ((8U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                    if ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                        if ((1U & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                      >> 1U)))) {
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                = ((0xffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                                   | (0xff000000U & 
                                      ((- (IData)((1U 
                                                   & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                      >> 3U)))) 
                                       << 0x18U)));
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                = ((0xff00ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                                   | (0xff0000U & (
                                                   (- (IData)(
                                                              (1U 
                                                               & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                                  >> 2U)))) 
                                                   << 0x10U)));
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                = ((0xffff00ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                                   | (0xff00U & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                                >> 1U)))) 
                                                 << 8U)));
                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                                = ((0xffffff00U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                                   | (0xffU & (- (IData)(
                                                         (1U 
                                                          & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result))))));
                        }
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff000000U & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                                >> 3U)))) 
                                                 << 0x18U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xff00ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff0000U & ((- (IData)(
                                                          (1U 
                                                           & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                              >> 2U)))) 
                                               << 0x10U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffff00ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff00U & ((- (IData)(
                                                        (1U 
                                                         & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                            >> 1U)))) 
                                             << 8U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffffff00U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xffU & (- (IData)(
                                                     (1U 
                                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result))))));
                    }
                } else {
                    if ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = (1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                     >> 3U));
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff000000U & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                                >> 3U)))) 
                                                 << 0x18U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xff00ffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff0000U & ((- (IData)(
                                                          (1U 
                                                           & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                              >> 2U)))) 
                                               << 0x10U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffff00ffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xff00U & ((- (IData)(
                                                        (1U 
                                                         & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                                            >> 1U)))) 
                                             << 8U)));
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result 
                            = ((0xffffff00U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result) 
                               | (0xffU & (- (IData)(
                                                     (1U 
                                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result))))));
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp;
    if ((0U != vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
         [0U])) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp)
            ? 1U : (1U & VL_RANDOM_I(32)));
    if ((0U != vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
         [0U])) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_instr_gnt;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state = 0U;
    if ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state 
            = ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))
                ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid))
                : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid)));
    } else {
        if ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state 
                = ((3U == (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h)))
                    ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid))
                    : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid));
        } else {
            if ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state 
                    = ((3U == (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata))
                        ? (((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q)) 
                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)) 
                           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid))
                        : (((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q)) 
                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)) 
                           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid)));
            } else {
                if ((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state 
                        = ((3U == (3U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata 
                                         >> 0x10U)))
                            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                               & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid))
                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                               & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid)));
                }
            }
        }
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state = 1U;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready = 0U;
    if ((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set)))) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) {
            if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int) 
                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready;
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw = 0U;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_en_ex) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result;
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result;
    }
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_access_ex) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_rdata_int;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_push 
        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q;
    if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q) {
            if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state = 0U;
            }
        }
    } else {
        if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp) 
             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt)))) {
            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state = 1U;
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop 
        = ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push 
        = (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid) 
            & ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)) 
               | (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready)))) 
           & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req) 
                 | (0U < (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q)))));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id 
        = ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel))
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw
            : ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_data_ra_id));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id 
        = ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel))
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw
            : ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
               (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                         >> 0x14U))]));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id 
        = ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel))
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw
            : ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata
                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
               (0x1fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id))]));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop) 
         & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n 
            = (1U & ((IData)(1U) + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q)));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock = 1U;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push) 
         & (2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock = 0U;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push) 
         & (2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n 
            = (3U & ((IData)(1U) + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)));
    }
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop) 
         & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n 
            = (3U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q) 
                     - (IData)(1U)));
    }
    if (((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push) 
           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop)) 
          & (2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))) 
         & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q;
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push) 
         & (2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n 
            = (1U & ((IData)(1U) + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q)));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push) 
         & (2U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q)))) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n 
            = (((~ (0xffffffffULL << (0x3fU & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q) 
                                               << 5U)))) 
                & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n) 
               | ((QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o)) 
                  << (0x3fU & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q) 
                               << 5U))));
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c 
        = ((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel))
            ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id
            : ((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id
                : ((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b 
        = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
            ? ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id
                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id
                    : (0x1fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id)))
            : ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
                ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b)
                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id)));
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operand_a 
        = ((4U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
            ? ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
                ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id
                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id))
            : ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
                ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a)
                : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel))
                    ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id
                    : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id)));
}

void Vtb_top_verilator::_initial__TOP__6(Vtb_top_verilator__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_initial__TOP__6\n"); );
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp37[3];
    // Body
    vlTOPp->tb_top_verilator__DOT__load_prog__DOT__prog_size = 6U;
    __Vtemp37[0U] = 0x653d2573U;
    __Vtemp37[1U] = 0x6d776172U;
    __Vtemp37[2U] = 0x666972U;
    if (VL_LIKELY(VL_VALUEPLUSARGS_INW(1024, VL_CVT_PACK_STR_NW(3, __Vtemp37), 
                                       vlTOPp->tb_top_verilator__DOT__load_prog__DOT__firmware))) {
        if (VL_UNLIKELY((0U != VL_TESTPLUSARGS_I("verbose")))) {
            VL_WRITEF("[TESTBENCH] %t: loading firmware %0s ...\n",
                      64,VL_TIME_UNITED_Q(1),1024,vlTOPp->tb_top_verilator__DOT__load_prog__DOT__firmware);
        }
        VL_READMEM_N(true, 8, 4194304, 0, VL_CVT_PACK_STR_NW(32, vlTOPp->tb_top_verilator__DOT__load_prog__DOT__firmware)
                     , vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                     , 0, ~0ULL);
    } else {
        VL_WRITEF("No firmware specified\n");
        VL_FINISH_MT("/11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core/tb_top_verilator.sv", 46, "");
    }
}

void Vtb_top_verilator::_settle__TOP__9(Vtb_top_verilator__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_settle__TOP__9\n"); );
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp38[3];
    // Body
    vlTOPp->tests_passed_o = 0U;
    vlTOPp->tests_failed_o = 0U;
    vlTOPp->tb_top_verilator__DOT__exit_value = 0U;
    vlTOPp->tb_top_verilator__DOT__exit_valid = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d = 0U;
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction = 1U;
    if (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid) 
         & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt))) {
        if (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex) {
            if (((0x400000U > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                 | ((0x1a110800U <= ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                      ? (0xfffffffcU 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                    & (0x1a114800U > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                       ? (0xfffffffcU 
                                          & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec 
                    = (0x3fffffU & (((0x1a110800U <= 
                                      ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                        ? (0xfffffffcU 
                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                                     & (0x1a114800U 
                                        > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                            ? (0xfffffffcU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)))
                                     ? ((IData)(0x3fc000U) 
                                        + (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                             ? (0xfffffffcU 
                                                & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int) 
                                           - (IData)(0x110800U)))
                                     : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                         ? (0xfffffffcU 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec 
                    = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                        ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((0xff000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x18U)) 
                               | (0xffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               >> 8U)))
                            : ((0xffff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x10U)) 
                               | (0xffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                             >> 0x10U))))
                        : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((0xffffff00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 8U)) 
                               | (0xffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                           >> 0x18U)))
                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex;
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec 
                    = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                        ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                            ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                ? 8U : 4U) : ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                               ? 2U
                                               : 1U))
                        : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? 1U : ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                         ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             ? 8U : 0xcU)
                                         : ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             ? 6U : 3U)))
                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                    ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                        ? 7U : 3U) : 
                                   ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                     ? 1U : 0U)) : 
                               ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                 ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                     ? 8U : 0xcU) : 
                                ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                  ? 0xeU : 0xfU)))));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction = 0U;
            } else {
                if ((0x10000000U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                      ? (0xfffffffcU 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata 
                        = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                ? ((0xff000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x18U)) 
                                   | (0xffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   >> 8U)))
                                : ((0xffff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x10U)) 
                                   | (0xffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                 >> 0x10U))))
                            : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                ? ((0xffffff00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 8U)) 
                                   | (0xffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               >> 0x18U)))
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid = 1U;
                } else {
                    if ((0x20000000U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                          ? (0xfffffffcU 
                                             & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                          : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                        if ((0x75bcd15U == ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                             ? ((1U 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                 ? 
                                                ((0xff000000U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     << 0x18U)) 
                                                 | (0xffffffU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       >> 8U)))
                                                 : 
                                                ((0xffff0000U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     << 0x10U)) 
                                                 | (0xffffU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       >> 0x10U))))
                                             : ((1U 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                 ? 
                                                ((0xffffff00U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     << 8U)) 
                                                 | (0xffU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       >> 0x18U)))
                                                 : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex)))) {
                            vlTOPp->tests_passed_o = 1U;
                        } else {
                            if ((1U == ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                         ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                             ? ((0xff000000U 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                    << 0x18U)) 
                                                | (0xffffffU 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                      >> 8U)))
                                             : ((0xffff0000U 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                    << 0x10U)) 
                                                | (0xffffU 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                      >> 0x10U))))
                                         : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                             ? ((0xffffff00U 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                    << 8U)) 
                                                | (0xffU 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                      >> 0x18U)))
                                             : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex)))) {
                                vlTOPp->tests_failed_o = 1U;
                            }
                        }
                    } else {
                        if ((0x20000004U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                              ? (0xfffffffcU 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                              : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                            vlTOPp->tb_top_verilator__DOT__exit_valid = 1U;
                            vlTOPp->tb_top_verilator__DOT__exit_value 
                                = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                    ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                        ? ((0xff000000U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x18U)) 
                                           | (0xffffffU 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                 >> 8U)))
                                        : ((0xffff0000U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x10U)) 
                                           | (0xffffU 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                 >> 0x10U))))
                                    : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                        ? ((0xffffff00U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 8U)) 
                                           | (0xffU 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                 >> 0x18U)))
                                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                        } else {
                            if ((0x20000008U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                  ? 
                                                 (0xfffffffcU 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                  : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d 
                                    = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                        ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                            ? ((0xff000000U 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x18U)) 
                                               | (0xffffffU 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     >> 8U)))
                                            : ((0xffff0000U 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x10U)) 
                                               | (0xffffU 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     >> 0x10U))))
                                        : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                            ? ((0xffffff00U 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 8U)) 
                                               | (0xffU 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                     >> 0x18U)))
                                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                            } else {
                                if ((0x2000000cU == 
                                     ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                       ? (0xfffffffcU 
                                          & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d 
                                        = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                            ? ((1U 
                                                & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                ? (
                                                   (0xff000000U 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       << 0x18U)) 
                                                   | (0xffffffU 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         >> 8U)))
                                                : (
                                                   (0xffff0000U 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       << 0x10U)) 
                                                   | (0xffffU 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         >> 0x10U))))
                                            : ((1U 
                                                & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                ? (
                                                   (0xffffff00U 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                       << 8U)) 
                                                   | (0xffU 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         >> 0x18U)))
                                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                                } else {
                                    if (VL_UNLIKELY(
                                                    (0x20000010U 
                                                     == 
                                                     ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                       ? 
                                                      (0xfffffffcU 
                                                       & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)))) {
                                        __Vtemp38[0U] = 0x653d2573U;
                                        __Vtemp38[1U] = 0x61747572U;
                                        __Vtemp38[2U] = 0x7369676eU;
                                        if (VL_UNLIKELY(VL_VALUEPLUSARGS_INN(64, 
                                                                             VL_CVT_PACK_STR_NW(3, __Vtemp38), 
                                                                             vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_file))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd = VL_FOPEN_NN(
                                                                                VL_CVT_PACK_STR_NN(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_file)
                                                                                , 
                                                                                std::string("w"));
                                            if (VL_UNLIKELY(
                                                            (0U 
                                                             == vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd))) {
                                                VL_WRITEF("[%0t] %%Error: mm_ram.sv:372: Assertion failed in %Ntb_top_verilator.cv32e40p_tb_wrapper_i.ram_i: can't open file\n",
                                                          64,
                                                          VL_TIME_UNITED_Q(1),
                                                          vlSymsp->name());
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file = 0U;
                                                VL_STOP_MT("/11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core/mm_ram.sv", 372, "");
                                            } else {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file = 1U;
                                            }
                                        }
                                        vlTOPp->tb_top_verilator__DOT__exit_valid = 1U;
                                        vlTOPp->tb_top_verilator__DOT__exit_value = 0U;
                                        VL_WRITEF("%Ntb_top_verilator.cv32e40p_tb_wrapper_i.ram_i @ %0t: Dumping signature\n",
                                                  vlSymsp->name(),
                                                  64,
                                                  VL_TIME_UNITED_Q(1));
                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr 
                                            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q;
                                        while ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr 
                                                < vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q)) {
                                            VL_WRITEF("%x%x%x%x\n",
                                                      8,
                                                      vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                      [
                                                      (0x3fffffU 
                                                       & ((IData)(3U) 
                                                          + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                      8,
                                                      vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                      [
                                                      (0x3fffffU 
                                                       & ((IData)(2U) 
                                                          + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                      8,
                                                      vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                      [
                                                      (0x3fffffU 
                                                       & ((IData)(1U) 
                                                          + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                      8,
                                                      vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                      [
                                                      (0x3fffffU 
                                                       & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr)]);
                                            if (VL_UNLIKELY(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file)) {
                                                VL_FWRITEF(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd,"%x%x%x%x\n",
                                                           8,
                                                           vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                           [
                                                           (0x3fffffU 
                                                            & ((IData)(3U) 
                                                               + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                           8,
                                                           vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                           [
                                                           (0x3fffffU 
                                                            & ((IData)(2U) 
                                                               + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                           8,
                                                           vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                           [
                                                           (0x3fffffU 
                                                            & ((IData)(1U) 
                                                               + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr))],
                                                           8,
                                                           vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem
                                                           [
                                                           (0x3fffffU 
                                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr)]);
                                            }
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr 
                                                = ((IData)(4U) 
                                                   + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr);
                                        }
                                    } else {
                                        if ((0x15000000U 
                                             == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                  ? 
                                                 (0xfffffffcU 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                  : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata 
                                                = (
                                                   (2U 
                                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                    ? 
                                                   ((1U 
                                                     & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                     ? 
                                                    ((0xff000000U 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         << 0x18U)) 
                                                     | (0xffffffU 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           >> 8U)))
                                                     : 
                                                    ((0xffff0000U 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         << 0x10U)) 
                                                     | (0xffffU 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           >> 0x10U))))
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                     ? 
                                                    ((0xffffff00U 
                                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                         << 8U)) 
                                                     | (0xffU 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           >> 0x18U)))
                                                     : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid = 1U;
                                        } else {
                                            if ((0x15000004U 
                                                 == 
                                                 ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                   ? 
                                                  (0xfffffffcU 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata 
                                                    = 
                                                    ((2U 
                                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                      ? 
                                                     ((1U 
                                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                       ? 
                                                      ((0xff000000U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           << 0x18U)) 
                                                       | (0xffffffU 
                                                          & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                             >> 8U)))
                                                       : 
                                                      ((0xffff0000U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           << 0x10U)) 
                                                       | (0xffffU 
                                                          & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                             >> 0x10U))))
                                                      : 
                                                     ((1U 
                                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                       ? 
                                                      ((0xffffff00U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                           << 8U)) 
                                                       | (0xffU 
                                                          & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                             >> 0x18U)))
                                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                                                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid = 1U;
                                            } else {
                                                if (
                                                    (0x15000008U 
                                                     == 
                                                     ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                       ? 
                                                      (0xfffffffcU 
                                                       & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata 
                                                        = 
                                                        ((2U 
                                                          & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                          ? 
                                                         ((1U 
                                                           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                           ? 
                                                          ((0xff000000U 
                                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                               << 0x18U)) 
                                                           | (0xffffffU 
                                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                 >> 8U)))
                                                           : 
                                                          ((0xffff0000U 
                                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                               << 0x10U)) 
                                                           | (0xffffU 
                                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                 >> 0x10U))))
                                                          : 
                                                         ((1U 
                                                           & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                           ? 
                                                          ((0xffffff00U 
                                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                               << 8U)) 
                                                           | (0xffU 
                                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                 >> 0x18U)))
                                                           : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                                                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid = 1U;
                                                } else {
                                                    if (
                                                        (0x1600U 
                                                         == 
                                                         (0xffffU 
                                                          & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                               ? 
                                                              (0xfffffffcU 
                                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                               : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int) 
                                                             >> 0x10U)))) {
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req 
                                                            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata 
                                                            = 
                                                            ((2U 
                                                              & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                              ? 
                                                             ((1U 
                                                               & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                               ? 
                                                              ((0xff000000U 
                                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                   << 0x18U)) 
                                                               | (0xffffffU 
                                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                     >> 8U)))
                                                               : 
                                                              ((0xffff0000U 
                                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                   << 0x10U)) 
                                                               | (0xffffU 
                                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                     >> 0x10U))))
                                                              : 
                                                             ((1U 
                                                               & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                                               ? 
                                                              ((0xffffff00U 
                                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                   << 8U)) 
                                                               | (0xffU 
                                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                                     >> 0x18U)))
                                                               : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr 
                                                            = 
                                                            ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                              ? 
                                                             (0xfffffffcU 
                                                              & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                              : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int);
                                                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we 
                                                            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex;
                                                    } else {
                                                        if (
                                                            (0x15001004U 
                                                             == 
                                                             ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                               ? 
                                                              (0xfffffffcU 
                                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                               : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                                                            vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear = 1U;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if (((0x400000U > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                 | ((0x1a110800U <= ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                      ? (0xfffffffcU 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                    & (0x1a114800U > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                       ? (0xfffffffcU 
                                          & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))))) {
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d = 0U;
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec 
                    = (0x3fffffU & (((0x1a110800U <= 
                                      ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                        ? (0xfffffffcU 
                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                        : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)) 
                                     & (0x1a114800U 
                                        > ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                            ? (0xfffffffcU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)))
                                     ? ((IData)(0x3fc000U) 
                                        + (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                             ? (0xfffffffcU 
                                                & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int) 
                                           - (IData)(0x110800U)))
                                     : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                         ? (0xfffffffcU 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec 
                    = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                        ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((0xff000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x18U)) 
                               | (0xffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               >> 8U)))
                            : ((0xffff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 0x10U)) 
                               | (0xffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                             >> 0x10U))))
                        : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((0xffffff00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               << 8U)) 
                               | (0xffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                           >> 0x18U)))
                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec 
                    = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex;
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec 
                    = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                        ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                            ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                ? 8U : 4U) : ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                               ? 2U
                                               : 1U))
                        : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? 1U : ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                         ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             ? 8U : 0xcU)
                                         : ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             ? 6U : 3U)))
                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                    ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                        ? 7U : 3U) : 
                                   ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                     ? 1U : 0U)) : 
                               ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                 ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                     ? 8U : 0xcU) : 
                                ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                  ? 0xeU : 0xfU)))));
                vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction = 0U;
            } else {
                if ((0x1600U == (0xffffU & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                              ? (0xfffffffcU 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                              : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int) 
                                            >> 0x10U)))) {
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d = 2U;
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req 
                        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata 
                        = ((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                            ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                ? ((0xff000000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x18U)) 
                                   | (0xffffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   >> 8U)))
                                : ((0xffff0000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 0x10U)) 
                                   | (0xffffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                 >> 0x10U))))
                            : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
                                ? ((0xffffff00U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                                   << 8U)) 
                                   | (0xffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex 
                                               >> 0x18U)))
                                : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex));
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr 
                        = ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                            ? (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int);
                    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we 
                        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex;
                } else {
                    if ((0x15001000U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                          ? (0xfffffffcU 
                                             & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                          : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))) {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req = 1U;
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d = 4U;
                    } else {
                        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d 
                            = ((0x15001004U == ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                 ? 
                                                (0xfffffffcU 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                 : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))
                                ? 5U : 3U);
                    }
                }
            }
        }
    }
    vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec;
    if ((0U != vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
         [1U])) {
        vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req 
            = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
    }
}

void Vtb_top_verilator::_eval_initial(Vtb_top_verilator__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_eval_initial\n"); );
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk_i = vlTOPp->clk_i;
    vlTOPp->__Vclklast__TOP__rst_ni = vlTOPp->rst_ni;
    vlTOPp->_initial__TOP__6(vlSymsp);
    vlTOPp->__Vm_traceActivity[7U] = 1U;
    vlTOPp->__Vm_traceActivity[6U] = 1U;
    vlTOPp->__Vm_traceActivity[5U] = 1U;
    vlTOPp->__Vm_traceActivity[4U] = 1U;
    vlTOPp->__Vm_traceActivity[3U] = 1U;
    vlTOPp->__Vm_traceActivity[2U] = 1U;
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    vlTOPp->__Vm_traceActivity[0U] = 1U;
    vlTOPp->__Vclklast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk 
        = vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk;
}

void Vtb_top_verilator::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::final\n"); );
    // Variables
    Vtb_top_verilator__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtb_top_verilator::_eval_settle(Vtb_top_verilator__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_eval_settle\n"); );
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity[7U] = 1U;
    vlTOPp->__Vm_traceActivity[6U] = 1U;
    vlTOPp->__Vm_traceActivity[5U] = 1U;
    vlTOPp->__Vm_traceActivity[4U] = 1U;
    vlTOPp->__Vm_traceActivity[3U] = 1U;
    vlTOPp->__Vm_traceActivity[2U] = 1U;
    vlTOPp->__Vm_traceActivity[1U] = 1U;
    vlTOPp->__Vm_traceActivity[0U] = 1U;
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->_settle__TOP__9(vlSymsp);
}

void Vtb_top_verilator::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top_verilator::_ctor_var_reset\n"); );
    // Body
    clk_i = VL_RAND_RESET_I(1);
    rst_ni = VL_RAND_RESET_I(1);
    fetch_enable_i = VL_RAND_RESET_I(1);
    tests_passed_o = VL_RAND_RESET_I(1);
    tests_failed_o = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cycle_cnt_q = 0;
    tb_top_verilator__DOT__exit_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__exit_value = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(1024, tb_top_verilator__DOT__load_prog__DOT__firmware);
    tb_top_verilator__DOT__load_prog__DOT__prog_size = 0;
    tb_top_verilator__DOT__unnamedblk1__DOT__maxcycles = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__debug_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_in = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mtvec_addr_i = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__dm_exception_addr_i = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_compressed_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__illegal_c_insn_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clear_instr_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__useincr_addr_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_multicycle = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__branch_in_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_en_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex = VL_RAND_RESET_I(7);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__imm_vec_ext_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_subrot_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_sel_subword_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_signed_mode_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_a_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_b_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_signed_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_clpx_shift_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_flags_ex = VL_RAND_RESET_I(15);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_op_ex = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_waddr_ex = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_fw = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_access_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_op_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int = VL_RAND_RESET_I(12);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_atop_ex = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_sign_ext_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_reg_offset_ex = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_uret_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_dret_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_minstret = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_load = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_store = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jump = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch_taken = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_compressed = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jr_stall = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_imiss = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_ld_stall = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_pipe_stall = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(96, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__id_stage_i__apu_operands_ex_o);
    VL_RAND_RESET_W(96, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__ex_stage_i__apu_operands_o);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_d = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__p_elw_busy_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_clock_gate_i__DOT__clk_en = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr = VL_RAND_RESET_I(24);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__illegal_c_insn = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_decompressed = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_cnt = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n = VL_RAND_RESET_Q(64);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q = VL_RAND_RESET_Q(64);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_we_o = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_be_o = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_wdata_o = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_atop_o = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_addr_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_we_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_be_q = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_wdata_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_atop_q = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h = VL_RAND_RESET_I(16);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_addr_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_update_pc_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__rega_used_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__debug_wfi_no_sleep = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_i_type = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_we_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_data_ra_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_en = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operator = VL_RAND_RESET_I(7);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_mux = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a_mux_sel = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b_mux_sel = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_target_mux_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_operator = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_int_en = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_signed_mode = VL_RAND_RESET_I(2);
    VL_RAND_RESET_W(96, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__apu_operands);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_we_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_mux_sel = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_we_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_type_id = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_sign_ext_id = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_req_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__prepost_useincr = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operand_a = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_wb_is_reg_a_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_alu_is_reg_a_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__id_valid_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__minstret = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(1024, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_a_dec = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_b_dec = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_mem_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__data_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_illegal = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__alu_en = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__mult_int_en = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_n = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_local_qual = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_we_lsu = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_neg_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b_negate = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_a = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_a = VL_RAND_RESET_Q(36);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_b = VL_RAND_RESET_Q(36);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded = VL_RAND_RESET_Q(37);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_vec = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater_vec = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_byte_sel = VL_RAND_RESET_I(8);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg_sel = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg1_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg0_sel = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1 = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0 = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1_in = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0_in = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_input = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l1 = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l2 = VL_RAND_RESET_I(24);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l3 = VL_RAND_RESET_I(16);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4 = VL_RAND_RESET_I(10);
    VL_RAND_RESET_W(160, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_lut);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(160, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DN = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP_rev = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DN = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DN = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SN = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SN = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SN = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DN = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SP = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a = VL_RAND_RESET_I(17);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b = VL_RAND_RESET_I(17);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac = VL_RAND_RESET_Q(34);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result = VL_RAND_RESET_Q(34);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_subword = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_signed = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_subword = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_signed = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_shift_arith = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_save = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_clearcarry = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_ready = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_result = VL_RAND_RESET_Q(33);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result = VL_RAND_RESET_I(16);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_a = VL_RAND_RESET_Q(36);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_b = VL_RAND_RESET_Q(36);
    VL_RAND_RESET_W(72, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a = VL_RAND_RESET_Q(34);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b = VL_RAND_RESET_Q(34);
    VL_RAND_RESET_W(68, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_mul);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__next_cnt = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__ctrl_update = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_type_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_sign_ext_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_we_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_rdata_ext = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_h_ext = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_b_ext = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_rdata_int = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_q = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_n = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_q = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_n = VL_RAND_RESET_I(5);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q = VL_RAND_RESET_I(7);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n = VL_RAND_RESET_I(7);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_q = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n = VL_RAND_RESET_I(6);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n = VL_RAND_RESET_I(24);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q = VL_RAND_RESET_I(24);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_n = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_q = VL_RAND_RESET_I(2);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n = VL_RAND_RESET_I(2);
    VL_RAND_RESET_W(768, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__pmp_reg_n);
    VL_RAND_RESET_W(2048, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_q);
    VL_RAND_RESET_W(1024, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_q);
    VL_RAND_RESET_W(1024, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_n);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcounteren_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_n = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__hpm_events = VL_RAND_RESET_I(16);
    VL_RAND_RESET_W(2048, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_increment);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_lower = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_upper = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_increment = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_value_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_q = VL_RAND_RESET_I(3);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__i = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_rdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec = VL_RAND_RESET_I(22);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec = VL_RAND_RESET_I(4);
    VL_RAND_RESET_W(128, tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_irq_mask_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_cnt_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_q = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_overflow_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[__Vi0] = VL_RAND_RESET_I(32);
    }
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_rdata = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_instr_gnt = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_data_gnt = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_irq = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__errno = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rdata_mux = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_start_cnt_q = VL_RAND_RESET_I(15);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_value_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_duration_q = VL_RAND_RESET_I(13);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o = VL_RAND_RESET_I(32);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<4194304; ++__Vi0) {
        tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem[__Vi0] = VL_RAND_RESET_I(8);
    }
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__unnamedblk1__DOT__i = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_empty = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_push = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr_rdata = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<8; ++__Vi0) {
        tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[__Vi0] = VL_RAND_RESET_Q(37);
    }
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rvalid_i_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__current_delay = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__i = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_empty = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_push = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr_rdata = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<8; ++__Vi0) {
        tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[__Vi0] = VL_RAND_RESET_Q(37);
    }
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rvalid_i_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__current_delay = VL_RAND_RESET_I(4);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__i = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__req_core_i_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_core_o_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_delay_cnt = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__delay_value = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__req_core_i_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_core_o_q = VL_RAND_RESET_I(1);
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_delay_cnt = 0;
    tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__delay_value = 0;
    __Vtableidx1 = 0;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[0] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[1] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[2] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[3] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[4] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[5] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[6] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[7] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[8] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[9] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[10] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[11] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[12] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[13] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[14] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[15] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[16] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[17] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[18] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[19] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[20] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[21] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[22] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[23] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[24] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[25] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[26] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[27] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[28] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[29] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[30] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[31] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[32] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[33] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[34] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[35] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[36] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[37] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[38] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[39] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[40] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[41] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[42] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[43] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[44] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[45] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[46] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[47] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[48] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[49] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[50] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[51] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[52] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[53] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[54] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[55] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[56] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[57] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[58] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[59] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[60] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[61] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[62] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[63] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[64] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[65] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[66] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[67] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[68] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[69] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[70] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[71] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[72] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[73] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[74] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[75] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[76] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[77] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[78] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[79] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[80] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[81] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[82] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[83] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[84] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[85] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[86] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[87] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[88] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[89] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[90] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[91] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[92] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[93] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[94] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[95] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[96] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[97] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[98] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[99] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[100] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[101] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[102] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[103] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[104] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[105] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[106] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[107] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[108] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[109] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[110] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[111] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[112] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[113] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[114] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[115] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[116] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[117] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[118] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[119] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[120] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[121] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[122] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[123] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[124] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[125] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[126] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[127] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[128] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[129] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[130] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[131] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[132] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[133] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[134] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[135] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[136] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[137] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[138] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[139] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[140] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[141] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[142] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[143] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[144] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[145] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[146] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[147] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[148] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[149] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[150] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[151] = 8U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[152] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[153] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[154] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[155] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[156] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[157] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[158] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[159] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[160] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[161] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[162] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[163] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[164] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[165] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[166] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[167] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[168] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[169] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[170] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[171] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[172] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[173] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[174] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[175] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[176] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[177] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[178] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[179] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[180] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[181] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[182] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[183] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[184] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[185] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[186] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[187] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[188] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[189] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[190] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[191] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[192] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[193] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[194] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[195] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[196] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[197] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[198] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[199] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[200] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[201] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[202] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[203] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[204] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[205] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[206] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[207] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[208] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[209] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[210] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[211] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[212] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[213] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[214] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[215] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[216] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[217] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[218] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[219] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[220] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[221] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[222] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[223] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[224] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[225] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[226] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[227] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[228] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[229] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[230] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[231] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[232] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[233] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[234] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[235] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[236] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[237] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[238] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[239] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[240] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[241] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[242] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[243] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[244] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[245] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[246] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[247] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[248] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[249] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[250] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[251] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[252] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[253] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[254] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[255] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[256] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[257] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[258] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[259] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[260] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[261] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[262] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[263] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[264] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[265] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[266] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[267] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[268] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[269] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[270] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[271] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[272] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[273] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[274] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[275] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[276] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[277] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[278] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[279] = 0xaU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[280] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[281] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[282] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[283] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[284] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[285] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[286] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[287] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[288] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[289] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[290] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[291] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[292] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[293] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[294] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[295] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[296] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[297] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[298] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[299] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[300] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[301] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[302] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[303] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[304] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[305] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[306] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[307] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[308] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[309] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[310] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[311] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[312] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[313] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[314] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[315] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[316] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[317] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[318] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[319] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[320] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[321] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[322] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[323] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[324] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[325] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[326] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[327] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[328] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[329] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[330] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[331] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[332] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[333] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[334] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[335] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[336] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[337] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[338] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[339] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[340] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[341] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[342] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[343] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[344] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[345] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[346] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[347] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[348] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[349] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[350] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[351] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[352] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[353] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[354] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[355] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[356] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[357] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[358] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[359] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[360] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[361] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[362] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[363] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[364] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[365] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[366] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[367] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[368] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[369] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[370] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[371] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[372] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[373] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[374] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[375] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[376] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[377] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[378] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[379] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[380] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[381] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[382] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[383] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[384] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[385] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[386] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[387] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[388] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[389] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[390] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[391] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[392] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[393] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[394] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[395] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[396] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[397] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[398] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[399] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[400] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[401] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[402] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[403] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[404] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[405] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[406] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[407] = 0xfU;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[408] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[409] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[410] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[411] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[412] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[413] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[414] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[415] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[416] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[417] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[418] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[419] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[420] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[421] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[422] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[423] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[424] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[425] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[426] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[427] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[428] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[429] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[430] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[431] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[432] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[433] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[434] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[435] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[436] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[437] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[438] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[439] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[440] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[441] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[442] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[443] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[444] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[445] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[446] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[447] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[448] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[449] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[450] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[451] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[452] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[453] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[454] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[455] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[456] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[457] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[458] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[459] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[460] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[461] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[462] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[463] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[464] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[465] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[466] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[467] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[468] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[469] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[470] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[471] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[472] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[473] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[474] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[475] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[476] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[477] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[478] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[479] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[480] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[481] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[482] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[483] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[484] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[485] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[486] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[487] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[488] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[489] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[490] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[491] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[492] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[493] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[494] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[495] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[496] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[497] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[498] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[499] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[500] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[501] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[502] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[503] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[504] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[505] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[506] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[507] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[508] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[509] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[510] = 0U;
    __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[511] = 0U;
    __Vtableidx2 = 0;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[0] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[1] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[2] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[3] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[4] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[5] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[6] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[7] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[8] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[9] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[10] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[11] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[12] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[13] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[14] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[15] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[16] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[17] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[18] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[19] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[20] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[21] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[22] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[23] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[24] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[25] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[26] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[27] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[28] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[29] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[30] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[31] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[32] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[33] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[34] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[35] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[36] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[37] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[38] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[39] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[40] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[41] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[42] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[43] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[44] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[45] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[46] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[47] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[48] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[49] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[50] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[51] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[52] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[53] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[54] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[55] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[56] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[57] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[58] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[59] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[60] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[61] = 2U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[62] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[63] = 3U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[0] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[1] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[2] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[3] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[4] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[5] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[6] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[7] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[8] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[9] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[10] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[11] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[12] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[13] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[14] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[15] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[16] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[17] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[18] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[19] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[20] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[21] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[22] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[23] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[24] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[25] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[26] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[27] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[28] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[29] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[30] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[31] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[32] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[33] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[34] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[35] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[36] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[37] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[38] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[39] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[40] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[41] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[42] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[43] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[44] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[45] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[46] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[47] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[48] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[49] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[50] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[51] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[52] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[53] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[54] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[55] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[56] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[57] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[58] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[59] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[60] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[61] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[62] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[63] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[0] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[1] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[2] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[3] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[4] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[5] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[6] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[7] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[8] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[9] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[10] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[11] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[12] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[13] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[14] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[15] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[16] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[17] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[18] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[19] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[20] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[21] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[22] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[23] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[24] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[25] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[26] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[27] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[28] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[29] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[30] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[31] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[32] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[33] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[34] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[35] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[36] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[37] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[38] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[39] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[40] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[41] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[42] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[43] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[44] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[45] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[46] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[47] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[48] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[49] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[50] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[51] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[52] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[53] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[54] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[55] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[56] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[57] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[58] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[59] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[60] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[61] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[62] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[63] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[0] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[1] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[2] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[3] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[4] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[5] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[6] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[7] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[8] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[9] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[10] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[11] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[12] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[13] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[14] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[15] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[16] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[17] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[18] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[19] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[20] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[21] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[22] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[23] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[24] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[25] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[26] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[27] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[28] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[29] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[30] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[31] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[32] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[33] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[34] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[35] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[36] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[37] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[38] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[39] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[40] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[41] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[42] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[43] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[44] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[45] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[46] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[47] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[48] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[49] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[50] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[51] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[52] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[53] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[54] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[55] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[56] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[57] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[58] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[59] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[60] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[61] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[62] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[63] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[0] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[1] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[2] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[3] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[4] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[5] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[6] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[7] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[8] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[9] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[10] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[11] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[12] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[13] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[14] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[15] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[16] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[17] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[18] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[19] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[20] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[21] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[22] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[23] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[24] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[25] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[26] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[27] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[28] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[29] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[30] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[31] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[32] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[33] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[34] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[35] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[36] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[37] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[38] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[39] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[40] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[41] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[42] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[43] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[44] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[45] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[46] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[47] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[48] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[49] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[50] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[51] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[52] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[53] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[54] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[55] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[56] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[57] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[58] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[59] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[60] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[61] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[62] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[63] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[0] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[1] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[2] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[3] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[4] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[5] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[6] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[7] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[8] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[9] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[10] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[11] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[12] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[13] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[14] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[15] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[16] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[17] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[18] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[19] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[20] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[21] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[22] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[23] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[24] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[25] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[26] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[27] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[28] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[29] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[30] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[31] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[32] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[33] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[34] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[35] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[36] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[37] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[38] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[39] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[40] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[41] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[42] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[43] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[44] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[45] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[46] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[47] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[48] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[49] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[50] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[51] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[52] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[53] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[54] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[55] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[56] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[57] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[58] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[59] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[60] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[61] = 1U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[62] = 0U;
    __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[63] = 0U;
    __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q = VL_RAND_RESET_I(1);
    __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready = VL_RAND_RESET_I(1);
    __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes = VL_RAND_RESET_I(32);
    VL_RAND_RESET_W(160, __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes);
    __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a = VL_RAND_RESET_I(17);
    __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b = VL_RAND_RESET_I(17);
    for (int __Vi0=0; __Vi0<8; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
