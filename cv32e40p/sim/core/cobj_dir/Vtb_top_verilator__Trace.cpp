// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_top_verilator__Syms.h"


void Vtb_top_verilator::traceChgTop0(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        vlTOPp->traceChgSub0(userp, tracep);
    }
}

void Vtb_top_verilator::traceChgSub0(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Variables
    WData/*127:0*/ __Vtemp81[4];
    // Body
    {
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[0U])) {
            tracep->chgWData(oldp+0,(vlTOPp->tb_top_verilator__DOT__load_prog__DOT__firmware),1024);
            tracep->chgIData(oldp+32,(vlTOPp->tb_top_verilator__DOT__load_prog__DOT__prog_size),32);
            tracep->chgWData(oldp+33,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__ex_stage_i__apu_operands_o),96);
            tracep->chgWData(oldp+36,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__apu_operands),96);
            tracep->chgWData(oldp+39,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_lut),160);
            tracep->chgWData(oldp+44,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__pmp_reg_n),768);
            tracep->chgIData(oldp+68,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcounteren_q),32);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[1U])) {
            tracep->chgIData(oldp+69,(vlTOPp->tb_top_verilator__DOT__cycle_cnt_q),32);
            tracep->chgIData(oldp+70,(vlTOPp->tb_top_verilator__DOT__unnamedblk1__DOT__maxcycles),32);
            tracep->chgBit(oldp+71,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid));
            tracep->chgBit(oldp+72,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__debug_req));
            tracep->chgIData(oldp+73,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q 
                                       | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_irq) 
                                          << 0x1fU))),32);
            tracep->chgBit(oldp+74,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q));
            tracep->chgBit(oldp+75,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q));
            tracep->chgBit(oldp+76,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__p_elw_busy_q));
            tracep->chgBit(oldp+77,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q));
            tracep->chgBit(oldp+78,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending));
            tracep->chgCData(oldp+79,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_q),3);
            tracep->chgIData(oldp+80,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q),32);
            tracep->chgIData(oldp+81,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q),32);
            tracep->chgIData(oldp+82,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_irq_mask_q),32);
            tracep->chgIData(oldp+83,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_cnt_q),32);
            tracep->chgIData(oldp+84,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q),32);
            tracep->chgIData(oldp+85,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_q),32);
            tracep->chgBit(oldp+86,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_overflow_q));
            tracep->chgIData(oldp+87,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_rdata),32);
            tracep->chgBit(oldp+88,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_instr_gnt));
            tracep->chgBit(oldp+89,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_data_gnt));
            tracep->chgIData(oldp+90,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num),32);
            tracep->chgSData(oldp+91,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_start_cnt_q),15);
            tracep->chgBit(oldp+92,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_value_q));
            tracep->chgSData(oldp+93,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_duration_q),13);
            tracep->chgBit(oldp+94,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_empty));
            tracep->chgBit(oldp+95,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr) 
                                      == ((8U & ((~ 
                                                  ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr) 
                                                   >> 3U)) 
                                                 << 3U)) 
                                          | (7U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr))))
                                      ? 1U : 0U)));
            tracep->chgCData(oldp+96,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr),4);
            tracep->chgCData(oldp+97,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr),4);
            tracep->chgCData(oldp+98,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr_rdata),3);
            tracep->chgQData(oldp+99,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[0]),37);
            tracep->chgQData(oldp+101,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[1]),37);
            tracep->chgQData(oldp+103,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[2]),37);
            tracep->chgQData(oldp+105,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[3]),37);
            tracep->chgQData(oldp+107,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[4]),37);
            tracep->chgQData(oldp+109,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[5]),37);
            tracep->chgQData(oldp+111,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[6]),37);
            tracep->chgQData(oldp+113,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[7]),37);
            tracep->chgBit(oldp+115,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rvalid_i_q));
            tracep->chgCData(oldp+116,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__current_delay),4);
            tracep->chgIData(oldp+117,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__i),32);
            tracep->chgBit(oldp+118,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_empty));
            tracep->chgBit(oldp+119,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr) 
                                       == ((8U & ((~ 
                                                   ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr) 
                                                    >> 3U)) 
                                                  << 3U)) 
                                           | (7U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr))))
                                       ? 1U : 0U)));
            tracep->chgCData(oldp+120,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr),4);
            tracep->chgCData(oldp+121,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr),4);
            tracep->chgCData(oldp+122,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr_rdata),3);
            tracep->chgQData(oldp+123,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[0]),37);
            tracep->chgQData(oldp+125,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[1]),37);
            tracep->chgQData(oldp+127,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[2]),37);
            tracep->chgQData(oldp+129,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[3]),37);
            tracep->chgQData(oldp+131,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[4]),37);
            tracep->chgQData(oldp+133,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[5]),37);
            tracep->chgQData(oldp+135,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[6]),37);
            tracep->chgQData(oldp+137,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[7]),37);
            tracep->chgBit(oldp+139,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rvalid_i_q));
            tracep->chgCData(oldp+140,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__current_delay),4);
            tracep->chgIData(oldp+141,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__i),32);
            tracep->chgBit(oldp+142,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__req_core_i_q));
            tracep->chgBit(oldp+143,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_core_o_q));
            tracep->chgIData(oldp+144,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_delay_cnt),32);
            tracep->chgIData(oldp+145,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__delay_value),32);
            tracep->chgBit(oldp+146,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__req_core_i_q));
            tracep->chgBit(oldp+147,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_core_o_q));
            tracep->chgIData(oldp+148,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_delay_cnt),32);
            tracep->chgIData(oldp+149,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__delay_value),32);
        }
        if (VL_UNLIKELY((vlTOPp->__Vm_traceActivity
                         [1U] | vlTOPp->__Vm_traceActivity
                         [3U]))) {
            tracep->chgIData(oldp+150,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[0]),32);
            tracep->chgIData(oldp+151,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[1]),32);
            tracep->chgIData(oldp+152,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[2]),32);
            tracep->chgIData(oldp+153,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[3]),32);
            tracep->chgIData(oldp+154,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[4]),32);
            tracep->chgIData(oldp+155,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[5]),32);
            tracep->chgIData(oldp+156,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[6]),32);
            tracep->chgIData(oldp+157,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[7]),32);
            tracep->chgIData(oldp+158,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[8]),32);
            tracep->chgIData(oldp+159,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[9]),32);
            tracep->chgIData(oldp+160,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[10]),32);
            tracep->chgIData(oldp+161,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[11]),32);
            tracep->chgIData(oldp+162,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[12]),32);
            tracep->chgIData(oldp+163,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[13]),32);
            tracep->chgIData(oldp+164,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[14]),32);
            tracep->chgIData(oldp+165,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[15]),32);
            tracep->chgBit(oldp+166,((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                      [0U])));
            tracep->chgIData(oldp+167,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [2U]),32);
            tracep->chgIData(oldp+168,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [4U]),32);
            tracep->chgIData(oldp+169,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [8U]),32);
            tracep->chgBit(oldp+170,((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                      [1U])));
            tracep->chgIData(oldp+171,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [3U]),32);
            tracep->chgIData(oldp+172,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [5U]),32);
            tracep->chgIData(oldp+173,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [9U]),32);
            tracep->chgIData(oldp+174,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [6U]),32);
            tracep->chgIData(oldp+175,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                       [7U]),32);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[2U])) {
            tracep->chgWData(oldp+176,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata),128);
            tracep->chgIData(oldp+180,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_rdata),32);
            tracep->chgIData(oldp+181,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__unnamedblk1__DOT__i),32);
            tracep->chgIData(oldp+182,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata[0U]),32);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[4U])) {
            tracep->chgBit(oldp+183,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp));
            tracep->chgBit(oldp+184,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt));
            tracep->chgIData(oldp+185,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp),32);
            tracep->chgBit(oldp+186,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack));
            tracep->chgCData(oldp+187,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out),5);
            tracep->chgBit(oldp+188,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clear_instr_valid));
            tracep->chgBit(oldp+189,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set));
            tracep->chgCData(oldp+190,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id),4);
            tracep->chgCData(oldp+191,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id),3);
            tracep->chgCData(oldp+192,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id),5);
            tracep->chgCData(oldp+193,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause),5);
            tracep->chgCData(oldp+194,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux),2);
            tracep->chgBit(oldp+195,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding));
            tracep->chgBit(oldp+196,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy));
            tracep->chgIData(oldp+197,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw),32);
            tracep->chgBit(oldp+198,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if));
            tracep->chgBit(oldp+199,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready));
            tracep->chgBit(oldp+200,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready));
            tracep->chgBit(oldp+201,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid));
            tracep->chgBit(oldp+202,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid));
            tracep->chgBit(oldp+203,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec));
            tracep->chgBit(oldp+204,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause));
            tracep->chgBit(oldp+205,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if));
            tracep->chgBit(oldp+206,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id));
            tracep->chgCData(oldp+207,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause),6);
            tracep->chgBit(oldp+208,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id));
            tracep->chgBit(oldp+209,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_uret_id));
            tracep->chgBit(oldp+210,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_dret_id));
            tracep->chgBit(oldp+211,(((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id)) 
                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set))));
            tracep->chgCData(oldp+212,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause),3);
            tracep->chgBit(oldp+213,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save));
            tracep->chgBit(oldp+214,((1U & ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)) 
                                            & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req))))));
            tracep->chgBit(oldp+215,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep));
            tracep->chgBit(oldp+216,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk));
            tracep->chgBit(oldp+217,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_clock_gate_i__DOT__clk_en));
            tracep->chgBit(oldp+218,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid));
            tracep->chgBit(oldp+219,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready))));
            tracep->chgBit(oldp+220,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req));
            tracep->chgIData(oldp+221,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n),32);
            tracep->chgBit(oldp+222,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid));
            tracep->chgBit(oldp+223,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready));
            tracep->chgIData(oldp+224,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc),32);
            tracep->chgIData(oldp+225,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr),24);
            tracep->chgCData(oldp+226,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux),5);
            tracep->chgBit(oldp+227,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready));
            tracep->chgBit(oldp+228,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid));
            tracep->chgIData(oldp+229,((0xfffffffeU 
                                        & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)),32);
            tracep->chgBit(oldp+230,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid));
            tracep->chgIData(oldp+231,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr),32);
            tracep->chgBit(oldp+232,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push));
            tracep->chgBit(oldp+233,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop));
            tracep->chgBit(oldp+234,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state));
            tracep->chgCData(oldp+235,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt),2);
            tracep->chgIData(oldp+236,((0xfffffffcU 
                                        & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)),32);
            tracep->chgBit(oldp+237,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock));
            tracep->chgBit(oldp+238,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n));
            tracep->chgBit(oldp+239,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n));
            tracep->chgCData(oldp+240,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n),2);
            tracep->chgQData(oldp+241,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n),64);
            tracep->chgIData(oldp+243,((0xfffffffcU 
                                        & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr)),32);
            tracep->chgBit(oldp+244,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state));
            tracep->chgCData(oldp+245,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state),3);
            tracep->chgIData(oldp+246,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n),32);
            tracep->chgBit(oldp+247,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state));
            tracep->chgBit(oldp+248,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we));
            tracep->chgBit(oldp+249,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec));
            tracep->chgBit(oldp+250,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec));
            tracep->chgCData(oldp+251,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id),2);
            tracep->chgBit(oldp+252,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall));
            tracep->chgBit(oldp+253,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask));
            tracep->chgBit(oldp+254,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id));
            tracep->chgBit(oldp+255,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__debug_wfi_no_sleep));
            tracep->chgIData(oldp+256,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b),32);
            tracep->chgBit(oldp+257,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_we_id));
            tracep->chgBit(oldp+258,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_en));
            tracep->chgCData(oldp+259,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operator),7);
            tracep->chgCData(oldp+260,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel),3);
            tracep->chgCData(oldp+261,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b_mux_sel),4);
            tracep->chgBit(oldp+262,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_int_en));
            tracep->chgBit(oldp+263,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_we_id));
            tracep->chgBit(oldp+264,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_req_id));
            tracep->chgCData(oldp+265,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)
                                         ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op))),2);
            tracep->chgBit(oldp+266,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status));
            tracep->chgIData(oldp+267,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id),32);
            tracep->chgIData(oldp+268,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id),32);
            tracep->chgIData(oldp+269,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id),32);
            tracep->chgIData(oldp+270,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b),32);
            tracep->chgIData(oldp+271,(((0xffff0000U 
                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b 
                                            << 0x10U)) 
                                        | (0xffffU 
                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b))),32);
            tracep->chgIData(oldp+272,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c),32);
            tracep->chgIData(oldp+273,(((0xffff0000U 
                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c 
                                            << 0x10U)) 
                                        | (0xffffU 
                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c))),32);
            tracep->chgIData(oldp+274,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operand_a),32);
            tracep->chgBit(oldp+275,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__minstret));
            tracep->chgBit(oldp+276,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_illegal));
            tracep->chgCData(oldp+277,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op),2);
            tracep->chgCData(oldp+278,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns),5);
            tracep->chgCData(oldp+279,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns),3);
            tracep->chgBit(oldp+280,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done));
            tracep->chgBit(oldp+281,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec));
            tracep->chgBit(oldp+282,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id));
            tracep->chgBit(oldp+283,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n));
            tracep->chgBit(oldp+284,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode));
            tracep->chgBit(oldp+285,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal));
            tracep->chgBit(oldp+286,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n));
            tracep->chgBit(oldp+287,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n));
            tracep->chgBit(oldp+288,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_n));
            tracep->chgBit(oldp+289,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active));
            tracep->chgIData(oldp+290,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result),32);
            tracep->chgIData(oldp+291,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result),32);
            tracep->chgBit(oldp+292,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready));
            tracep->chgCData(oldp+293,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift),6);
            tracep->chgIData(oldp+294,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left),32);
            tracep->chgIData(oldp+295,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt),32);
            tracep->chgIData(oldp+296,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int),32);
            tracep->chgIData(oldp+297,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result),32);
            tracep->chgIData(oldp+298,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result),32);
            tracep->chgIData(oldp+299,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result),32);
            tracep->chgCData(oldp+300,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result),6);
            tracep->chgIData(oldp+301,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result),32);
            tracep->chgIData(oldp+302,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev),32);
            tracep->chgIData(oldp+303,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev),32);
            tracep->chgIData(oldp+304,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev),32);
            tracep->chgIData(oldp+305,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D),32);
            tracep->chgIData(oldp+306,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D),32);
            tracep->chgBit(oldp+307,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S));
            tracep->chgBit(oldp+308,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S));
            tracep->chgBit(oldp+309,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S));
            tracep->chgBit(oldp+310,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S));
            tracep->chgCData(oldp+311,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN),2);
            tracep->chgQData(oldp+312,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac),34);
            tracep->chgQData(oldp+314,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result),34);
            tracep->chgCData(oldp+316,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS),3);
            tracep->chgIData(oldp+317,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n),32);
            tracep->chgIData(oldp+318,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n),32);
            tracep->chgIData(oldp+319,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n),32);
            tracep->chgIData(oldp+320,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc),32);
            tracep->chgCData(oldp+321,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n),7);
            tracep->chgCData(oldp+322,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n),6);
            tracep->chgIData(oldp+323,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n),24);
            tracep->chgBit(oldp+324,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause) 
                                            >> 5U))));
            tracep->chgCData(oldp+325,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n),2);
            tracep->chgIData(oldp+326,((0x3fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),32);
            tracep->chgBit(oldp+327,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req));
            tracep->chgIData(oldp+328,((0x3fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),22);
            tracep->chgIData(oldp+329,((0x3ffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),22);
            tracep->chgBit(oldp+330,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_push));
        }
        if (VL_UNLIKELY((vlTOPp->__Vm_traceActivity
                         [4U] | vlTOPp->__Vm_traceActivity
                         [6U]))) {
            tracep->chgBit(oldp+331,(((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)) 
                                      | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid))));
            tracep->chgBit(oldp+332,(((((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)) 
                                        | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid)) 
                                       | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy)) 
                                      | ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)) 
                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid)))));
            tracep->chgBit(oldp+333,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                                      & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))));
            tracep->chgCData(oldp+334,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req)
                                         ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))),2);
            tracep->chgCData(oldp+335,((0x3fU & ((0x1fU 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]) 
                                                 - (IData)(1U)))),6);
            tracep->chgCData(oldp+336,((0x1fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U])),5);
            tracep->chgBit(oldp+337,((1U & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes))));
            tracep->chgCData(oldp+338,((0x1fU & ((IData)(0x1fU) 
                                                 - 
                                                 vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]))),5);
            tracep->chgBit(oldp+339,(((0x28U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                      & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                                         >> (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))));
            tracep->chgIData(oldp+340,(((0x2aU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                         ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex
                                         : (- (IData)(
                                                      ((0x28U 
                                                        == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                                       & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                                                          >> (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))))))),32);
            tracep->chgIData(oldp+341,(((0U == (3U 
                                                & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                         ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev
                                         : ((1U == 
                                             (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                             ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev
                                             : ((2U 
                                                 == 
                                                 (3U 
                                                  & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                                 ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev
                                                 : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev)))),32);
            tracep->chgCData(oldp+342,(((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes)
                                         ? (0x3fU & 
                                            ((0x1fU 
                                              & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]) 
                                             - (IData)(1U)))
                                         : 0x1fU)),6);
            tracep->chgIData(oldp+343,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes),32);
            tracep->chgWData(oldp+344,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes),160);
            tracep->chgIData(oldp+349,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                         ? 0U : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S)
                                                  ? 
                                                 (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S) 
                                                   << 0x1fU) 
                                                  | (0x7fffffffU 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP 
                                                        >> 1U)))
                                                  : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP))),32);
            tracep->chgIData(oldp+350,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S)
                                         ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                                             & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                                   & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                       >> 0x1fU) 
                                                      ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))
                                             ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                                + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D)
                                             : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                                - vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D))
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP)),32);
            tracep->chgIData(oldp+351,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S)
                                         ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                             ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
                                             : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP) 
                                                 << 0x1fU) 
                                                | (0x7fffffffU 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP 
                                                      >> 1U))))
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP)),32);
            tracep->chgBit(oldp+352,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                             ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                                >> 1U)
                                             : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP)))));
            tracep->chgBit(oldp+353,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                       ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)
                                       : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP))));
            tracep->chgBit(oldp+354,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                             ? ((((0U 
                                                   != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result)) 
                                                  | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                                     >> 1U)) 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                                & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                    >> 0x1fU) 
                                                   ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))
                                             : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP)))));
            tracep->chgIData(oldp+355,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                                         & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                               & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                   >> 0x1fU) 
                                                  ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))
                                         ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                            + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D)
                                         : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                            - vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D))),32);
            tracep->chgIData(oldp+356,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                         ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
                                         : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP) 
                                             << 0x1fU) 
                                            | (0x7fffffffU 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP 
                                                  >> 1U))))),32);
            tracep->chgCData(oldp+357,((0x3fU & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                                  ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift)
                                                  : 
                                                 ((0U 
                                                   != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP))
                                                   ? 
                                                  ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP) 
                                                   - (IData)(1U))
                                                   : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP))))),6);
            tracep->chgBit(oldp+358,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                                      & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                            & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                >> 0x1fU) 
                                               ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))));
            tracep->chgIData(oldp+359,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a),17);
            tracep->chgIData(oldp+360,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b),17);
            tracep->chgQData(oldp+361,((0x3ffffffffULL 
                                        & VL_MULS_QQQ(34,34,34, 
                                                      (0x3ffffffffULL 
                                                       & VL_EXTENDS_QI(34,17, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a)), 
                                                      (0x3ffffffffULL 
                                                       & VL_EXTENDS_QI(34,17, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b))))),34);
            tracep->chgBit(oldp+363,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                             ? (IData)(
                                                       (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                        >> 0x21U))
                                             : (IData)(
                                                       (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                        >> 0x1fU))))));
            tracep->chgBit(oldp+364,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                             ? (IData)(
                                                       (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                        >> 0x20U))
                                             : (IData)(
                                                       (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                        >> 0x1fU))))));
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[5U])) {
            VL_EXTEND_WI(128,32, __Vtemp81, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o);
            tracep->chgWData(oldp+365,(__Vtemp81),128);
            tracep->chgIData(oldp+369,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o),32);
            tracep->chgIData(oldp+370,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rdata_mux),32);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[6U])) {
            tracep->chgBit(oldp+371,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid));
            tracep->chgIData(oldp+372,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                         ? (0xfffffffcU 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)),32);
            tracep->chgBit(oldp+373,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex));
            tracep->chgCData(oldp+374,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                                         ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                             ? ((1U 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                 ? 8U
                                                 : 4U)
                                             : ((1U 
                                                 & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                 ? 2U
                                                 : 1U))
                                         : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                                             ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                 ? 1U
                                                 : 
                                                ((2U 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                  ? 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 8U
                                                   : 0xcU)
                                                  : 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 6U
                                                   : 3U)))
                                             : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                                 ? 
                                                ((2U 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                  ? 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 7U
                                                   : 3U)
                                                  : 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 1U
                                                   : 0U))
                                                 : 
                                                ((2U 
                                                  & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                  ? 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 8U
                                                   : 0xcU)
                                                  : 
                                                 ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 0xeU
                                                   : 0xfU)))))),4);
            tracep->chgIData(oldp+375,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
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
                                             : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex))),32);
            tracep->chgSData(oldp+376,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_flags_ex),15);
            tracep->chgBit(oldp+377,((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs))));
            tracep->chgBit(oldp+378,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs) 
                                            >> 1U))));
            tracep->chgBit(oldp+379,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs) 
                                            >> 2U))));
            tracep->chgCData(oldp+380,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_atop_ex),6);
            tracep->chgBit(oldp+381,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id));
            tracep->chgIData(oldp+382,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id),32);
            tracep->chgBit(oldp+383,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_compressed_id));
            tracep->chgBit(oldp+384,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__illegal_c_insn_id));
            tracep->chgBit(oldp+385,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id));
            tracep->chgIData(oldp+386,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q),32);
            tracep->chgIData(oldp+387,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id),32);
            tracep->chgBit(oldp+388,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__useincr_addr_ex));
            tracep->chgBit(oldp+389,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned));
            tracep->chgBit(oldp+390,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_multicycle));
            tracep->chgIData(oldp+391,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target),32);
            tracep->chgIData(oldp+392,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex),32);
            tracep->chgBit(oldp+393,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__branch_in_ex));
            tracep->chgBit(oldp+394,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                            >> 3U))));
            tracep->chgBit(oldp+395,(((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)) 
                                      | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid))));
            tracep->chgIData(oldp+396,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_ex),32);
            tracep->chgBit(oldp+397,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_en_ex));
            tracep->chgCData(oldp+398,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex),7);
            tracep->chgIData(oldp+399,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex),32);
            tracep->chgIData(oldp+400,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex),32);
            tracep->chgCData(oldp+401,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex),5);
            tracep->chgCData(oldp+402,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex),5);
            tracep->chgCData(oldp+403,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__imm_vec_ext_ex),2);
            tracep->chgCData(oldp+404,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex),2);
            tracep->chgBit(oldp+405,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex));
            tracep->chgBit(oldp+406,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_subrot_ex));
            tracep->chgCData(oldp+407,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex),2);
            tracep->chgCData(oldp+408,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex),3);
            tracep->chgIData(oldp+409,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex),32);
            tracep->chgIData(oldp+410,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex),32);
            tracep->chgIData(oldp+411,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex),32);
            tracep->chgBit(oldp+412,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex));
            tracep->chgBit(oldp+413,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_sel_subword_ex));
            tracep->chgCData(oldp+414,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_signed_mode_ex),2);
            tracep->chgCData(oldp+415,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex),5);
            tracep->chgIData(oldp+416,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_a_ex),32);
            tracep->chgIData(oldp+417,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_b_ex),32);
            tracep->chgIData(oldp+418,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex),32);
            tracep->chgCData(oldp+419,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_signed_ex),2);
            tracep->chgBit(oldp+420,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex));
            tracep->chgCData(oldp+421,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_clpx_shift_ex),2);
            tracep->chgBit(oldp+422,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex));
            tracep->chgCData(oldp+423,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_op_ex),6);
            tracep->chgCData(oldp+424,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex),2);
            tracep->chgWData(oldp+425,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__id_stage_i__apu_operands_ex_o),96);
            tracep->chgCData(oldp+428,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_waddr_ex),6);
            tracep->chgCData(oldp+429,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex),6);
            tracep->chgBit(oldp+430,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex));
            tracep->chgCData(oldp+431,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu),6);
            tracep->chgBit(oldp+432,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb));
            tracep->chgCData(oldp+433,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex),6);
            tracep->chgBit(oldp+434,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_ex));
            tracep->chgBit(oldp+435,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_fw));
            tracep->chgBit(oldp+436,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_access_ex));
            tracep->chgCData(oldp+437,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_op_ex),2);
            tracep->chgIData(oldp+438,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q),24);
            tracep->chgCData(oldp+439,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_q),2);
            tracep->chgSData(oldp+440,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int),12);
            tracep->chgIData(oldp+441,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_rdata_int),32);
            tracep->chgCData(oldp+442,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex),2);
            tracep->chgCData(oldp+443,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_sign_ext_ex),2);
            tracep->chgCData(oldp+444,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_reg_offset_ex),2);
            tracep->chgBit(oldp+445,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex));
            tracep->chgBit(oldp+446,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex));
            tracep->chgBit(oldp+447,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex));
            tracep->chgBit(oldp+448,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex) 
                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid))));
            tracep->chgBit(oldp+449,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int));
            tracep->chgBit(oldp+450,((1U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                                             >> 5U) 
                                            & (~ (IData)(
                                                         (4U 
                                                          == 
                                                          (0x804U 
                                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q))))))));
            tracep->chgBit(oldp+451,((1U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                                             >> 6U) 
                                            & (~ (IData)(
                                                         (4U 
                                                          == 
                                                          (0x804U 
                                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q))))))));
            tracep->chgIData(oldp+452,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q),32);
            tracep->chgIData(oldp+453,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q),32);
            tracep->chgIData(oldp+454,((((0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                                         & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we))
                                         ? (0xffff0888U 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata)
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q)),32);
            tracep->chgIData(oldp+455,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_q),32);
            tracep->chgBit(oldp+456,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q));
            tracep->chgBit(oldp+457,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                            >> 2U))));
            tracep->chgBit(oldp+458,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                            >> 0xfU))));
            tracep->chgBit(oldp+459,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                            >> 0xcU))));
            tracep->chgBit(oldp+460,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match));
            tracep->chgBit(oldp+461,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_minstret));
            tracep->chgBit(oldp+462,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_load));
            tracep->chgBit(oldp+463,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_store));
            tracep->chgBit(oldp+464,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jump));
            tracep->chgBit(oldp+465,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch));
            tracep->chgBit(oldp+466,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch_taken));
            tracep->chgBit(oldp+467,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_compressed));
            tracep->chgBit(oldp+468,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jr_stall));
            tracep->chgBit(oldp+469,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_imiss));
            tracep->chgBit(oldp+470,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_ld_stall));
            tracep->chgBit(oldp+471,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_pipe_stall));
            tracep->chgBit(oldp+472,((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))));
            tracep->chgCData(oldp+473,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q),2);
            tracep->chgIData(oldp+474,((IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q 
                                                >> 
                                                (0x3fU 
                                                 & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q) 
                                                    << 5U))))),32);
            tracep->chgBit(oldp+475,((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
            tracep->chgBit(oldp+476,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q));
            tracep->chgCData(oldp+477,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q),2);
            tracep->chgCData(oldp+478,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q),2);
            tracep->chgIData(oldp+479,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q),32);
            tracep->chgIData(oldp+480,(((IData)(4U) 
                                        + (0xfffffffcU 
                                           & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q))),32);
            tracep->chgBit(oldp+481,((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
            tracep->chgBit(oldp+482,((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
            tracep->chgBit(oldp+483,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q));
            tracep->chgBit(oldp+484,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q));
            tracep->chgQData(oldp+485,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q),64);
            tracep->chgBit(oldp+487,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_we_o));
            tracep->chgCData(oldp+488,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_be_o),4);
            tracep->chgIData(oldp+489,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_wdata_o),32);
            tracep->chgCData(oldp+490,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_atop_o),6);
            tracep->chgBit(oldp+491,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q));
            tracep->chgIData(oldp+492,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_addr_q),32);
            tracep->chgBit(oldp+493,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_we_q));
            tracep->chgCData(oldp+494,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_be_q),4);
            tracep->chgIData(oldp+495,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_wdata_q),32);
            tracep->chgCData(oldp+496,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_atop_q),6);
            tracep->chgCData(oldp+497,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state),3);
            tracep->chgSData(oldp+498,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h),16);
            tracep->chgIData(oldp+499,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_addr_q),32);
            tracep->chgIData(oldp+500,(((IData)(4U) 
                                        + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)),32);
            tracep->chgIData(oldp+501,(((IData)(2U) 
                                        + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)),32);
            tracep->chgBit(oldp+502,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q));
            tracep->chgBit(oldp+503,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_update_pc_q));
            tracep->chgBit(oldp+504,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec));
            tracep->chgBit(oldp+505,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec));
            tracep->chgBit(oldp+506,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec));
            tracep->chgBit(oldp+507,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec));
            tracep->chgBit(oldp+508,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec));
            tracep->chgBit(oldp+509,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec));
            tracep->chgBit(oldp+510,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__rega_used_dec));
            tracep->chgBit(oldp+511,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec));
            tracep->chgBit(oldp+512,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec));
            tracep->chgBit(oldp+513,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex));
            tracep->chgCData(oldp+514,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn),2);
            tracep->chgBit(oldp+515,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall));
            tracep->chgBit(oldp+516,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access) 
                                      & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex) 
                                         & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex) 
                                            >> 1U)))));
            tracep->chgIData(oldp+517,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_i_type),32);
            tracep->chgIData(oldp+518,((0xfffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 0x14U))),32);
            tracep->chgIData(oldp+519,(((0xfffff000U 
                                         & ((- (IData)(
                                                       (1U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                           >> 0x1fU)))) 
                                            << 0xcU)) 
                                        | ((0xfe0U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x14U)) 
                                           | (0x1fU 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 7U))))),32);
            tracep->chgIData(oldp+520,(((0xffffe000U 
                                         & ((- (IData)(
                                                       (1U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                           >> 0x1fU)))) 
                                            << 0xdU)) 
                                        | ((0x1000U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x13U)) 
                                           | ((0x800U 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  << 4U)) 
                                              | ((0x7e0U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                     >> 0x14U)) 
                                                 | (0x1eU 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                       >> 7U))))))),32);
            tracep->chgIData(oldp+521,((0xfffff000U 
                                        & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id)),32);
            tracep->chgIData(oldp+522,(((0xfff00000U 
                                         & ((- (IData)(
                                                       (1U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                           >> 0x1fU)))) 
                                            << 0x14U)) 
                                        | ((0xff000U 
                                            & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id) 
                                           | ((0x800U 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 9U)) 
                                              | (0x7feU 
                                                 & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                    >> 0x14U)))))),32);
            tracep->chgIData(oldp+523,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0xfU))),32);
            tracep->chgIData(oldp+524,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0x14U))),32);
            tracep->chgIData(oldp+525,(((0xffffffe0U 
                                         & ((- (IData)(
                                                       (1U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                           >> 0x18U)))) 
                                            << 5U)) 
                                        | (0x1fU & 
                                           (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                            >> 0x14U)))),32);
            tracep->chgIData(oldp+526,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0x19U))),32);
            tracep->chgIData(oldp+527,(((0xffffffc0U 
                                         & ((- (IData)(
                                                       (1U 
                                                        & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                           >> 0x18U)))) 
                                            << 6U)) 
                                        | ((0x3eU & 
                                            (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                             >> 0x13U)) 
                                           | (1U & 
                                              (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x19U))))),32);
            tracep->chgIData(oldp+528,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type),32);
            tracep->chgIData(oldp+529,(((0x3000000U 
                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                            >> 3U)) 
                                        | ((0x30000U 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 7U)) 
                                           | ((0x300U 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 0xdU)) 
                                              | ((2U 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                     >> 0x13U)) 
                                                 | (1U 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                       >> 0x19U))))))),32);
            tracep->chgIData(oldp+530,(((0x10000U & 
                                         (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                          >> 4U)) | 
                                        (1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x19U)))),32);
            tracep->chgIData(oldp+531,((((IData)(1U) 
                                         << (0x1fU 
                                             & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                >> 0x14U))) 
                                        - (IData)(1U))),32);
            tracep->chgIData(oldp+532,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a),32);
            tracep->chgBit(oldp+533,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl));
            tracep->chgBit(oldp+534,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q));
            tracep->chgCData(oldp+535,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl),5);
            tracep->chgCData(oldp+536,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0xfU))),6);
            tracep->chgCData(oldp+537,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0x14U))),6);
            tracep->chgCData(oldp+538,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id),6);
            tracep->chgCData(oldp+539,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 7U))),6);
            tracep->chgCData(oldp+540,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id),6);
            tracep->chgBit(oldp+541,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we));
            tracep->chgIData(oldp+542,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_data_ra_id),32);
            tracep->chgIData(oldp+543,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
                                       (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0x14U))]),32);
            tracep->chgIData(oldp+544,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
                                       (0x1fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id))]),32);
            tracep->chgCData(oldp+545,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel),3);
            tracep->chgCData(oldp+546,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel),2);
            tracep->chgCData(oldp+547,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_mux),2);
            tracep->chgBit(oldp+548,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a_mux_sel));
            tracep->chgCData(oldp+549,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_target_mux_sel),2);
            tracep->chgCData(oldp+550,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_operator),3);
            tracep->chgCData(oldp+551,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_signed_mode),2);
            tracep->chgBit(oldp+552,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_mux_sel));
            tracep->chgBit(oldp+553,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_we_id));
            tracep->chgCData(oldp+554,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_type_id),2);
            tracep->chgCData(oldp+555,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_sign_ext_id),2);
            tracep->chgBit(oldp+556,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access));
            tracep->chgBit(oldp+557,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__prepost_useincr));
            tracep->chgCData(oldp+558,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel),2);
            tracep->chgCData(oldp+559,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel),2);
            tracep->chgCData(oldp+560,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel),2);
            tracep->chgCData(oldp+561,((3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type)),2);
            tracep->chgBit(oldp+562,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id));
            tracep->chgBit(oldp+563,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id));
            tracep->chgBit(oldp+564,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id));
            tracep->chgBit(oldp+565,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_wb_is_reg_a_id));
            tracep->chgBit(oldp+566,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu) 
                                        == (0x1fU & 
                                            (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                             >> 0x14U))) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec)) 
                                      & (0U != (0x1fU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                   >> 0x14U))))));
            tracep->chgBit(oldp+567,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu) 
                                        == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec)) 
                                      & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)))));
            tracep->chgBit(oldp+568,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_alu_is_reg_a_id));
            tracep->chgBit(oldp+569,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex) 
                                        == (0x1fU & 
                                            (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                             >> 0x14U))) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec)) 
                                      & (0U != (0x1fU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                   >> 0x14U))))));
            tracep->chgBit(oldp+570,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex) 
                                        == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec)) 
                                      & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)))));
            tracep->chgBit(oldp+571,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec));
            tracep->chgBit(oldp+572,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec));
            tracep->chgBit(oldp+573,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_dec));
            tracep->chgBit(oldp+574,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__id_valid_q));
            tracep->chgBit(oldp+575,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall));
            tracep->chgWData(oldp+576,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem),1024);
            tracep->chgIData(oldp+608,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_a_dec),32);
            tracep->chgIData(oldp+609,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_b_dec),32);
            tracep->chgBit(oldp+610,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_mem_we));
            tracep->chgBit(oldp+611,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__data_req));
            tracep->chgBit(oldp+612,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__alu_en));
            tracep->chgBit(oldp+613,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__mult_int_en));
            tracep->chgCData(oldp+614,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs),5);
            tracep->chgCData(oldp+615,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs),3);
            tracep->chgBit(oldp+616,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q));
            tracep->chgBit(oldp+617,((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn))));
            tracep->chgBit(oldp+618,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q));
            tracep->chgBit(oldp+619,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q));
            tracep->chgBit(oldp+620,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q));
            tracep->chgBit(oldp+621,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_q));
            tracep->chgIData(oldp+622,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_local_qual),32);
            tracep->chgBit(oldp+623,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_we_lsu));
            tracep->chgBit(oldp+624,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_ready));
            tracep->chgIData(oldp+625,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_rev),32);
            tracep->chgIData(oldp+626,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex)),32);
            tracep->chgIData(oldp+627,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_neg_rev),32);
            tracep->chgIData(oldp+628,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)),32);
            tracep->chgBit(oldp+629,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid));
            tracep->chgIData(oldp+630,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask),32);
            tracep->chgBit(oldp+631,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b_negate));
            tracep->chgIData(oldp+632,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_a),32);
            tracep->chgIData(oldp+633,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b),32);
            tracep->chgQData(oldp+634,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_a),36);
            tracep->chgQData(oldp+636,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_b),36);
            tracep->chgIData(oldp+638,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result),32);
            tracep->chgQData(oldp+639,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded),37);
            tracep->chgIData(oldp+641,((((((0x1cU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                           | (0x1dU 
                                              == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                          | (0x1eU 
                                             == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                         | (0x1fU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))
                                         ? (0x7fffffffU 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
                                               >> 1U))
                                         : 0U)),32);
            tracep->chgIData(oldp+642,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result 
                                        + (((((0x1cU 
                                               == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                              | (0x1dU 
                                                 == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                             | (0x1eU 
                                                == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                            | (0x1fU 
                                               == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))
                                            ? (0x7fffffffU 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
                                                  >> 1U))
                                            : 0U))),32);
            tracep->chgBit(oldp+643,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left));
            tracep->chgBit(oldp+644,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round));
            tracep->chgBit(oldp+645,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic));
            tracep->chgIData(oldp+646,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex)
                                         ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex) 
                                             << 0x10U) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex))
                                         : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                                             << 0x18U) 
                                            | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                                                << 0x10U) 
                                               | (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex) 
                                                   << 8U) 
                                                  | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex)))))),32);
            tracep->chgIData(oldp+647,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a),32);
            tracep->chgSData(oldp+648,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex),16);
            tracep->chgQData(oldp+649,(((0x26U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                         ? (((QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)) 
                                             << 0x20U) 
                                            | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a)))
                                         : (((QData)((IData)(
                                                             (- (IData)(
                                                                        ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic) 
                                                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a 
                                                                            >> 0x1fU)))))) 
                                             << 0x20U) 
                                            | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a))))),64);
            tracep->chgCData(oldp+651,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal),4);
            tracep->chgCData(oldp+652,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater),4);
            tracep->chgCData(oldp+653,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed),4);
            tracep->chgCData(oldp+654,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_vec),4);
            tracep->chgCData(oldp+655,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater_vec),4);
            tracep->chgIData(oldp+656,(((0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                         ? 0U : (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex))),32);
            tracep->chgBit(oldp+657,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip));
            tracep->chgCData(oldp+658,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result),4);
            tracep->chgIData(oldp+659,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax),32);
            tracep->chgCData(oldp+660,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax),4);
            tracep->chgBit(oldp+661,(((((0x10U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                        | (0x11U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                       | (0x16U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                      | (0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))));
            tracep->chgIData(oldp+662,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b),32);
            tracep->chgIData(oldp+663,(((0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                         ? ((1U & (
                                                   (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                                    >> 0x1fU) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                             ? 0U : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax)
                                         : ((1U & ((IData)(
                                                           (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                                            >> 0x24U)) 
                                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                             ? (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)
                                             : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax))),32);
            tracep->chgCData(oldp+664,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_byte_sel),8);
            tracep->chgCData(oldp+665,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg_sel),4);
            tracep->chgCData(oldp+666,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg1_sel),2);
            tracep->chgCData(oldp+667,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg0_sel),2);
            tracep->chgCData(oldp+668,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through),4);
            tracep->chgIData(oldp+669,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1),32);
            tracep->chgIData(oldp+670,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0),32);
            tracep->chgIData(oldp+671,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1_in),32);
            tracep->chgIData(oldp+672,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0_in),32);
            tracep->chgIData(oldp+673,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result),32);
            tracep->chgIData(oldp+674,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result),32);
            tracep->chgIData(oldp+675,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_input),32);
            tracep->chgCData(oldp+676,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result),6);
            tracep->chgBit(oldp+677,((0x28U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))));
            tracep->chgIData(oldp+678,(((IData)(0xfffffffeU) 
                                        << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))),32);
            tracep->chgIData(oldp+679,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)),32);
            tracep->chgIData(oldp+680,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                        & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask))),32);
            tracep->chgIData(oldp+681,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                        | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)),32);
            tracep->chgCData(oldp+682,((3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))),2);
            tracep->chgIData(oldp+683,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP)
                                         ? (- vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D)
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D)),32);
            tracep->chgBit(oldp+684,((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))));
            tracep->chgBit(oldp+685,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed));
            tracep->chgIData(oldp+686,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l1),32);
            tracep->chgIData(oldp+687,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l2),24);
            tracep->chgSData(oldp+688,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l3),16);
            tracep->chgSData(oldp+689,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4),10);
            tracep->chgBit(oldp+690,((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result))));
            tracep->chgCData(oldp+691,((3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))),2);
            tracep->chgIData(oldp+692,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP),32);
            tracep->chgIData(oldp+693,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP_rev),32);
            tracep->chgIData(oldp+694,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP),32);
            tracep->chgIData(oldp+695,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP),32);
            tracep->chgBit(oldp+696,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP));
            tracep->chgBit(oldp+697,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP));
            tracep->chgBit(oldp+698,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP));
            tracep->chgIData(oldp+699,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D),32);
            tracep->chgCData(oldp+700,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP),6);
            tracep->chgBit(oldp+701,((1U & (~ (IData)(
                                                      (0U 
                                                       != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP)))))));
            tracep->chgBit(oldp+702,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S));
            tracep->chgCData(oldp+703,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SP),2);
            tracep->chgQData(oldp+704,((0x1ffffffffULL 
                                        & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                            ? (((QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q)) 
                                                << 0x20U) 
                                               | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex)))
                                            : VL_EXTENDS_QI(33,32, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex)))),33);
            tracep->chgIData(oldp+706,(((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))
                                         ? (0x7fffffffU 
                                            & (((IData)(1U) 
                                                << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex)) 
                                               >> 1U))
                                         : 0U)),32);
            tracep->chgIData(oldp+707,(((IData)(1U) 
                                        << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex))),32);
            tracep->chgCData(oldp+708,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                         ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm)
                                         : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex))),5);
            tracep->chgCData(oldp+709,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_subword),2);
            tracep->chgCData(oldp+710,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_signed),2);
            tracep->chgBit(oldp+711,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith));
            tracep->chgCData(oldp+712,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm),5);
            tracep->chgCData(oldp+713,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_subword),2);
            tracep->chgCData(oldp+714,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_signed),2);
            tracep->chgBit(oldp+715,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_shift_arith));
            tracep->chgBit(oldp+716,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q));
            tracep->chgBit(oldp+717,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active));
            tracep->chgBit(oldp+718,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_save));
            tracep->chgBit(oldp+719,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_clearcarry));
            tracep->chgCData(oldp+720,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS),3);
            tracep->chgIData(oldp+721,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex 
                                        ^ (- (IData)(
                                                     (1U 
                                                      == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))),32);
            tracep->chgIData(oldp+722,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex 
                                        & (- (IData)(
                                                     (1U 
                                                      == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))),32);
            tracep->chgIData(oldp+723,(((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex 
                                         + (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex 
                                            & (- (IData)(
                                                         (1U 
                                                          == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))) 
                                        + VL_MULS_III(32,32,32, 
                                                      (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex 
                                                       ^ 
                                                       (- (IData)(
                                                                  (1U 
                                                                   == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))))), vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex))),32);
            tracep->chgBit(oldp+724,((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))));
            tracep->chgIData(oldp+725,(((((VL_EXTENDS_II(32,18, 
                                                         (0x3ffffU 
                                                          & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[0U])) 
                                           + VL_EXTENDS_II(32,18, 
                                                           (0x3ffffU 
                                                            & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                                << 0xeU) 
                                                               | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[0U] 
                                                                  >> 0x12U))))) 
                                          + VL_EXTENDS_II(32,18, 
                                                          (0x3ffffU 
                                                           & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[2U] 
                                                               << 0x1cU) 
                                                              | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                                 >> 4U))))) 
                                         + VL_EXTENDS_II(32,18, 
                                                         (0x3ffffU 
                                                          & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[2U] 
                                                              << 0xaU) 
                                                             | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[1U] 
                                                                >> 0x16U))))) 
                                        + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex)),32);
            tracep->chgQData(oldp+726,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_result),33);
            tracep->chgIData(oldp+728,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex)
                                         ? (VL_EXTENDS_II(32,17, 
                                                          (0x1ffffU 
                                                           & (IData)(
                                                                     (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b 
                                                                      >> 0x11U)))) 
                                            & (- (IData)(
                                                         (1U 
                                                          & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex))))))
                                         : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex)),32);
            tracep->chgSData(oldp+729,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result),16);
            tracep->chgQData(oldp+730,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_a),36);
            tracep->chgQData(oldp+732,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_b),36);
            tracep->chgWData(oldp+734,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul),72);
            tracep->chgQData(oldp+737,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a),34);
            tracep->chgQData(oldp+739,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b),34);
            tracep->chgWData(oldp+741,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_mul),68);
            tracep->chgIData(oldp+744,((0x1ffffU & (IData)(
                                                           (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a 
                                                            >> 0x11U)))),17);
            tracep->chgIData(oldp+745,(VL_EXTENDS_II(32,17, 
                                                     (0x1ffffU 
                                                      & (IData)(
                                                                (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b 
                                                                 >> 0x11U))))),32);
            tracep->chgCData(oldp+746,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q),2);
            tracep->chgIData(oldp+747,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int),32);
            tracep->chgCData(oldp+748,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_type_q),2);
            tracep->chgCData(oldp+749,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q),2);
            tracep->chgCData(oldp+750,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_sign_ext_q),2);
            tracep->chgBit(oldp+751,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_we_q));
            tracep->chgBit(oldp+752,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q));
            tracep->chgCData(oldp+753,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset),2);
            tracep->chgIData(oldp+754,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q),32);
            tracep->chgIData(oldp+755,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int),32);
            tracep->chgBit(oldp+756,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int));
            tracep->chgCData(oldp+757,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_q),3);
            tracep->chgCData(oldp+758,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_n),3);
            tracep->chgCData(oldp+759,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_q),5);
            tracep->chgCData(oldp+760,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_n),5);
            tracep->chgIData(oldp+761,((0x28001040U 
                                        | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q) 
                                           << 2U))),32);
            tracep->chgIData(oldp+762,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_value_q),32);
            tracep->chgIData(oldp+763,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q),32);
            tracep->chgIData(oldp+764,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_q),32);
            tracep->chgIData(oldp+765,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_n),32);
            tracep->chgIData(oldp+766,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_q),32);
            tracep->chgIData(oldp+767,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_n),32);
            tracep->chgIData(oldp+768,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_q),32);
            tracep->chgIData(oldp+769,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_n),32);
            tracep->chgCData(oldp+770,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q),7);
            tracep->chgCData(oldp+771,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_q),6);
            tracep->chgCData(oldp+772,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_n),2);
            tracep->chgIData(oldp+773,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q),32);
            tracep->chgIData(oldp+774,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_n),32);
            tracep->chgIData(oldp+775,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata),32);
            tracep->chgBit(oldp+776,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we));
            tracep->chgWData(oldp+777,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_q),2048);
            tracep->chgWData(oldp+841,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_q),1024);
            tracep->chgWData(oldp+873,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_n),1024);
            tracep->chgIData(oldp+905,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_q),32);
            tracep->chgIData(oldp+906,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_n),32);
            tracep->chgSData(oldp+907,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__hpm_events),16);
            tracep->chgWData(oldp+908,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_increment),2048);
            tracep->chgIData(oldp+972,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_lower),32);
            tracep->chgIData(oldp+973,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_upper),32);
            tracep->chgIData(oldp+974,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_increment),32);
            tracep->chgBit(oldp+975,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                      & (0x306U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
            tracep->chgBit(oldp+976,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                      & (0x320U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
            tracep->chgBit(oldp+977,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_we));
            tracep->chgBit(oldp+978,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q));
            tracep->chgBit(oldp+979,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)) 
                                      & (0x7a1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
            tracep->chgBit(oldp+980,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                       & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)) 
                                      & (0x7a2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
            tracep->chgIData(oldp+981,((0xfffffffcU 
                                        & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                            ? (0xfffffffcU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                            : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))),32);
        }
        if (VL_UNLIKELY(vlTOPp->__Vm_traceActivity[7U])) {
            tracep->chgBit(oldp+982,(vlTOPp->tb_top_verilator__DOT__exit_valid));
            tracep->chgIData(oldp+983,(vlTOPp->tb_top_verilator__DOT__exit_value),32);
            tracep->chgBit(oldp+984,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt));
            tracep->chgIData(oldp+985,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata),32);
            tracep->chgBit(oldp+986,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb));
            tracep->chgBit(oldp+987,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_ex));
            tracep->chgIData(oldp+988,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata),32);
            tracep->chgBit(oldp+989,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__illegal_c_insn));
            tracep->chgIData(oldp+990,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned),32);
            tracep->chgIData(oldp+991,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_decompressed),32);
            tracep->chgBit(oldp+992,((3U != (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned))));
            tracep->chgBit(oldp+993,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__ctrl_update));
            tracep->chgIData(oldp+994,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_rdata_ext),32);
            tracep->chgIData(oldp+995,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_h_ext),32);
            tracep->chgIData(oldp+996,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_b_ext),32);
            tracep->chgCData(oldp+997,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d),3);
            tracep->chgBit(oldp+998,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction));
            tracep->chgBit(oldp+999,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req));
            tracep->chgIData(oldp+1000,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec),22);
            tracep->chgIData(oldp+1001,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec),32);
            tracep->chgBit(oldp+1002,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec));
            tracep->chgCData(oldp+1003,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec),4);
            tracep->chgBit(oldp+1004,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec));
            tracep->chgIData(oldp+1005,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata),32);
            tracep->chgBit(oldp+1006,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid));
            tracep->chgIData(oldp+1007,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d),32);
            tracep->chgIData(oldp+1008,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d),32);
            tracep->chgBit(oldp+1009,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid));
            tracep->chgBit(oldp+1010,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid));
            tracep->chgIData(oldp+1011,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata),32);
            tracep->chgBit(oldp+1012,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear));
            tracep->chgIData(oldp+1013,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata),32);
            tracep->chgBit(oldp+1014,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid));
            tracep->chgBit(oldp+1015,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req));
            tracep->chgIData(oldp+1016,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr),32);
            tracep->chgIData(oldp+1017,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata),32);
            tracep->chgBit(oldp+1018,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we));
            tracep->chgBit(oldp+1019,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req));
            tracep->chgBit(oldp+1020,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file));
            tracep->chgIData(oldp+1021,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd),32);
            tracep->chgIData(oldp+1022,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr),32);
            tracep->chgIData(oldp+1023,((0x3ffffcU 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec)),22);
            tracep->chgBit(oldp+1024,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_push));
        }
        tracep->chgBit(oldp+1025,(vlTOPp->clk_i));
        tracep->chgBit(oldp+1026,(vlTOPp->rst_ni));
        tracep->chgBit(oldp+1027,(vlTOPp->fetch_enable_i));
        tracep->chgBit(oldp+1028,(vlTOPp->tests_passed_o));
        tracep->chgBit(oldp+1029,(vlTOPp->tests_failed_o));
        tracep->chgBit(oldp+1030,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid));
        tracep->chgIData(oldp+1031,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata),32);
        tracep->chgBit(oldp+1032,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                   & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                         & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q)))))));
        tracep->chgBit(oldp+1033,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)) 
                                   & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)))));
        tracep->chgBit(oldp+1034,((1U & ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q) 
                                           | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q)) 
                                          | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                             >> 2U)) 
                                         | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)))));
        tracep->chgBit(oldp+1035,(((IData)(vlTOPp->fetch_enable_i) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q))));
        tracep->chgBit(oldp+1036,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                   & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep) 
                                      | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q)))));
        tracep->chgCData(oldp+1037,((3U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                                            & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))
                                            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                                                ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)
                                                : ((IData)(1U) 
                                                   + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)))
                                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                                                ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q) 
                                                   - (IData)(1U))
                                                : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q))))),2);
        tracep->chgCData(oldp+1038,((3U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid) 
                                            & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt))
                                            ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)
                                                ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)
                                                : ((IData)(1U) 
                                                   + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)))
                                            : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)
                                                ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q) 
                                                   - (IData)(1U))
                                                : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q))))),2);
        tracep->chgBit(oldp+1039,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid) 
                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt))));
        tracep->chgIData(oldp+1040,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q))
                                      ? ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q))
                                          ? ((0xffffff00U 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata 
                                                 << 8U)) 
                                             | (0xffU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q 
                                                   >> 0x18U)))
                                          : ((0xffff0000U 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata 
                                                 << 0x10U)) 
                                             | (0xffffU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q 
                                                   >> 0x10U))))
                                      : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q))
                                          ? ((0xff000000U 
                                              & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata 
                                                 << 0x18U)) 
                                             | (0xffffffU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q 
                                                   >> 8U)))
                                          : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata))),32);
        tracep->chgIData(oldp+1041,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__i),32);
    }
}

void Vtb_top_verilator::traceCleanup(void* userp, VerilatedVcd* /*unused*/) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlTOPp->__Vm_traceActivity[0U] = 0U;
        vlTOPp->__Vm_traceActivity[1U] = 0U;
        vlTOPp->__Vm_traceActivity[2U] = 0U;
        vlTOPp->__Vm_traceActivity[3U] = 0U;
        vlTOPp->__Vm_traceActivity[4U] = 0U;
        vlTOPp->__Vm_traceActivity[5U] = 0U;
        vlTOPp->__Vm_traceActivity[6U] = 0U;
        vlTOPp->__Vm_traceActivity[7U] = 0U;
    }
}
