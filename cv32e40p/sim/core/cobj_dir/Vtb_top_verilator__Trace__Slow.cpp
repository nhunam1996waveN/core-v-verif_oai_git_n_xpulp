// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_top_verilator__Syms.h"


//======================

void Vtb_top_verilator::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, __VlSymsp);
    traceRegister(tfp->spTrace());
}

void Vtb_top_verilator::traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    if (!Verilated::calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
                        "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vtb_top_verilator::traceInitTop(vlSymsp, tracep);
    tracep->scopeEscape('.');
}

//======================


void Vtb_top_verilator::traceInitTop(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceInitSub0(userp, tracep);
    }
}

void Vtb_top_verilator::traceInitSub0(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+1026,"clk_i", false,-1);
        tracep->declBit(c+1027,"rst_ni", false,-1);
        tracep->declBit(c+1028,"fetch_enable_i", false,-1);
        tracep->declBit(c+1029,"tests_passed_o", false,-1);
        tracep->declBit(c+1030,"tests_failed_o", false,-1);
        tracep->declBus(c+1043,"tb_top_verilator INSTR_RDATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1044,"tb_top_verilator RAM_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1045,"tb_top_verilator BOOT_ADDR", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator rst_ni", false,-1);
        tracep->declBit(c+1028,"tb_top_verilator fetch_enable_i", false,-1);
        tracep->declBit(c+1029,"tb_top_verilator tests_passed_o", false,-1);
        tracep->declBit(c+1030,"tb_top_verilator tests_failed_o", false,-1);
        tracep->declBus(c+70,"tb_top_verilator cycle_cnt_q", false,-1, 31,0);
        tracep->declBit(c+983,"tb_top_verilator exit_valid", false,-1);
        tracep->declBus(c+984,"tb_top_verilator exit_value", false,-1, 31,0);
        tracep->declArray(c+1,"tb_top_verilator load_prog firmware", false,-1, 1023,0);
        tracep->declBus(c+33,"tb_top_verilator load_prog prog_size", false,-1, 31,0);
        tracep->declBus(c+71,"tb_top_verilator unnamedblk1 maxcycles", false,-1, 31,0);
        tracep->declBus(c+1043,"tb_top_verilator cv32e40p_tb_wrapper_i INSTR_RDATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1044,"tb_top_verilator cv32e40p_tb_wrapper_i RAM_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1045,"tb_top_verilator cv32e40p_tb_wrapper_i BOOT_ADDR", false,-1, 31,0);
        tracep->declBus(c+1046,"tb_top_verilator cv32e40p_tb_wrapper_i DM_HALTADDRESS", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i HART_ID", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i PULP_ZFINX", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i NUM_MHPMCOUNTERS", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i rst_ni", false,-1);
        tracep->declBit(c+1028,"tb_top_verilator cv32e40p_tb_wrapper_i fetch_enable_i", false,-1);
        tracep->declBit(c+1029,"tb_top_verilator cv32e40p_tb_wrapper_i tests_passed_o", false,-1);
        tracep->declBit(c+1030,"tb_top_verilator cv32e40p_tb_wrapper_i tests_failed_o", false,-1);
        tracep->declBus(c+984,"tb_top_verilator cv32e40p_tb_wrapper_i exit_value_o", false,-1, 31,0);
        tracep->declBit(c+983,"tb_top_verilator cv32e40p_tb_wrapper_i exit_valid_o", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i instr_req", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i instr_gnt", false,-1);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i instr_rvalid", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i instr_addr", false,-1, 31,0);
        tracep->declArray(c+366,"tb_top_verilator cv32e40p_tb_wrapper_i instr_rdata", false,-1, 127,0);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i data_req", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i data_gnt", false,-1);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i data_rvalid", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i data_addr", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i data_we", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i data_be", false,-1, 3,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i data_rdata", false,-1, 31,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i data_wdata", false,-1, 31,0);
        tracep->declBit(c+73,"tb_top_verilator cv32e40p_tb_wrapper_i debug_req", false,-1);
        tracep->declBus(c+74,"tb_top_verilator cv32e40p_tb_wrapper_i irq", false,-1, 0,31);
        tracep->declBus(c+1050,"tb_top_verilator cv32e40p_tb_wrapper_i irq_id_in", false,-1, 0,4);
        tracep->declBit(c+187,"tb_top_verilator cv32e40p_tb_wrapper_i irq_ack", false,-1);
        tracep->declBus(c+188,"tb_top_verilator cv32e40p_tb_wrapper_i irq_id_out", false,-1, 0,4);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i irq_sec", false,-1);
        tracep->declBit(c+1033,"tb_top_verilator cv32e40p_tb_wrapper_i core_sleep_o", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i PULP_ZFINX", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i NUM_MHPMCOUNTERS", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i rst_ni", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pulp_clock_en_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i scan_cg_en_i", false,-1);
        tracep->declBus(c+1045,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i boot_addr_i", false,-1, 31,0);
        tracep->declBus(c+1053,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mtvec_addr_i", false,-1, 31,0);
        tracep->declBus(c+1046,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i dm_halt_addr_i", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hart_id_i", false,-1, 31,0);
        tracep->declBus(c+1054,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i dm_exception_addr_i", false,-1, 31,0);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_req_o", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_gnt_i", false,-1);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_rvalid_i", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_addr_o", false,-1, 31,0);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_rdata_i", false,-1, 31,0);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_req_o", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_gnt_i", false,-1);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_rvalid_i", false,-1);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_we_o", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_be_o", false,-1, 3,0);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_addr_o", false,-1, 31,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_wdata_o", false,-1, 31,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_rdata_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_req_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_gnt_i", false,-1);
        tracep->declArray(c+34,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_operands_o", false,-1, 95,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_op_o", false,-1, 5,0);
        tracep->declBus(c+377,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_flags_o", false,-1, 14,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_rvalid_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_result_i", false,-1, 31,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_flags_i", false,-1, 4,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i irq_i", false,-1, 31,0);
        tracep->declBit(c+187,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i irq_ack_o", false,-1);
        tracep->declBus(c+188,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i irq_id_o", false,-1, 4,0);
        tracep->declBit(c+73,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_req_i", false,-1);
        tracep->declBit(c+378,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_havereset_o", false,-1);
        tracep->declBit(c+379,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_running_o", false,-1);
        tracep->declBit(c+380,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_halted_o", false,-1);
        tracep->declBit(c+1028,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i fetch_enable_i", false,-1);
        tracep->declBit(c+1033,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i core_sleep_o", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i PULP_SECURE", false,-1, 31,0);
        tracep->declBus(c+1057,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i N_PMP_ENTRIES", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i USE_PMP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i A_EXTENSION", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i DEBUG_TRIGGER_EN", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i PULP_OBI", false,-1, 31,0);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_atop_o", false,-1, 5,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i irq_sec_i", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sec_lvl_o", false,-1);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i N_HWLP", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i N_HWLP_BITS", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i APU", false,-1, 31,0);
        tracep->declBit(c+382,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_valid_id", false,-1);
        tracep->declBus(c+383,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_rdata_id", false,-1, 31,0);
        tracep->declBit(c+384,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i is_compressed_id", false,-1);
        tracep->declBit(c+385,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i illegal_c_insn_id", false,-1);
        tracep->declBit(c+386,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i is_fetch_failed_id", false,-1);
        tracep->declBit(c+189,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i clear_instr_valid", false,-1);
        tracep->declBit(c+190,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pc_set", false,-1);
        tracep->declBus(c+191,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pc_mux_id", false,-1, 3,0);
        tracep->declBus(c+192,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i exc_pc_mux_id", false,-1, 2,0);
        tracep->declBus(c+193,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i m_exc_vec_pc_mux_id", false,-1, 4,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i u_exc_vec_pc_mux_id", false,-1, 4,0);
        tracep->declBus(c+194,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i exc_cause", false,-1, 4,0);
        tracep->declBus(c+195,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i trap_addr_mux", false,-1, 1,0);
        tracep->declBus(c+387,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pc_if", false,-1, 31,0);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pc_id", false,-1, 31,0);
        tracep->declBit(c+196,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i is_decoding", false,-1);
        tracep->declBit(c+389,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i useincr_addr_ex", false,-1);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_misaligned", false,-1);
        tracep->declBit(c+391,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_multicycle", false,-1);
        tracep->declBus(c+392,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i jump_target_id", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i jump_target_ex", false,-1, 31,0);
        tracep->declBit(c+394,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i branch_in_ex", false,-1);
        tracep->declBit(c+395,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i branch_decision", false,-1);
        tracep->declBit(c+197,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ctrl_busy", false,-1);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_busy", false,-1);
        tracep->declBit(c+396,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i lsu_busy", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_busy", false,-1);
        tracep->declBus(c+397,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pc_ex", false,-1, 31,0);
        tracep->declBit(c+398,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_en_ex", false,-1);
        tracep->declBus(c+399,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_operator_ex", false,-1, 6,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_operand_a_ex", false,-1, 31,0);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_operand_b_ex", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_operand_c_ex", false,-1, 31,0);
        tracep->declBus(c+402,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i bmask_a_ex", false,-1, 4,0);
        tracep->declBus(c+403,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i bmask_b_ex", false,-1, 4,0);
        tracep->declBus(c+404,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i imm_vec_ext_ex", false,-1, 1,0);
        tracep->declBus(c+405,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_vec_mode_ex", false,-1, 1,0);
        tracep->declBit(c+406,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_is_clpx_ex", false,-1);
        tracep->declBit(c+407,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_is_subrot_ex", false,-1);
        tracep->declBus(c+408,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i alu_clpx_shift_ex", false,-1, 1,0);
        tracep->declBus(c+409,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_operator_ex", false,-1, 2,0);
        tracep->declBus(c+410,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_operand_a_ex", false,-1, 31,0);
        tracep->declBus(c+411,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_operand_b_ex", false,-1, 31,0);
        tracep->declBus(c+412,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_operand_c_ex", false,-1, 31,0);
        tracep->declBit(c+413,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_en_ex", false,-1);
        tracep->declBit(c+414,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_sel_subword_ex", false,-1);
        tracep->declBus(c+415,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_signed_mode_ex", false,-1, 1,0);
        tracep->declBus(c+416,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_imm_ex", false,-1, 4,0);
        tracep->declBus(c+417,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_dot_op_a_ex", false,-1, 31,0);
        tracep->declBus(c+418,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_dot_op_b_ex", false,-1, 31,0);
        tracep->declBus(c+419,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_dot_op_c_ex", false,-1, 31,0);
        tracep->declBus(c+420,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_dot_signed_ex", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_is_clpx_ex", false,-1);
        tracep->declBus(c+422,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_clpx_shift_ex", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mult_clpx_img_ex", false,-1);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i frm_csr", false,-1, 2,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i fflags_csr", false,-1, 4,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i fflags_we", false,-1);
        tracep->declBit(c+423,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_en_ex", false,-1);
        tracep->declBus(c+377,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_flags_ex", false,-1, 14,0);
        tracep->declBus(c+424,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_op_ex", false,-1, 5,0);
        tracep->declBus(c+425,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_lat_ex", false,-1, 1,0);
        tracep->declArray(c+426,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_operands_ex", false,-1, 95,0);
        tracep->declBus(c+429,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_waddr_ex", false,-1, 5,0);
        tracep->declBus(c+1060,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_read_regs", false,-1, 17,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_read_regs_valid", false,-1, 2,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_read_dep", false,-1);
        tracep->declBus(c+1061,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_write_regs", false,-1, 11,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_write_regs_valid", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_write_dep", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i perf_apu_type", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i perf_apu_cont", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i perf_apu_dep", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i perf_apu_wb", false,-1);
        tracep->declBus(c+430,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_waddr_ex", false,-1, 5,0);
        tracep->declBit(c+431,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_we_ex", false,-1);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_waddr_fw_wb_o", false,-1, 5,0);
        tracep->declBit(c+433,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_we_wb", false,-1);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_wdata", false,-1, 31,0);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_alu_waddr_ex", false,-1, 5,0);
        tracep->declBit(c+435,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_alu_we_ex", false,-1);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_alu_waddr_fw", false,-1, 5,0);
        tracep->declBit(c+436,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_alu_we_fw", false,-1);
        tracep->declBus(c+198,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i regfile_alu_wdata_fw", false,-1, 31,0);
        tracep->declBit(c+437,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_access_ex", false,-1);
        tracep->declBus(c+438,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_op_ex", false,-1, 1,0);
        tracep->declBus(c+439,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mtvec", false,-1, 23,0);
        tracep->declBus(c+1063,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i utvec", false,-1, 23,0);
        tracep->declBus(c+440,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mtvec_mode", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i utvec_mode", false,-1, 1,0);
        tracep->declBus(c+438,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_op", false,-1, 1,0);
        tracep->declBus(c+441,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_addr", false,-1, 11,0);
        tracep->declBus(c+441,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_addr_int", false,-1, 11,0);
        tracep->declBus(c+442,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_rdata", false,-1, 31,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_wdata", false,-1, 31,0);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i current_priv_lvl", false,-1, 1,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_we_ex", false,-1);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_atop_ex", false,-1, 5,0);
        tracep->declBus(c+443,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_type_ex", false,-1, 1,0);
        tracep->declBus(c+444,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_sign_ext_ex", false,-1, 1,0);
        tracep->declBus(c+445,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_reg_offset_ex", false,-1, 1,0);
        tracep->declBit(c+446,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_req_ex", false,-1);
        tracep->declBit(c+447,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_load_event_ex", false,-1);
        tracep->declBit(c+448,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_misaligned_ex", false,-1);
        tracep->declBit(c+449,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i p_elw_start", false,-1);
        tracep->declBit(c+1034,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i p_elw_finish", false,-1);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i lsu_rdata", false,-1, 31,0);
        tracep->declBit(c+199,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i halt_if", false,-1);
        tracep->declBit(c+200,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_ready", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_ready", false,-1);
        tracep->declBit(c+202,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_valid", false,-1);
        tracep->declBit(c+203,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_valid", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i wb_valid", false,-1);
        tracep->declBit(c+988,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i lsu_ready_ex", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i lsu_ready_wb", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i apu_ready_wb", false,-1);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_req_int", false,-1);
        tracep->declBit(c+451,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i m_irq_enable", false,-1);
        tracep->declBit(c+452,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i u_irq_enable", false,-1);
        tracep->declBit(c+204,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_irq_sec", false,-1);
        tracep->declBus(c+453,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mepc", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i uepc", false,-1, 31,0);
        tracep->declBus(c+454,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i depc", false,-1, 31,0);
        tracep->declBus(c+455,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mie_bypass", false,-1, 31,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mip", false,-1, 31,0);
        tracep->declBit(c+205,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_save_cause", false,-1);
        tracep->declBit(c+206,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_save_if", false,-1);
        tracep->declBit(c+207,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_save_id", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_save_ex", false,-1);
        tracep->declBus(c+208,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_cause", false,-1, 5,0);
        tracep->declBit(c+209,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_restore_mret_id", false,-1);
        tracep->declBit(c+210,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_restore_uret_id", false,-1);
        tracep->declBit(c+211,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_restore_dret_id", false,-1);
        tracep->declBit(c+212,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_mtvec_init", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mcounteren", false,-1, 31,0);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_mode", false,-1);
        tracep->declBus(c+213,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_cause", false,-1, 2,0);
        tracep->declBit(c+214,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_csr_save", false,-1);
        tracep->declBit(c+458,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_single_step", false,-1);
        tracep->declBit(c+459,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_ebreakm", false,-1);
        tracep->declBit(c+460,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_ebreaku", false,-1);
        tracep->declBit(c+461,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i trigger_match", false,-1);
        tracep->declBit(c+1035,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i debug_p_elw_no_sleep", false,-1);
        tracep->declQuad(c+1065,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hwlp_start", false,-1, 63,0);
        tracep->declQuad(c+1067,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hwlp_end", false,-1, 63,0);
        tracep->declQuad(c+1069,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hwlp_cnt", false,-1, 63,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hwlp_target", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i hwlp_jump", false,-1);
        tracep->declBus(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_hwlp_regid", false,-1, 0,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_hwlp_we", false,-1, 2,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i csr_hwlp_data", false,-1, 31,0);
        tracep->declBit(c+462,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_minstret", false,-1);
        tracep->declBit(c+463,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_load", false,-1);
        tracep->declBit(c+464,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_store", false,-1);
        tracep->declBit(c+465,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_jump", false,-1);
        tracep->declBit(c+466,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_branch", false,-1);
        tracep->declBit(c+467,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_branch_taken", false,-1);
        tracep->declBit(c+468,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_compressed", false,-1);
        tracep->declBit(c+469,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_jr_stall", false,-1);
        tracep->declBit(c+470,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_imiss", false,-1);
        tracep->declBit(c+471,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_ld_stall", false,-1);
        tracep->declBit(c+472,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i mhpmevent_pipe_stall", false,-1);
        tracep->declBit(c+215,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i perf_imiss", false,-1);
        tracep->declBit(c+216,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i wake_from_sleep", false,-1);
        tracep->declArray(c+1071,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pmp_addr", false,-1, 511,0);
        tracep->declArray(c+1087,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i pmp_cfg", false,-1, 127,0);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_req_pmp", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_addr_pmp", false,-1, 31,0);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_gnt_pmp", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_err_pmp", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i data_err_ack", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_req_pmp", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_gnt_pmp", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_addr_pmp", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i instr_err_pmp", false,-1);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i clk", false,-1);
        tracep->declBit(c+75,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i fetch_enable", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i clk_ungated_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i rst_n", false,-1);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i clk_gated_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i scan_cg_en_i", false,-1);
        tracep->declBit(c+1033,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_sleep_o", false,-1);
        tracep->declBit(c+1028,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i fetch_enable_i", false,-1);
        tracep->declBit(c+75,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i fetch_enable_o", false,-1);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i if_busy_i", false,-1);
        tracep->declBit(c+197,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i ctrl_busy_i", false,-1);
        tracep->declBit(c+396,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i lsu_busy_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i apu_busy_i", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i pulp_clock_en_i", false,-1);
        tracep->declBit(c+449,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i p_elw_start_i", false,-1);
        tracep->declBit(c+1034,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i p_elw_finish_i", false,-1);
        tracep->declBit(c+1035,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i debug_p_elw_no_sleep_i", false,-1);
        tracep->declBit(c+216,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i wake_from_sleep_i", false,-1);
        tracep->declBit(c+75,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i fetch_enable_q", false,-1);
        tracep->declBit(c+1036,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i fetch_enable_d", false,-1);
        tracep->declBit(c+76,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_busy_q", false,-1);
        tracep->declBit(c+333,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_busy_d", false,-1);
        tracep->declBit(c+77,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i p_elw_busy_q", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i p_elw_busy_d", false,-1);
        tracep->declBit(c+1037,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i clock_en", false,-1);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_clock_gate_i clk_i", false,-1);
        tracep->declBit(c+1037,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_clock_gate_i en_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_clock_gate_i scan_cg_en_i", false,-1);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_clock_gate_i clk_o", false,-1);
        tracep->declBit(c+218,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i sleep_unit_i core_clock_gate_i clk_en", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i PULP_OBI", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i PULP_SECURE", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i FPU", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i rst_n", false,-1);
        tracep->declBus(c+439,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i m_trap_base_addr_i", false,-1, 23,0);
        tracep->declBus(c+1063,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i u_trap_base_addr_i", false,-1, 23,0);
        tracep->declBus(c+195,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i trap_addr_mux_i", false,-1, 1,0);
        tracep->declBus(c+1045,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i boot_addr_i", false,-1, 31,0);
        tracep->declBus(c+1054,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i dm_exception_addr_i", false,-1, 31,0);
        tracep->declBus(c+1046,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i dm_halt_addr_i", false,-1, 31,0);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i req_i", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_req_o", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_addr_o", false,-1, 31,0);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_gnt_i", false,-1);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_rvalid_i", false,-1);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_rdata_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_err_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_err_pmp_i", false,-1);
        tracep->declBit(c+382,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_valid_id_o", false,-1);
        tracep->declBus(c+383,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_rdata_id_o", false,-1, 31,0);
        tracep->declBit(c+384,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i is_compressed_id_o", false,-1);
        tracep->declBit(c+385,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i illegal_c_insn_id_o", false,-1);
        tracep->declBus(c+387,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i pc_if_o", false,-1, 31,0);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i pc_id_o", false,-1, 31,0);
        tracep->declBit(c+386,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i is_fetch_failed_o", false,-1);
        tracep->declBit(c+189,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i clear_instr_valid_i", false,-1);
        tracep->declBit(c+190,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i pc_set_i", false,-1);
        tracep->declBus(c+453,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i mepc_i", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i uepc_i", false,-1, 31,0);
        tracep->declBus(c+454,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i depc_i", false,-1, 31,0);
        tracep->declBus(c+191,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i pc_mux_i", false,-1, 3,0);
        tracep->declBus(c+192,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i exc_pc_mux_i", false,-1, 2,0);
        tracep->declBus(c+193,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i m_exc_vec_pc_mux_i", false,-1, 4,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i u_exc_vec_pc_mux_i", false,-1, 4,0);
        tracep->declBit(c+212,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i csr_mtvec_init_o", false,-1);
        tracep->declBus(c+392,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i jump_target_id_i", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i jump_target_ex_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i hwlp_jump_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i hwlp_target_i", false,-1, 31,0);
        tracep->declBit(c+199,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i halt_if_i", false,-1);
        tracep->declBit(c+200,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i id_ready_i", false,-1);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i if_busy_o", false,-1);
        tracep->declBit(c+215,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i perf_imiss_o", false,-1);
        tracep->declBit(c+219,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i if_valid", false,-1);
        tracep->declBit(c+220,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i if_ready", false,-1);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_busy", false,-1);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i branch_req", false,-1);
        tracep->declBus(c+222,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i branch_addr_n", false,-1, 31,0);
        tracep->declBit(c+223,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i fetch_valid", false,-1);
        tracep->declBit(c+224,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i fetch_ready", false,-1);
        tracep->declBus(c+989,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i fetch_rdata", false,-1, 31,0);
        tracep->declBus(c+225,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i exc_pc", false,-1, 31,0);
        tracep->declBus(c+226,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i trap_base_addr", false,-1, 23,0);
        tracep->declBus(c+227,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i exc_vec_pc_mux", false,-1, 4,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i fetch_failed", false,-1);
        tracep->declBit(c+228,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_ready", false,-1);
        tracep->declBit(c+229,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_valid", false,-1);
        tracep->declBit(c+990,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i illegal_c_insn", false,-1);
        tracep->declBus(c+991,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_aligned", false,-1, 31,0);
        tracep->declBus(c+992,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_decompressed", false,-1, 31,0);
        tracep->declBit(c+993,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i instr_compressed_int", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i PULP_OBI", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i PULP_XPULP", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i rst_n", false,-1);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i req_i", false,-1);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i branch_i", false,-1);
        tracep->declBus(c+230,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i branch_addr_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i hwlp_jump_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i hwlp_target_i", false,-1, 31,0);
        tracep->declBit(c+224,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fetch_ready_i", false,-1);
        tracep->declBit(c+223,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fetch_valid_o", false,-1);
        tracep->declBus(c+989,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fetch_rdata_o", false,-1, 31,0);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_req_o", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_gnt_i", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_addr_o", false,-1, 31,0);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_rdata_i", false,-1, 31,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_rvalid_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_err_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instr_err_pmp_i", false,-1);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i busy_o", false,-1);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i FIFO_DEPTH", false,-1, 31,0);
        tracep->declBus(c+1091,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i FIFO_ADDR_DEPTH", false,-1, 31,0);
        tracep->declBit(c+231,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i trans_valid", false,-1);
        tracep->declBit(c+473,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i trans_ready", false,-1);
        tracep->declBus(c+232,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i trans_addr", false,-1, 31,0);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_flush", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_flush_but_first", false,-1);
        tracep->declBus(c+474,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_cnt", false,-1, 1,0);
        tracep->declBus(c+475,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_rdata", false,-1, 31,0);
        tracep->declBit(c+233,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_push", false,-1);
        tracep->declBit(c+234,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_pop", false,-1);
        tracep->declBit(c+476,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_empty", false,-1);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i resp_valid", false,-1);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i resp_rdata", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i resp_err", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i PULP_OBI", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i DEPTH", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i FIFO_ADDR_DEPTH", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i rst_n", false,-1);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i req_i", false,-1);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i branch_i", false,-1);
        tracep->declBus(c+230,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i branch_addr_i", false,-1, 31,0);
        tracep->declBit(c+332,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i busy_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_jump_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_target_i", false,-1, 31,0);
        tracep->declBit(c+231,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i trans_valid_o", false,-1);
        tracep->declBit(c+473,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i trans_ready_i", false,-1);
        tracep->declBus(c+232,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i trans_addr_o", false,-1, 31,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i resp_valid_i", false,-1);
        tracep->declBit(c+224,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fetch_ready_i", false,-1);
        tracep->declBit(c+223,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fetch_valid_o", false,-1);
        tracep->declBit(c+233,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_push_o", false,-1);
        tracep->declBit(c+234,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_pop_o", false,-1);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_flush_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_flush_but_first_o", false,-1);
        tracep->declBus(c+474,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_cnt_i", false,-1, 1,0);
        tracep->declBit(c+476,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_empty_i", false,-1);
        tracep->declBit(c+477,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i state_q", false,-1);
        tracep->declBit(c+235,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i next_state", false,-1);
        tracep->declBus(c+478,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i cnt_q", false,-1, 1,0);
        tracep->declBus(c+1038,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i next_cnt", false,-1, 1,0);
        tracep->declBit(c+334,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i count_up", false,-1);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i count_down", false,-1);
        tracep->declBus(c+479,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i flush_cnt_q", false,-1, 1,0);
        tracep->declBus(c+236,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i next_flush_cnt", false,-1, 1,0);
        tracep->declBus(c+480,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i trans_addr_q", false,-1, 31,0);
        tracep->declBus(c+481,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i trans_addr_incr", false,-1, 31,0);
        tracep->declBus(c+237,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i aligned_branch_addr", false,-1, 31,0);
        tracep->declBit(c+482,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_valid", false,-1);
        tracep->declBus(c+335,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i fifo_cnt_masked", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_wait_resp_flush", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_flush_after_resp", false,-1);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_flush_cnt_delayed_q", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_flush_resp_delayed", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i prefetch_controller_i hwlp_flush_resp", false,-1);
        tracep->declBit(c+1092,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i FALL_THROUGH", false,-1);
        tracep->declBus(c+1093,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i DATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1094,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i DEPTH", false,-1, 31,0);
        tracep->declBus(c+1091,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i ADDR_DEPTH", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i rst_ni", false,-1);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i flush_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i flush_but_first_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i testmode_i", false,-1);
        tracep->declBit(c+483,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i full_o", false,-1);
        tracep->declBit(c+476,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i empty_o", false,-1);
        tracep->declBus(c+474,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i cnt_o", false,-1, 1,0);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i data_i", false,-1, 31,0);
        tracep->declBit(c+233,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i push_i", false,-1);
        tracep->declBus(c+475,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i data_o", false,-1, 31,0);
        tracep->declBit(c+234,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i pop_i", false,-1);
        tracep->declBus(c+1094,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i FIFO_DEPTH", false,-1, 31,0);
        tracep->declBit(c+238,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i gate_clock", false,-1);
        tracep->declBus(c+239,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i read_pointer_n", false,-1, 0,0);
        tracep->declBus(c+484,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i read_pointer_q", false,-1, 0,0);
        tracep->declBus(c+240,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i write_pointer_n", false,-1, 0,0);
        tracep->declBus(c+485,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i write_pointer_q", false,-1, 0,0);
        tracep->declBus(c+241,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i status_cnt_n", false,-1, 1,0);
        tracep->declBus(c+474,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i status_cnt_q", false,-1, 1,0);
        tracep->declQuad(c+242,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i mem_n", false,-1, 63,0);
        tracep->declQuad(c+486,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i fifo_i mem_q", false,-1, 63,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i TRANS_STABLE", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i rst_n", false,-1);
        tracep->declBit(c+231,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_valid_i", false,-1);
        tracep->declBit(c+473,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_ready_o", false,-1);
        tracep->declBus(c+244,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_addr_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_we_i", false,-1);
        tracep->declBus(c+1095,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_be_i", false,-1, 3,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_wdata_i", false,-1, 31,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i trans_atop_i", false,-1, 5,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i resp_valid_o", false,-1);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i resp_rdata_o", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i resp_err_o", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_req_o", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_gnt_i", false,-1);
        tracep->declBus(c+186,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_addr_o", false,-1, 31,0);
        tracep->declBit(c+488,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_we_o", false,-1);
        tracep->declBus(c+489,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_be_o", false,-1, 3,0);
        tracep->declBus(c+490,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_wdata_o", false,-1, 31,0);
        tracep->declBus(c+491,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_atop_o", false,-1, 5,0);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_rdata_i", false,-1, 31,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_rvalid_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i obi_err_i", false,-1);
        tracep->declBit(c+492,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i state_q", false,-1);
        tracep->declBit(c+245,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i next_state", false,-1);
        tracep->declBus(c+493,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i gen_no_trans_stable obi_addr_q", false,-1, 31,0);
        tracep->declBit(c+494,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i gen_no_trans_stable obi_we_q", false,-1);
        tracep->declBus(c+495,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i gen_no_trans_stable obi_be_q", false,-1, 3,0);
        tracep->declBus(c+496,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i gen_no_trans_stable obi_wdata_q", false,-1, 31,0);
        tracep->declBus(c+497,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i prefetch_buffer_i instruction_obi_i gen_no_trans_stable obi_atop_q", false,-1, 5,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i rst_n", false,-1);
        tracep->declBit(c+223,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i fetch_valid_i", false,-1);
        tracep->declBit(c+228,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i aligner_ready_o", false,-1);
        tracep->declBit(c+219,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i if_valid_i", false,-1);
        tracep->declBus(c+989,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i fetch_rdata_i", false,-1, 31,0);
        tracep->declBus(c+991,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i instr_aligned_o", false,-1, 31,0);
        tracep->declBit(c+229,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i instr_valid_o", false,-1);
        tracep->declBus(c+230,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i branch_addr_i", false,-1, 31,0);
        tracep->declBit(c+221,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i branch_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i hwlp_addr_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i hwlp_update_pc_i", false,-1);
        tracep->declBus(c+387,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i pc_o", false,-1, 31,0);
        tracep->declBus(c+498,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i state", false,-1, 2,0);
        tracep->declBus(c+246,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i next_state", false,-1, 2,0);
        tracep->declBus(c+499,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i r_instr_h", false,-1, 15,0);
        tracep->declBus(c+500,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i hwlp_addr_q", false,-1, 31,0);
        tracep->declBus(c+387,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i pc_q", false,-1, 31,0);
        tracep->declBus(c+247,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i pc_n", false,-1, 31,0);
        tracep->declBit(c+248,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i update_state", false,-1);
        tracep->declBus(c+501,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i pc_plus4", false,-1, 31,0);
        tracep->declBus(c+502,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i pc_plus2", false,-1, 31,0);
        tracep->declBit(c+503,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i aligner_ready_q", false,-1);
        tracep->declBit(c+504,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i aligner_i hwlp_update_pc_q", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i compressed_decoder_i FPU", false,-1, 31,0);
        tracep->declBus(c+991,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i compressed_decoder_i instr_i", false,-1, 31,0);
        tracep->declBus(c+992,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i compressed_decoder_i instr_o", false,-1, 31,0);
        tracep->declBit(c+993,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i compressed_decoder_i is_compressed_o", false,-1);
        tracep->declBit(c+990,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i if_stage_i compressed_decoder_i illegal_instr_o", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i N_HWLP", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i N_HWLP_BITS", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i PULP_SECURE", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i USE_PMP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i A_EXTENSION", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i APU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i PULP_ZFINX", false,-1, 31,0);
        tracep->declBus(c+1096,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i APU_NARGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1097,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i APU_WOP_CPU", false,-1, 31,0);
        tracep->declBus(c+1098,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i APU_NDSFLAGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1099,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i APU_NUSFLAGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i DEBUG_TRIGGER_EN", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i clk", false,-1);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i clk_ungated_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i rst_n", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i scan_cg_en_i", false,-1);
        tracep->declBit(c+75,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fetch_enable_i", false,-1);
        tracep->declBit(c+197,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ctrl_busy_o", false,-1);
        tracep->declBit(c+196,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i is_decoding_o", false,-1);
        tracep->declBit(c+382,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i instr_valid_i", false,-1);
        tracep->declBus(c+383,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i instr_rdata_i", false,-1, 31,0);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i instr_req_o", false,-1);
        tracep->declBit(c+384,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i is_compressed_i", false,-1);
        tracep->declBit(c+385,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i illegal_c_insn_i", false,-1);
        tracep->declBit(c+394,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i branch_in_ex_o", false,-1);
        tracep->declBit(c+395,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i branch_decision_i", false,-1);
        tracep->declBus(c+392,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i jump_target_o", false,-1, 31,0);
        tracep->declBit(c+189,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i clear_instr_valid_o", false,-1);
        tracep->declBit(c+190,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i pc_set_o", false,-1);
        tracep->declBus(c+191,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i pc_mux_o", false,-1, 3,0);
        tracep->declBus(c+192,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i exc_pc_mux_o", false,-1, 2,0);
        tracep->declBus(c+195,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i trap_addr_mux_o", false,-1, 1,0);
        tracep->declBit(c+386,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i is_fetch_failed_i", false,-1);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i pc_id_i", false,-1, 31,0);
        tracep->declBit(c+199,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i halt_if_o", false,-1);
        tracep->declBit(c+200,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i id_ready_o", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ex_ready_i", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i wb_ready_i", false,-1);
        tracep->declBit(c+202,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i id_valid_o", false,-1);
        tracep->declBit(c+203,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ex_valid_i", false,-1);
        tracep->declBus(c+397,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i pc_ex_o", false,-1, 31,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_a_ex_o", false,-1, 31,0);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_b_ex_o", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_c_ex_o", false,-1, 31,0);
        tracep->declBus(c+402,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_a_ex_o", false,-1, 4,0);
        tracep->declBus(c+403,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_b_ex_o", false,-1, 4,0);
        tracep->declBus(c+404,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_vec_ext_ex_o", false,-1, 1,0);
        tracep->declBus(c+405,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_vec_mode_ex_o", false,-1, 1,0);
        tracep->declBus(c+430,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_waddr_ex_o", false,-1, 5,0);
        tracep->declBit(c+431,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_we_ex_o", false,-1);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_waddr_ex_o", false,-1, 5,0);
        tracep->declBit(c+435,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_we_ex_o", false,-1);
        tracep->declBit(c+398,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_en_ex_o", false,-1);
        tracep->declBus(c+399,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operator_ex_o", false,-1, 6,0);
        tracep->declBit(c+406,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_is_clpx_ex_o", false,-1);
        tracep->declBit(c+407,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_is_subrot_ex_o", false,-1);
        tracep->declBus(c+408,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_clpx_shift_ex_o", false,-1, 1,0);
        tracep->declBus(c+409,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_operator_ex_o", false,-1, 2,0);
        tracep->declBus(c+410,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_operand_a_ex_o", false,-1, 31,0);
        tracep->declBus(c+411,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_operand_b_ex_o", false,-1, 31,0);
        tracep->declBus(c+412,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_operand_c_ex_o", false,-1, 31,0);
        tracep->declBit(c+413,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_en_ex_o", false,-1);
        tracep->declBit(c+414,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_sel_subword_ex_o", false,-1);
        tracep->declBus(c+415,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_signed_mode_ex_o", false,-1, 1,0);
        tracep->declBus(c+416,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_imm_ex_o", false,-1, 4,0);
        tracep->declBus(c+417,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_op_a_ex_o", false,-1, 31,0);
        tracep->declBus(c+418,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_op_b_ex_o", false,-1, 31,0);
        tracep->declBus(c+419,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_op_c_ex_o", false,-1, 31,0);
        tracep->declBus(c+420,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_signed_ex_o", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_is_clpx_ex_o", false,-1);
        tracep->declBus(c+422,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_clpx_shift_ex_o", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_clpx_img_ex_o", false,-1);
        tracep->declBit(c+423,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_en_ex_o", false,-1);
        tracep->declBus(c+424,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_op_ex_o", false,-1, 5,0);
        tracep->declBus(c+425,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_lat_ex_o", false,-1, 1,0);
        tracep->declArray(c+426,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_operands_ex_o", false,-1, 95,0);
        tracep->declBus(c+377,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_flags_ex_o", false,-1, 14,0);
        tracep->declBus(c+429,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_waddr_ex_o", false,-1, 5,0);
        tracep->declBus(c+1060,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_read_regs_o", false,-1, 17,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_read_regs_valid_o", false,-1, 2,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_read_dep_i", false,-1);
        tracep->declBus(c+1061,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_write_regs_o", false,-1, 11,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_write_regs_valid_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_write_dep_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_perf_dep_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_busy_i", false,-1);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i frm_i", false,-1, 2,0);
        tracep->declBit(c+437,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_access_ex_o", false,-1);
        tracep->declBus(c+438,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_op_ex_o", false,-1, 1,0);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i current_priv_lvl_i", false,-1, 1,0);
        tracep->declBit(c+204,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_irq_sec_o", false,-1);
        tracep->declBus(c+208,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_cause_o", false,-1, 5,0);
        tracep->declBit(c+206,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_save_if_o", false,-1);
        tracep->declBit(c+207,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_save_id_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_save_ex_o", false,-1);
        tracep->declBit(c+209,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_restore_mret_id_o", false,-1);
        tracep->declBit(c+210,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_restore_uret_id_o", false,-1);
        tracep->declBit(c+211,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_restore_dret_id_o", false,-1);
        tracep->declBit(c+205,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_save_cause_o", false,-1);
        tracep->declQuad(c+1065,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_start_o", false,-1, 63,0);
        tracep->declQuad(c+1067,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_end_o", false,-1, 63,0);
        tracep->declQuad(c+1069,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_cnt_o", false,-1, 63,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_jump_o", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_target_o", false,-1, 31,0);
        tracep->declBus(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_hwlp_regid_i", false,-1, 0,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_hwlp_we_i", false,-1, 2,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_hwlp_data_i", false,-1, 31,0);
        tracep->declBit(c+446,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_req_ex_o", false,-1);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_we_ex_o", false,-1);
        tracep->declBus(c+443,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_type_ex_o", false,-1, 1,0);
        tracep->declBus(c+444,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_sign_ext_ex_o", false,-1, 1,0);
        tracep->declBus(c+445,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_reg_offset_ex_o", false,-1, 1,0);
        tracep->declBit(c+447,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_load_event_ex_o", false,-1);
        tracep->declBit(c+448,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_misaligned_ex_o", false,-1);
        tracep->declBit(c+389,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i prepost_useincr_ex_o", false,-1);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_misaligned_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_err_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_err_ack_o", false,-1);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i atop_ex_o", false,-1, 5,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_sec_i", false,-1);
        tracep->declBus(c+455,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mie_bypass_i", false,-1, 31,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mip_o", false,-1, 31,0);
        tracep->declBit(c+451,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i m_irq_enable_i", false,-1);
        tracep->declBit(c+452,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i u_irq_enable_i", false,-1);
        tracep->declBit(c+187,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_ack_o", false,-1);
        tracep->declBus(c+188,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_id_o", false,-1, 4,0);
        tracep->declBus(c+194,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i exc_cause_o", false,-1, 4,0);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_mode_o", false,-1);
        tracep->declBus(c+213,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_cause_o", false,-1, 2,0);
        tracep->declBit(c+214,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_csr_save_o", false,-1);
        tracep->declBit(c+73,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_req_i", false,-1);
        tracep->declBit(c+458,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_single_step_i", false,-1);
        tracep->declBit(c+459,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_ebreakm_i", false,-1);
        tracep->declBit(c+460,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_ebreaku_i", false,-1);
        tracep->declBit(c+461,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i trigger_match_i", false,-1);
        tracep->declBit(c+1035,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_p_elw_no_sleep_o", false,-1);
        tracep->declBit(c+378,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_havereset_o", false,-1);
        tracep->declBit(c+379,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_running_o", false,-1);
        tracep->declBit(c+380,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_halted_o", false,-1);
        tracep->declBit(c+216,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i wake_from_sleep_o", false,-1);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_waddr_wb_i", false,-1, 5,0);
        tracep->declBit(c+433,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_we_wb_i", false,-1);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_wdata_wb_i", false,-1, 31,0);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_waddr_fw_i", false,-1, 5,0);
        tracep->declBit(c+436,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_we_fw_i", false,-1);
        tracep->declBus(c+198,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_wdata_fw_i", false,-1, 31,0);
        tracep->declBit(c+391,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_multicycle_i", false,-1);
        tracep->declBit(c+462,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_minstret_o", false,-1);
        tracep->declBit(c+463,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_load_o", false,-1);
        tracep->declBit(c+464,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_store_o", false,-1);
        tracep->declBit(c+465,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_jump_o", false,-1);
        tracep->declBit(c+466,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_branch_o", false,-1);
        tracep->declBit(c+467,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_branch_taken_o", false,-1);
        tracep->declBit(c+468,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_compressed_o", false,-1);
        tracep->declBit(c+469,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_jr_stall_o", false,-1);
        tracep->declBit(c+470,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_imiss_o", false,-1);
        tracep->declBit(c+471,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_ld_stall_o", false,-1);
        tracep->declBit(c+472,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mhpmevent_pipe_stall_o", false,-1);
        tracep->declBit(c+215,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i perf_imiss_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mcounteren_i", false,-1, 31,0);
        tracep->declBus(c+1100,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S1_MSB", false,-1, 31,0);
        tracep->declBus(c+1098,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S1_LSB", false,-1, 31,0);
        tracep->declBus(c+1101,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S2_MSB", false,-1, 31,0);
        tracep->declBus(c+1102,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S2_LSB", false,-1, 31,0);
        tracep->declBus(c+1103,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S4_MSB", false,-1, 31,0);
        tracep->declBus(c+1104,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_S4_LSB", false,-1, 31,0);
        tracep->declBus(c+1105,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_D_MSB", false,-1, 31,0);
        tracep->declBus(c+1106,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i REG_D_LSB", false,-1, 31,0);
        tracep->declBus(c+383,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i instr", false,-1, 31,0);
        tracep->declBit(c+249,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i deassert_we", false,-1);
        tracep->declBit(c+250,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i illegal_insn_dec", false,-1);
        tracep->declBit(c+505,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ebrk_insn_dec", false,-1);
        tracep->declBit(c+506,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mret_insn_dec", false,-1);
        tracep->declBit(c+507,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i uret_insn_dec", false,-1);
        tracep->declBit(c+251,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i dret_insn_dec", false,-1);
        tracep->declBit(c+508,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ecall_insn_dec", false,-1);
        tracep->declBit(c+509,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i wfi_insn_dec", false,-1);
        tracep->declBit(c+510,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fencei_insn_dec", false,-1);
        tracep->declBit(c+511,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i rega_used_dec", false,-1);
        tracep->declBit(c+512,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regb_used_dec", false,-1);
        tracep->declBit(c+513,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regc_used_dec", false,-1);
        tracep->declBit(c+514,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i branch_taken_ex", false,-1);
        tracep->declBus(c+252,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ctrl_transfer_insn_in_id", false,-1, 1,0);
        tracep->declBus(c+515,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ctrl_transfer_insn_in_dec", false,-1, 1,0);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i misaligned_stall", false,-1);
        tracep->declBit(c+516,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i jr_stall", false,-1);
        tracep->declBit(c+253,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i load_stall", false,-1);
        tracep->declBit(c+517,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_apu_stall", false,-1);
        tracep->declBit(c+254,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_mask", false,-1);
        tracep->declBit(c+255,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i halt_id", false,-1);
        tracep->declBit(c+199,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i halt_if", false,-1);
        tracep->declBit(c+256,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i debug_wfi_no_sleep", false,-1);
        tracep->declBus(c+518,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_i_type", false,-1, 31,0);
        tracep->declBus(c+519,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_iz_type", false,-1, 31,0);
        tracep->declBus(c+520,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_s_type", false,-1, 31,0);
        tracep->declBus(c+521,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_sb_type", false,-1, 31,0);
        tracep->declBus(c+522,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_u_type", false,-1, 31,0);
        tracep->declBus(c+523,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_uj_type", false,-1, 31,0);
        tracep->declBus(c+524,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_z_type", false,-1, 31,0);
        tracep->declBus(c+525,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_s2_type", false,-1, 31,0);
        tracep->declBus(c+526,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_bi_type", false,-1, 31,0);
        tracep->declBus(c+527,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_s3_type", false,-1, 31,0);
        tracep->declBus(c+528,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_vs_type", false,-1, 31,0);
        tracep->declBus(c+529,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_vu_type", false,-1, 31,0);
        tracep->declBus(c+530,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_shuffleb_type", false,-1, 31,0);
        tracep->declBus(c+531,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_shuffleh_type", false,-1, 31,0);
        tracep->declBus(c+531,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_shuffle_type", false,-1, 31,0);
        tracep->declBus(c+532,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_clip_type", false,-1, 31,0);
        tracep->declBus(c+533,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_a", false,-1, 31,0);
        tracep->declBus(c+257,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_b", false,-1, 31,0);
        tracep->declBus(c+392,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i jump_target", false,-1, 31,0);
        tracep->declBit(c+534,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_req_ctrl", false,-1);
        tracep->declBit(c+535,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_sec_ctrl", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_wu_ctrl", false,-1);
        tracep->declBus(c+536,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i irq_id_ctrl", false,-1, 4,0);
        tracep->declBus(c+537,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_addr_ra_id", false,-1, 5,0);
        tracep->declBus(c+538,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_addr_rb_id", false,-1, 5,0);
        tracep->declBus(c+539,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_addr_rc_id", false,-1, 5,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_fp_a", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_fp_b", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_fp_c", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_fp_d", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fregfile_ena", false,-1);
        tracep->declBus(c+540,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_waddr_id", false,-1, 5,0);
        tracep->declBus(c+541,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_waddr_id", false,-1, 5,0);
        tracep->declBit(c+258,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_we_id", false,-1);
        tracep->declBit(c+542,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_we_dec_id", false,-1);
        tracep->declBus(c+543,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_data_ra_id", false,-1, 31,0);
        tracep->declBus(c+544,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_data_rb_id", false,-1, 31,0);
        tracep->declBus(c+545,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_data_rc_id", false,-1, 31,0);
        tracep->declBit(c+259,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_en", false,-1);
        tracep->declBus(c+260,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operator", false,-1, 6,0);
        tracep->declBus(c+546,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_op_a_mux_sel", false,-1, 2,0);
        tracep->declBus(c+261,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_op_b_mux_sel", false,-1, 2,0);
        tracep->declBus(c+547,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_op_c_mux_sel", false,-1, 1,0);
        tracep->declBus(c+548,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regc_mux", false,-1, 1,0);
        tracep->declBus(c+549,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_a_mux_sel", false,-1, 0,0);
        tracep->declBus(c+262,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_b_mux_sel", false,-1, 3,0);
        tracep->declBus(c+550,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i ctrl_transfer_target_mux_sel", false,-1, 1,0);
        tracep->declBus(c+551,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_operator", false,-1, 2,0);
        tracep->declBit(c+263,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_en", false,-1);
        tracep->declBit(c+263,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_int_en", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_sel_subword", false,-1);
        tracep->declBus(c+552,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_signed_mode", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_en", false,-1);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_dot_signed", false,-1, 1,0);
        tracep->declBus(c+1107,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fpu_src_fmt", false,-1, 2,0);
        tracep->declBus(c+1107,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fpu_dst_fmt", false,-1, 2,0);
        tracep->declBus(c+1108,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fpu_int_fmt", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_en", false,-1);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_op", false,-1, 5,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_lat", false,-1, 1,0);
        tracep->declArray(c+37,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_operands", false,-1, 95,0);
        tracep->declBus(c+1109,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_flags", false,-1, 14,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_waddr", false,-1, 5,0);
        tracep->declBus(c+1060,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_read_regs", false,-1, 17,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_read_regs_valid", false,-1, 2,0);
        tracep->declBus(c+1061,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_write_regs", false,-1, 11,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_write_regs_valid", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i apu_stall", false,-1);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i fp_rnd_mode", false,-1, 2,0);
        tracep->declBit(c+264,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_we_id", false,-1);
        tracep->declBit(c+553,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i regfile_alu_waddr_mux_sel", false,-1);
        tracep->declBit(c+554,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_we_id", false,-1);
        tracep->declBus(c+555,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_type_id", false,-1, 1,0);
        tracep->declBus(c+556,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_sign_ext_id", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_reg_offset_id", false,-1, 1,0);
        tracep->declBit(c+265,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_req_id", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i data_load_event_id", false,-1);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i atop_id", false,-1, 5,0);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_regid", false,-1, 0,0);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_regid_int", false,-1, 0,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_we", false,-1, 2,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_we_int", false,-1, 2,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_we_masked", false,-1, 2,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_target_mux_sel", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_start_mux_sel", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_cnt_mux_sel", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_target", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_start", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_start_int", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_end", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_cnt", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_cnt_int", false,-1, 31,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_dec_cnt", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i hwlp_valid", false,-1);
        tracep->declBit(c+557,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_access", false,-1);
        tracep->declBus(c+266,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_op", false,-1, 1,0);
        tracep->declBit(c+267,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i csr_status", false,-1);
        tracep->declBit(c+558,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i prepost_useincr", false,-1);
        tracep->declBus(c+559,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_a_fw_mux_sel", false,-1, 1,0);
        tracep->declBus(c+560,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_b_fw_mux_sel", false,-1, 1,0);
        tracep->declBus(c+561,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_c_fw_mux_sel", false,-1, 1,0);
        tracep->declBus(c+268,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_a_fw_id", false,-1, 31,0);
        tracep->declBus(c+269,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_b_fw_id", false,-1, 31,0);
        tracep->declBus(c+270,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_c_fw_id", false,-1, 31,0);
        tracep->declBus(c+271,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_b", false,-1, 31,0);
        tracep->declBus(c+272,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_b_vec", false,-1, 31,0);
        tracep->declBus(c+273,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_c", false,-1, 31,0);
        tracep->declBus(c+274,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i operand_c_vec", false,-1, 31,0);
        tracep->declBus(c+275,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_a", false,-1, 31,0);
        tracep->declBus(c+271,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_b", false,-1, 31,0);
        tracep->declBus(c+273,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_operand_c", false,-1, 31,0);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_a_mux", false,-1, 0,0);
        tracep->declBus(c+1111,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_b_mux", false,-1, 1,0);
        tracep->declBit(c+1112,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_bmask_a_mux_sel", false,-1);
        tracep->declBit(c+1112,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_bmask_b_mux_sel", false,-1);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_imm_mux", false,-1, 0,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_a_id_imm", false,-1, 4,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_b_id_imm", false,-1, 4,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_a_id", false,-1, 4,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i bmask_b_id", false,-1, 4,0);
        tracep->declBus(c+562,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i imm_vec_ext_id", false,-1, 1,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mult_imm_id", false,-1, 4,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i alu_vec_mode", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i scalar_replication", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i scalar_replication_c", false,-1);
        tracep->declBit(c+563,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_ex_is_reg_a_id", false,-1);
        tracep->declBit(c+564,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_ex_is_reg_b_id", false,-1);
        tracep->declBit(c+565,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_ex_is_reg_c_id", false,-1);
        tracep->declBit(c+566,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_wb_is_reg_a_id", false,-1);
        tracep->declBit(c+567,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_wb_is_reg_b_id", false,-1);
        tracep->declBit(c+568,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_wb_is_reg_c_id", false,-1);
        tracep->declBit(c+569,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_alu_is_reg_a_id", false,-1);
        tracep->declBit(c+570,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_alu_is_reg_b_id", false,-1);
        tracep->declBit(c+571,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i reg_d_alu_is_reg_c_id", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i is_clpx", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i is_subrot", false,-1);
        tracep->declBit(c+572,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i mret_dec", false,-1);
        tracep->declBit(c+573,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i uret_dec", false,-1);
        tracep->declBit(c+574,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i dret_dec", false,-1);
        tracep->declBit(c+575,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i id_valid_q", false,-1);
        tracep->declBit(c+276,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i minstret", false,-1);
        tracep->declBit(c+576,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i perf_pipeline_stall", false,-1);
        tracep->declBus(c+1097,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i DATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i PULP_ZFINX", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i rst_n", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i scan_cg_en_i", false,-1);
        tracep->declBus(c+537,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i raddr_a_i", false,-1, 5,0);
        tracep->declBus(c+543,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i rdata_a_o", false,-1, 31,0);
        tracep->declBus(c+538,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i raddr_b_i", false,-1, 5,0);
        tracep->declBus(c+544,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i rdata_b_o", false,-1, 31,0);
        tracep->declBus(c+539,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i raddr_c_i", false,-1, 5,0);
        tracep->declBus(c+545,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i rdata_c_o", false,-1, 31,0);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i waddr_a_i", false,-1, 5,0);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i wdata_a_i", false,-1, 31,0);
        tracep->declBit(c+433,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i we_a_i", false,-1);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i waddr_b_i", false,-1, 5,0);
        tracep->declBus(c+198,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i wdata_b_i", false,-1, 31,0);
        tracep->declBit(c+436,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i we_b_i", false,-1);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i NUM_WORDS", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i NUM_FP_WORDS", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i NUM_TOT_WORDS", false,-1, 31,0);
        tracep->declArray(c+577,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i mem", false,-1, 1023,0);
        tracep->declArray(c+1114,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i mem_fp", false,-1, 1023,0);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i waddr_a", false,-1, 5,0);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i waddr_b", false,-1, 5,0);
        tracep->declBus(c+609,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i we_a_dec", false,-1, 31,0);
        tracep->declBus(c+610,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i register_file_i we_b_dec", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i A_EXTENSION", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i PULP_SECURE", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i USE_PMP", false,-1, 31,0);
        tracep->declBus(c+1097,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i APU_WOP_CPU", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i DEBUG_TRIGGER_EN", false,-1, 31,0);
        tracep->declBit(c+249,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i deassert_we_i", false,-1);
        tracep->declBit(c+250,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i illegal_insn_o", false,-1);
        tracep->declBit(c+505,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ebrk_insn_o", false,-1);
        tracep->declBit(c+506,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mret_insn_o", false,-1);
        tracep->declBit(c+507,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i uret_insn_o", false,-1);
        tracep->declBit(c+251,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i dret_insn_o", false,-1);
        tracep->declBit(c+572,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mret_dec_o", false,-1);
        tracep->declBit(c+573,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i uret_dec_o", false,-1);
        tracep->declBit(c+574,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i dret_dec_o", false,-1);
        tracep->declBit(c+508,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ecall_insn_o", false,-1);
        tracep->declBit(c+509,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i wfi_o", false,-1);
        tracep->declBit(c+510,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fencei_insn_o", false,-1);
        tracep->declBit(c+511,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i rega_used_o", false,-1);
        tracep->declBit(c+512,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regb_used_o", false,-1);
        tracep->declBit(c+513,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regc_used_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i reg_fp_a_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i reg_fp_b_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i reg_fp_c_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i reg_fp_d_o", false,-1);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i bmask_a_mux_o", false,-1, 0,0);
        tracep->declBus(c+1111,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i bmask_b_mux_o", false,-1, 1,0);
        tracep->declBit(c+1112,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_bmask_a_mux_sel_o", false,-1);
        tracep->declBit(c+1112,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_bmask_b_mux_sel_o", false,-1);
        tracep->declBus(c+383,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i instr_rdata_i", false,-1, 31,0);
        tracep->declBit(c+385,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i illegal_c_insn_i", false,-1);
        tracep->declBit(c+259,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_en_o", false,-1);
        tracep->declBus(c+260,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_operator_o", false,-1, 6,0);
        tracep->declBus(c+546,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_op_a_mux_sel_o", false,-1, 2,0);
        tracep->declBus(c+261,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_op_b_mux_sel_o", false,-1, 2,0);
        tracep->declBus(c+547,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_op_c_mux_sel_o", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_vec_mode_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i scalar_replication_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i scalar_replication_c_o", false,-1);
        tracep->declBus(c+549,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i imm_a_mux_sel_o", false,-1, 0,0);
        tracep->declBus(c+262,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i imm_b_mux_sel_o", false,-1, 3,0);
        tracep->declBus(c+548,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regc_mux_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i is_clpx_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i is_subrot_o", false,-1);
        tracep->declBus(c+551,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_operator_o", false,-1, 2,0);
        tracep->declBit(c+263,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_int_en_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_dot_en_o", false,-1);
        tracep->declBus(c+1110,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_imm_mux_o", false,-1, 0,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_sel_subword_o", false,-1);
        tracep->declBus(c+552,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_signed_mode_o", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_dot_signed_o", false,-1, 1,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i frm_i", false,-1, 2,0);
        tracep->declBus(c+1107,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_dst_fmt_o", false,-1, 2,0);
        tracep->declBus(c+1107,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_src_fmt_o", false,-1, 2,0);
        tracep->declBus(c+1108,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_int_fmt_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i apu_en_o", false,-1);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i apu_op_o", false,-1, 5,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i apu_lat_o", false,-1, 1,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fp_rnd_mode_o", false,-1, 2,0);
        tracep->declBit(c+264,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_mem_we_o", false,-1);
        tracep->declBit(c+258,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_alu_we_o", false,-1);
        tracep->declBit(c+542,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_alu_we_dec_o", false,-1);
        tracep->declBit(c+553,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_alu_waddr_sel_o", false,-1);
        tracep->declBit(c+557,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i csr_access_o", false,-1);
        tracep->declBit(c+267,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i csr_status_o", false,-1);
        tracep->declBus(c+266,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i csr_op_o", false,-1, 1,0);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i current_priv_lvl_i", false,-1, 1,0);
        tracep->declBit(c+265,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_req_o", false,-1);
        tracep->declBit(c+554,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_we_o", false,-1);
        tracep->declBit(c+558,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i prepost_useincr_o", false,-1);
        tracep->declBus(c+555,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_type_o", false,-1, 1,0);
        tracep->declBus(c+556,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_sign_extension_o", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_reg_offset_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_load_event_o", false,-1);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i atop_o", false,-1, 5,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i hwlp_we_o", false,-1, 2,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i hwlp_target_mux_sel_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i hwlp_start_mux_sel_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i hwlp_cnt_mux_sel_o", false,-1);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i debug_mode_i", false,-1);
        tracep->declBit(c+256,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i debug_wfi_no_sleep_i", false,-1);
        tracep->declBus(c+515,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ctrl_transfer_insn_in_dec_o", false,-1, 1,0);
        tracep->declBus(c+252,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ctrl_transfer_insn_in_id_o", false,-1, 1,0);
        tracep->declBus(c+550,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ctrl_transfer_target_mux_sel_o", false,-1, 1,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mcounteren_i", false,-1, 31,0);
        tracep->declBit(c+611,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_mem_we", false,-1);
        tracep->declBit(c+542,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i regfile_alu_we", false,-1);
        tracep->declBit(c+612,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i data_req", false,-1);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i hwlp_we", false,-1, 2,0);
        tracep->declBit(c+277,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i csr_illegal", false,-1);
        tracep->declBus(c+515,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i ctrl_transfer_insn", false,-1, 1,0);
        tracep->declBus(c+278,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i csr_op", false,-1, 1,0);
        tracep->declBit(c+613,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i alu_en", false,-1);
        tracep->declBit(c+614,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_int_en", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i mult_dot_en", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i apu_en", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i check_fprm", false,-1);
        tracep->declBus(c+1146,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_op", false,-1, 3,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_op_mod", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fpu_vec_op", false,-1);
        tracep->declBus(c+1147,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i decoder_i fp_op_group", false,-1, 1,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i PULP_XPULP", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i clk", false,-1);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i clk_ungated_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i rst_n", false,-1);
        tracep->declBit(c+75,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i fetch_enable_i", false,-1);
        tracep->declBit(c+197,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ctrl_busy_o", false,-1);
        tracep->declBit(c+196,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i is_decoding_o", false,-1);
        tracep->declBit(c+386,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i is_fetch_failed_i", false,-1);
        tracep->declBit(c+249,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i deassert_we_o", false,-1);
        tracep->declBit(c+250,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i illegal_insn_i", false,-1);
        tracep->declBit(c+508,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ecall_insn_i", false,-1);
        tracep->declBit(c+506,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i mret_insn_i", false,-1);
        tracep->declBit(c+507,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i uret_insn_i", false,-1);
        tracep->declBit(c+251,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i dret_insn_i", false,-1);
        tracep->declBit(c+572,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i mret_dec_i", false,-1);
        tracep->declBit(c+573,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i uret_dec_i", false,-1);
        tracep->declBit(c+574,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i dret_dec_i", false,-1);
        tracep->declBit(c+509,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i wfi_i", false,-1);
        tracep->declBit(c+505,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ebrk_insn_i", false,-1);
        tracep->declBit(c+510,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i fencei_insn_i", false,-1);
        tracep->declBit(c+267,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_status_i", false,-1);
        tracep->declBit(c+254,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_mask_o", false,-1);
        tracep->declBit(c+382,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i instr_valid_i", false,-1);
        tracep->declBit(c+450,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i instr_req_o", false,-1);
        tracep->declBit(c+190,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i pc_set_o", false,-1);
        tracep->declBus(c+191,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i pc_mux_o", false,-1, 3,0);
        tracep->declBus(c+192,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i exc_pc_mux_o", false,-1, 2,0);
        tracep->declBus(c+195,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i trap_addr_mux_o", false,-1, 1,0);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i pc_id_i", false,-1, 31,0);
        tracep->declBit(c+384,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i is_compressed_i", false,-1);
        tracep->declQuad(c+1065,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_start_addr_i", false,-1, 63,0);
        tracep->declQuad(c+1067,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end_addr_i", false,-1, 63,0);
        tracep->declQuad(c+1069,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_counter_i", false,-1, 63,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_dec_cnt_o", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_jump_o", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_targ_addr_o", false,-1, 31,0);
        tracep->declBit(c+446,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_req_ex_i", false,-1);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_we_ex_i", false,-1);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_misaligned_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_load_event_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_err_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_err_ack_o", false,-1);
        tracep->declBit(c+391,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i mult_multicycle_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i apu_en_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i apu_read_dep_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i apu_write_dep_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i apu_stall_o", false,-1);
        tracep->declBit(c+514,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i branch_taken_ex_i", false,-1);
        tracep->declBus(c+252,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ctrl_transfer_insn_in_id_i", false,-1, 1,0);
        tracep->declBus(c+515,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ctrl_transfer_insn_in_dec_i", false,-1, 1,0);
        tracep->declBit(c+534,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_req_ctrl_i", false,-1);
        tracep->declBit(c+535,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_sec_ctrl_i", false,-1);
        tracep->declBus(c+536,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_id_ctrl_i", false,-1, 4,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_wu_ctrl_i", false,-1);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i current_priv_lvl_i", false,-1, 1,0);
        tracep->declBit(c+187,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_ack_o", false,-1);
        tracep->declBus(c+188,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i irq_id_o", false,-1, 4,0);
        tracep->declBus(c+194,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i exc_cause_o", false,-1, 4,0);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_mode_o", false,-1);
        tracep->declBus(c+213,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_cause_o", false,-1, 2,0);
        tracep->declBit(c+214,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_csr_save_o", false,-1);
        tracep->declBit(c+73,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_req_i", false,-1);
        tracep->declBit(c+458,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_single_step_i", false,-1);
        tracep->declBit(c+459,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_ebreakm_i", false,-1);
        tracep->declBit(c+460,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_ebreaku_i", false,-1);
        tracep->declBit(c+461,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i trigger_match_i", false,-1);
        tracep->declBit(c+1035,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_p_elw_no_sleep_o", false,-1);
        tracep->declBit(c+256,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_wfi_no_sleep_o", false,-1);
        tracep->declBit(c+378,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_havereset_o", false,-1);
        tracep->declBit(c+379,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_running_o", false,-1);
        tracep->declBit(c+380,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_halted_o", false,-1);
        tracep->declBit(c+216,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i wake_from_sleep_o", false,-1);
        tracep->declBit(c+206,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_save_if_o", false,-1);
        tracep->declBit(c+207,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_save_id_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_save_ex_o", false,-1);
        tracep->declBus(c+208,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_cause_o", false,-1, 5,0);
        tracep->declBit(c+204,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_irq_sec_o", false,-1);
        tracep->declBit(c+209,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_restore_mret_id_o", false,-1);
        tracep->declBit(c+210,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_restore_uret_id_o", false,-1);
        tracep->declBit(c+211,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_restore_dret_id_o", false,-1);
        tracep->declBit(c+205,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i csr_save_cause_o", false,-1);
        tracep->declBit(c+542,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_we_id_i", false,-1);
        tracep->declBus(c+541,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_alu_waddr_id_i", false,-1, 5,0);
        tracep->declBit(c+431,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_we_ex_i", false,-1);
        tracep->declBus(c+430,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_waddr_ex_i", false,-1, 5,0);
        tracep->declBit(c+433,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_we_wb_i", false,-1);
        tracep->declBit(c+436,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i regfile_alu_we_fw_i", false,-1);
        tracep->declBus(c+559,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i operand_a_fw_mux_sel_o", false,-1, 1,0);
        tracep->declBus(c+560,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i operand_b_fw_mux_sel_o", false,-1, 1,0);
        tracep->declBus(c+561,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i operand_c_fw_mux_sel_o", false,-1, 1,0);
        tracep->declBit(c+563,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_ex_is_reg_a_i", false,-1);
        tracep->declBit(c+564,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_ex_is_reg_b_i", false,-1);
        tracep->declBit(c+565,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_ex_is_reg_c_i", false,-1);
        tracep->declBit(c+566,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_wb_is_reg_a_i", false,-1);
        tracep->declBit(c+567,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_wb_is_reg_b_i", false,-1);
        tracep->declBit(c+568,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_wb_is_reg_c_i", false,-1);
        tracep->declBit(c+569,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_alu_is_reg_a_i", false,-1);
        tracep->declBit(c+570,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_alu_is_reg_b_i", false,-1);
        tracep->declBit(c+571,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i reg_d_alu_is_reg_c_i", false,-1);
        tracep->declBit(c+199,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i halt_if_o", false,-1);
        tracep->declBit(c+255,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i halt_id_o", false,-1);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i misaligned_stall_o", false,-1);
        tracep->declBit(c+516,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i jr_stall_o", false,-1);
        tracep->declBit(c+253,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i load_stall_o", false,-1);
        tracep->declBit(c+200,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i id_ready_i", false,-1);
        tracep->declBit(c+202,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i id_valid_i", false,-1);
        tracep->declBit(c+203,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ex_valid_i", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i wb_ready_i", false,-1);
        tracep->declBit(c+576,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i perf_pipeline_stall_o", false,-1);
        tracep->declBus(c+615,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ctrl_fsm_cs", false,-1, 4,0);
        tracep->declBus(c+279,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ctrl_fsm_ns", false,-1, 4,0);
        tracep->declBus(c+616,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_fsm_cs", false,-1, 2,0);
        tracep->declBus(c+280,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_fsm_ns", false,-1, 2,0);
        tracep->declBit(c+281,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i jump_done", false,-1);
        tracep->declBit(c+617,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i jump_done_q", false,-1);
        tracep->declBit(c+282,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i jump_in_dec", false,-1);
        tracep->declBit(c+618,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i branch_in_id_dec", false,-1);
        tracep->declBit(c+283,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i branch_in_id", false,-1);
        tracep->declBit(c+619,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i data_err_q", false,-1);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_mode_q", false,-1);
        tracep->declBit(c+284,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_mode_n", false,-1);
        tracep->declBit(c+285,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i ebrk_force_debug_mode", false,-1);
        tracep->declBit(c+286,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i is_hwlp_illegal", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i is_hwlp_body", false,-1);
        tracep->declBit(c+620,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i illegal_insn_q", false,-1);
        tracep->declBit(c+287,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i illegal_insn_n", false,-1);
        tracep->declBit(c+621,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_req_entry_q", false,-1);
        tracep->declBit(c+288,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_req_entry_n", false,-1);
        tracep->declBit(c+622,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_force_wakeup_q", false,-1);
        tracep->declBit(c+289,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_force_wakeup_n", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end0_eq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end1_eq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_counter0_gt_1", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_counter1_gt_1", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end0_eq_pc_plus4", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end1_eq_pc_plus4", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_start0_leq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_start1_leq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end0_geq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end1_geq_pc", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end_4_id_d", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i hwlp_end_4_id_q", false,-1);
        tracep->declBit(c+78,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_req_q", false,-1);
        tracep->declBit(c+79,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i debug_req_pending", false,-1);
        tracep->declBit(c+290,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i controller_i wfi_active", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i PULP_SECURE", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i rst_n", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_i", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_sec_i", false,-1);
        tracep->declBit(c+534,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_req_ctrl_o", false,-1);
        tracep->declBit(c+535,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_sec_ctrl_o", false,-1);
        tracep->declBus(c+536,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_id_ctrl_o", false,-1, 4,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_wu_ctrl_o", false,-1);
        tracep->declBus(c+455,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i mie_bypass_i", false,-1, 31,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i mip_o", false,-1, 31,0);
        tracep->declBit(c+451,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i m_ie_i", false,-1);
        tracep->declBit(c+452,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i u_ie_i", false,-1);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i current_priv_lvl_i", false,-1, 1,0);
        tracep->declBit(c+451,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i global_irq_enable", false,-1);
        tracep->declBus(c+623,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_local_qual", false,-1, 31,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_q", false,-1, 31,0);
        tracep->declBit(c+535,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i id_stage_i int_controller_i irq_sec_q", false,-1);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i FPU", false,-1, 31,0);
        tracep->declBus(c+1096,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i APU_NARGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1097,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i APU_WOP_CPU", false,-1, 31,0);
        tracep->declBus(c+1098,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i APU_NDSFLAGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1099,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i APU_NUSFLAGS_CPU", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i rst_n", false,-1);
        tracep->declBus(c+399,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_operator_i", false,-1, 6,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_operand_a_i", false,-1, 31,0);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_operand_b_i", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_operand_c_i", false,-1, 31,0);
        tracep->declBit(c+398,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_en_i", false,-1);
        tracep->declBus(c+402,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i bmask_a_i", false,-1, 4,0);
        tracep->declBus(c+403,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i bmask_b_i", false,-1, 4,0);
        tracep->declBus(c+404,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i imm_vec_ext_i", false,-1, 1,0);
        tracep->declBus(c+405,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_vec_mode_i", false,-1, 1,0);
        tracep->declBit(c+406,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_is_clpx_i", false,-1);
        tracep->declBit(c+407,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_is_subrot_i", false,-1);
        tracep->declBus(c+408,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_clpx_shift_i", false,-1, 1,0);
        tracep->declBus(c+409,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_operator_i", false,-1, 2,0);
        tracep->declBus(c+410,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_operand_a_i", false,-1, 31,0);
        tracep->declBus(c+411,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_operand_b_i", false,-1, 31,0);
        tracep->declBus(c+412,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_operand_c_i", false,-1, 31,0);
        tracep->declBit(c+413,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_en_i", false,-1);
        tracep->declBit(c+414,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_sel_subword_i", false,-1);
        tracep->declBus(c+415,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_signed_mode_i", false,-1, 1,0);
        tracep->declBus(c+416,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_imm_i", false,-1, 4,0);
        tracep->declBus(c+417,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_dot_op_a_i", false,-1, 31,0);
        tracep->declBus(c+418,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_dot_op_b_i", false,-1, 31,0);
        tracep->declBus(c+419,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_dot_op_c_i", false,-1, 31,0);
        tracep->declBus(c+420,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_dot_signed_i", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_is_clpx_i", false,-1);
        tracep->declBus(c+422,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_clpx_shift_i", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_clpx_img_i", false,-1);
        tracep->declBit(c+391,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_multicycle_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i fpu_fflags_we_o", false,-1);
        tracep->declBit(c+423,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_en_i", false,-1);
        tracep->declBus(c+424,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_op_i", false,-1, 5,0);
        tracep->declBus(c+425,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_lat_i", false,-1, 1,0);
        tracep->declArray(c+426,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_operands_i", false,-1, 95,0);
        tracep->declBus(c+429,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_waddr_i", false,-1, 5,0);
        tracep->declBus(c+377,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_flags_i", false,-1, 14,0);
        tracep->declBus(c+1060,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_read_regs_i", false,-1, 17,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_read_regs_valid_i", false,-1, 2,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_read_dep_o", false,-1);
        tracep->declBus(c+1061,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_write_regs_i", false,-1, 11,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_write_regs_valid_i", false,-1, 1,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_write_dep_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_perf_type_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_perf_cont_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_perf_wb_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_busy_o", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_ready_wb_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_req_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_gnt_i", false,-1);
        tracep->declArray(c+34,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_operands_o", false,-1, 95,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_op_o", false,-1, 5,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_rvalid_i", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_result_i", false,-1, 31,0);
        tracep->declBit(c+446,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i lsu_en_i", false,-1);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i lsu_rdata_i", false,-1, 31,0);
        tracep->declBit(c+394,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i branch_in_ex_i", false,-1);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_alu_waddr_i", false,-1, 5,0);
        tracep->declBit(c+435,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_alu_we_i", false,-1);
        tracep->declBit(c+431,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_we_i", false,-1);
        tracep->declBus(c+430,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_waddr_i", false,-1, 5,0);
        tracep->declBit(c+437,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i csr_access_i", false,-1);
        tracep->declBus(c+442,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i csr_rdata_i", false,-1, 31,0);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_waddr_wb_o", false,-1, 5,0);
        tracep->declBit(c+433,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_we_wb_o", false,-1);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_wdata_wb_o", false,-1, 31,0);
        tracep->declBus(c+434,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_alu_waddr_fw_o", false,-1, 5,0);
        tracep->declBit(c+436,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_alu_we_fw_o", false,-1);
        tracep->declBus(c+198,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_alu_wdata_fw_o", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i jump_target_o", false,-1, 31,0);
        tracep->declBit(c+395,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i branch_decision_o", false,-1);
        tracep->declBit(c+196,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i is_decoding_i", false,-1);
        tracep->declBit(c+988,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i lsu_ready_ex_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i lsu_err_i", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i ex_ready_o", false,-1);
        tracep->declBit(c+203,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i ex_valid_o", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i wb_ready_i", false,-1);
        tracep->declBus(c+291,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_result", false,-1, 31,0);
        tracep->declBus(c+292,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_result", false,-1, 31,0);
        tracep->declBit(c+395,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_cmp_result", false,-1);
        tracep->declBit(c+624,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_we_lsu", false,-1);
        tracep->declBus(c+432,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i regfile_waddr_lsu", false,-1, 5,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i wb_contention", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i wb_contention_lsu", false,-1);
        tracep->declBit(c+293,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_ready", false,-1);
        tracep->declBit(c+625,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_ready", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_valid", false,-1);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_waddr", false,-1, 5,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_result", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_stall", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_active", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_singlecycle", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_multicycle", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_req", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i apu_gnt", false,-1);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i rst_n", false,-1);
        tracep->declBit(c+398,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i enable_i", false,-1);
        tracep->declBus(c+399,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operator_i", false,-1, 6,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_a_i", false,-1, 31,0);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_b_i", false,-1, 31,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_c_i", false,-1, 31,0);
        tracep->declBus(c+405,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i vector_mode_i", false,-1, 1,0);
        tracep->declBus(c+402,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bmask_a_i", false,-1, 4,0);
        tracep->declBus(c+403,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bmask_b_i", false,-1, 4,0);
        tracep->declBus(c+404,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i imm_vec_ext_i", false,-1, 1,0);
        tracep->declBit(c+406,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_clpx_i", false,-1);
        tracep->declBit(c+407,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_subrot_i", false,-1);
        tracep->declBus(c+408,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i clpx_shift_i", false,-1, 1,0);
        tracep->declBus(c+291,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i result_o", false,-1, 31,0);
        tracep->declBit(c+395,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i comparison_result_o", false,-1);
        tracep->declBit(c+293,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ready_o", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ex_ready_i", false,-1);
        tracep->declBus(c+626,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_a_rev", false,-1, 31,0);
        tracep->declBus(c+627,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_a_neg", false,-1, 31,0);
        tracep->declBus(c+628,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_a_neg_rev", false,-1, 31,0);
        tracep->declBus(c+629,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_b_neg", false,-1, 31,0);
        tracep->declBus(c+294,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_shift", false,-1, 5,0);
        tracep->declBit(c+630,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_valid", false,-1);
        tracep->declBus(c+631,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bmask", false,-1, 31,0);
        tracep->declBit(c+632,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_op_b_negate", false,-1);
        tracep->declBus(c+633,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_op_a", false,-1, 31,0);
        tracep->declBus(c+634,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_op_b", false,-1, 31,0);
        tracep->declQuad(c+635,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_in_a", false,-1, 35,0);
        tracep->declQuad(c+637,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_in_b", false,-1, 35,0);
        tracep->declBus(c+639,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_result", false,-1, 31,0);
        tracep->declQuad(c+640,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_result_expanded", false,-1, 36,0);
        tracep->declBus(c+642,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_round_value", false,-1, 31,0);
        tracep->declBus(c+643,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i adder_round_result", false,-1, 31,0);
        tracep->declBit(c+644,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_left", false,-1);
        tracep->declBit(c+645,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_use_round", false,-1);
        tracep->declBit(c+646,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_arithmetic", false,-1);
        tracep->declBus(c+295,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_amt_left", false,-1, 31,0);
        tracep->declBus(c+296,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_amt", false,-1, 31,0);
        tracep->declBus(c+297,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_amt_int", false,-1, 31,0);
        tracep->declBus(c+647,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_amt_norm", false,-1, 31,0);
        tracep->declBus(c+648,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_op_a", false,-1, 31,0);
        tracep->declBus(c+298,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_result", false,-1, 31,0);
        tracep->declBus(c+299,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_right_result", false,-1, 31,0);
        tracep->declBus(c+300,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_left_result", false,-1, 31,0);
        tracep->declBus(c+649,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i clpx_shift_ex", false,-1, 15,0);
        tracep->declQuad(c+650,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shift_op_a_32", false,-1, 63,0);
        tracep->declBus(c+652,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_equal", false,-1, 3,0);
        tracep->declBus(c+653,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_greater", false,-1, 3,0);
        tracep->declBus(c+654,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i cmp_signed", false,-1, 3,0);
        tracep->declBus(c+655,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_equal_vec", false,-1, 3,0);
        tracep->declBus(c+656,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_greater_vec", false,-1, 3,0);
        tracep->declBus(c+657,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i operand_b_eq", false,-1, 31,0);
        tracep->declBit(c+658,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i is_equal_clip", false,-1);
        tracep->declBus(c+659,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i cmp_result", false,-1, 3,0);
        tracep->declBus(c+660,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i result_minmax", false,-1, 31,0);
        tracep->declBus(c+661,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i sel_minmax", false,-1, 3,0);
        tracep->declBit(c+662,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i do_min", false,-1);
        tracep->declBus(c+663,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i minmax_b", false,-1, 31,0);
        tracep->declBus(c+664,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i clip_result", false,-1, 31,0);
        tracep->declBus(c+665,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_byte_sel", false,-1, 7,0);
        tracep->declBus(c+666,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_reg_sel", false,-1, 3,0);
        tracep->declBus(c+667,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_reg1_sel", false,-1, 1,0);
        tracep->declBus(c+668,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_reg0_sel", false,-1, 1,0);
        tracep->declBus(c+669,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_through", false,-1, 3,0);
        tracep->declBus(c+670,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_r1", false,-1, 31,0);
        tracep->declBus(c+671,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_r0", false,-1, 31,0);
        tracep->declBus(c+672,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_r1_in", false,-1, 31,0);
        tracep->declBus(c+673,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_r0_in", false,-1, 31,0);
        tracep->declBus(c+674,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i shuffle_result", false,-1, 31,0);
        tracep->declBus(c+675,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i pack_result", false,-1, 31,0);
        tracep->declBus(c+676,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_input", false,-1, 31,0);
        tracep->declBus(c+677,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i cnt_result", false,-1, 5,0);
        tracep->declBus(c+336,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i clb_result", false,-1, 5,0);
        tracep->declBus(c+337,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff1_result", false,-1, 4,0);
        tracep->declBit(c+338,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_no_one", false,-1);
        tracep->declBus(c+339,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i fl1_result", false,-1, 4,0);
        tracep->declBus(c+301,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bitop_result", false,-1, 5,0);
        tracep->declBit(c+678,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i extract_is_signed", false,-1);
        tracep->declBit(c+340,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i extract_sign", false,-1);
        tracep->declBus(c+679,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bmask_first", false,-1, 31,0);
        tracep->declBus(c+680,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bmask_inv", false,-1, 31,0);
        tracep->declBus(c+341,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bextins_and", false,-1, 31,0);
        tracep->declBus(c+302,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bextins_result", false,-1, 31,0);
        tracep->declBus(c+681,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bclr_result", false,-1, 31,0);
        tracep->declBus(c+682,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i bset_result", false,-1, 31,0);
        tracep->declBus(c+303,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i radix_2_rev", false,-1, 31,0);
        tracep->declBus(c+304,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i radix_4_rev", false,-1, 31,0);
        tracep->declBus(c+305,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i radix_8_rev", false,-1, 31,0);
        tracep->declBus(c+342,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i reverse_result", false,-1, 31,0);
        tracep->declBus(c+683,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i radix_mux_sel", false,-1, 1,0);
        tracep->declBus(c+684,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i result_div", false,-1, 31,0);
        tracep->declBit(c+293,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_ready", false,-1);
        tracep->declBit(c+685,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_signed", false,-1);
        tracep->declBit(c+686,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_op_a_signed", false,-1);
        tracep->declBus(c+343,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i div_shift_int", false,-1, 5,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i in_i", false,-1, 31,0);
        tracep->declBus(c+677,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i result_o", false,-1, 5,0);
        tracep->declBus(c+687,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i cnt_l1", false,-1, 31,0);
        tracep->declBus(c+688,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i cnt_l2", false,-1, 23,0);
        tracep->declBus(c+689,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i cnt_l3", false,-1, 15,0);
        tracep->declBus(c+690,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i popcnt_i cnt_l4", false,-1, 9,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i LEN", false,-1, 31,0);
        tracep->declBus(c+676,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i in_i", false,-1, 31,0);
        tracep->declBus(c+337,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i first_one_o", false,-1, 4,0);
        tracep->declBit(c+338,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i no_ones_o", false,-1);
        tracep->declBus(c+1099,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i NUM_LEVELS", false,-1, 31,0);
        tracep->declArray(c+40,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i index_lut", false,-1, 159,0);
        tracep->declBus(c+344,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i sel_nodes", false,-1, 31,0);
        tracep->declArray(c+345,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i ff_one_i index_nodes", false,-1, 159,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i C_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1097,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i C_LOG_WIDTH", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i Clk_CI", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i Rst_RBI", false,-1);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpA_DI", false,-1, 31,0);
        tracep->declBus(c+300,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpB_DI", false,-1, 31,0);
        tracep->declBus(c+294,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpBShift_DI", false,-1, 5,0);
        tracep->declBit(c+691,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpBIsZero_SI", false,-1);
        tracep->declBit(c+686,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpBSign_SI", false,-1);
        tracep->declBus(c+692,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OpCode_SI", false,-1, 1,0);
        tracep->declBit(c+630,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i InVld_SI", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OutRdy_SI", false,-1);
        tracep->declBit(c+293,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OutVld_SO", false,-1);
        tracep->declBus(c+684,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i Res_DO", false,-1, 31,0);
        tracep->declBus(c+693,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResReg_DP", false,-1, 31,0);
        tracep->declBus(c+350,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResReg_DN", false,-1, 31,0);
        tracep->declBus(c+694,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResReg_DP_rev", false,-1, 31,0);
        tracep->declBus(c+695,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i AReg_DP", false,-1, 31,0);
        tracep->declBus(c+351,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i AReg_DN", false,-1, 31,0);
        tracep->declBus(c+696,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i BReg_DP", false,-1, 31,0);
        tracep->declBus(c+352,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i BReg_DN", false,-1, 31,0);
        tracep->declBit(c+353,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i RemSel_SN", false,-1);
        tracep->declBit(c+697,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i RemSel_SP", false,-1);
        tracep->declBit(c+354,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i CompInv_SN", false,-1);
        tracep->declBit(c+698,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i CompInv_SP", false,-1);
        tracep->declBit(c+355,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResInv_SN", false,-1);
        tracep->declBit(c+699,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResInv_SP", false,-1);
        tracep->declBus(c+306,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i AddMux_D", false,-1, 31,0);
        tracep->declBus(c+356,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i AddOut_D", false,-1, 31,0);
        tracep->declBus(c+307,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i AddTmp_D", false,-1, 31,0);
        tracep->declBus(c+357,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i BMux_D", false,-1, 31,0);
        tracep->declBus(c+700,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i OutMux_D", false,-1, 31,0);
        tracep->declBus(c+701,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i Cnt_DP", false,-1, 5,0);
        tracep->declBus(c+358,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i Cnt_DN", false,-1, 5,0);
        tracep->declBit(c+702,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i CntZero_S", false,-1);
        tracep->declBit(c+308,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ARegEn_S", false,-1);
        tracep->declBit(c+309,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i BRegEn_S", false,-1);
        tracep->declBit(c+310,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ResRegEn_S", false,-1);
        tracep->declBit(c+703,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i ABComp_S", false,-1);
        tracep->declBit(c+359,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i PmSel_S", false,-1);
        tracep->declBit(c+311,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i LoadEn_S", false,-1);
        tracep->declBus(c+312,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i State_SN", false,-1, 1,0);
        tracep->declBus(c+704,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i alu_i alu_div_i State_SP", false,-1, 1,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i rst_n", false,-1);
        tracep->declBit(c+413,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i enable_i", false,-1);
        tracep->declBus(c+409,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i operator_i", false,-1, 2,0);
        tracep->declBit(c+414,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_subword_i", false,-1);
        tracep->declBus(c+415,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_signed_i", false,-1, 1,0);
        tracep->declBus(c+410,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i op_a_i", false,-1, 31,0);
        tracep->declBus(c+411,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i op_b_i", false,-1, 31,0);
        tracep->declBus(c+412,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i op_c_i", false,-1, 31,0);
        tracep->declBus(c+416,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i imm_i", false,-1, 4,0);
        tracep->declBus(c+420,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_signed_i", false,-1, 1,0);
        tracep->declBus(c+417,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_op_a_i", false,-1, 31,0);
        tracep->declBus(c+418,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_op_b_i", false,-1, 31,0);
        tracep->declBus(c+419,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_op_c_i", false,-1, 31,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i is_clpx_i", false,-1);
        tracep->declBus(c+422,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i clpx_shift_i", false,-1, 1,0);
        tracep->declBit(c+421,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i clpx_img_i", false,-1);
        tracep->declBus(c+292,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i result_o", false,-1, 31,0);
        tracep->declBit(c+391,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i multicycle_o", false,-1);
        tracep->declBit(c+625,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i ready_o", false,-1);
        tracep->declBit(c+201,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i ex_ready_i", false,-1);
        tracep->declBus(c+360,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_op_a", false,-1, 16,0);
        tracep->declBus(c+361,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_op_b", false,-1, 16,0);
        tracep->declQuad(c+705,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_op_c", false,-1, 32,0);
        tracep->declQuad(c+362,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_mul", false,-1, 33,0);
        tracep->declQuad(c+313,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_mac", false,-1, 33,0);
        tracep->declBus(c+707,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_round", false,-1, 31,0);
        tracep->declBus(c+708,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_round_tmp", false,-1, 31,0);
        tracep->declQuad(c+315,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_result", false,-1, 33,0);
        tracep->declBit(c+364,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_mac_msb1", false,-1);
        tracep->declBit(c+365,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_mac_msb0", false,-1);
        tracep->declBus(c+709,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_imm", false,-1, 4,0);
        tracep->declBus(c+710,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_subword", false,-1, 1,0);
        tracep->declBus(c+711,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_signed", false,-1, 1,0);
        tracep->declBit(c+712,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i short_shift_arith", false,-1);
        tracep->declBus(c+713,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_imm", false,-1, 4,0);
        tracep->declBus(c+714,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_subword", false,-1, 1,0);
        tracep->declBus(c+715,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_signed", false,-1, 1,0);
        tracep->declBit(c+716,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_shift_arith", false,-1);
        tracep->declBit(c+717,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_carry_q", false,-1);
        tracep->declBit(c+718,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_active", false,-1);
        tracep->declBit(c+719,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_save", false,-1);
        tracep->declBit(c+720,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_clearcarry", false,-1);
        tracep->declBit(c+625,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_ready", false,-1);
        tracep->declBus(c+721,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_CS", false,-1, 2,0);
        tracep->declBus(c+317,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i mulh_NS", false,-1, 2,0);
        tracep->declBus(c+722,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i int_op_a_msu", false,-1, 31,0);
        tracep->declBus(c+723,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i int_op_b_msu", false,-1, 31,0);
        tracep->declBus(c+724,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i int_result", false,-1, 31,0);
        tracep->declBit(c+725,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i int_is_msu", false,-1);
        tracep->declBus(c+726,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_char_result", false,-1, 31,0);
        tracep->declQuad(c+727,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_result", false,-1, 32,0);
        tracep->declBus(c+729,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i accumulator", false,-1, 31,0);
        tracep->declBus(c+730,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i clpx_shift_result", false,-1, 15,0);
        tracep->declQuad(c+731,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_char_op_a", false,-1, 35,0);
        tracep->declQuad(c+733,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_char_op_b", false,-1, 35,0);
        tracep->declArray(c+735,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_char_mul", false,-1, 71,0);
        tracep->declQuad(c+738,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_op_a", false,-1, 33,0);
        tracep->declQuad(c+740,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_op_b", false,-1, 33,0);
        tracep->declArray(c+742,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_mul", false,-1, 67,0);
        tracep->declBus(c+745,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_op_a_1_neg", false,-1, 16,0);
        tracep->declBus(c+746,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i ex_stage_i mult_i dot_short_op_b_ext", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i PULP_OBI", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rst_n", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_req_o", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_gnt_i", false,-1);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_rvalid_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_err_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_err_pmp_i", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_addr_o", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_we_o", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_be_o", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_wdata_o", false,-1, 31,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_rdata_i", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_we_ex_i", false,-1);
        tracep->declBus(c+443,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_type_ex_i", false,-1, 1,0);
        tracep->declBus(c+393,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_wdata_ex_i", false,-1, 31,0);
        tracep->declBus(c+445,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_reg_offset_ex_i", false,-1, 1,0);
        tracep->declBit(c+447,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_load_event_ex_i", false,-1);
        tracep->declBus(c+444,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_sign_ext_ex_i", false,-1, 1,0);
        tracep->declBus(c+986,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_rdata_ex_o", false,-1, 31,0);
        tracep->declBit(c+446,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_req_ex_i", false,-1);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i operand_a_ex_i", false,-1, 31,0);
        tracep->declBus(c+401,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i operand_b_ex_i", false,-1, 31,0);
        tracep->declBit(c+389,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i addr_useincr_ex_i", false,-1);
        tracep->declBit(c+448,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_misaligned_ex_i", false,-1);
        tracep->declBit(c+390,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_misaligned_o", false,-1);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_atop_ex_i", false,-1, 5,0);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_atop_o", false,-1, 5,0);
        tracep->declBit(c+449,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i p_elw_start_o", false,-1);
        tracep->declBit(c+1034,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i p_elw_finish_o", false,-1);
        tracep->declBit(c+988,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i lsu_ready_ex_o", false,-1);
        tracep->declBit(c+987,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i lsu_ready_wb_o", false,-1);
        tracep->declBit(c+396,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i busy_o", false,-1);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i DEPTH", false,-1, 31,0);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_valid", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_ready", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_addr", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_we", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_be", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_wdata", false,-1, 31,0);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i trans_atop", false,-1, 5,0);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i resp_valid", false,-1);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i resp_rdata", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i resp_err", false,-1);
        tracep->declBus(c+747,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i cnt_q", false,-1, 1,0);
        tracep->declBus(c+1039,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i next_cnt", false,-1, 1,0);
        tracep->declBit(c+1040,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i count_up", false,-1);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i count_down", false,-1);
        tracep->declBit(c+994,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i ctrl_update", false,-1);
        tracep->declBus(c+748,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_addr_int", false,-1, 31,0);
        tracep->declBus(c+749,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_type_q", false,-1, 1,0);
        tracep->declBus(c+750,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rdata_offset_q", false,-1, 1,0);
        tracep->declBus(c+751,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_sign_ext_q", false,-1, 1,0);
        tracep->declBit(c+752,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_we_q", false,-1);
        tracep->declBit(c+753,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_load_event_q", false,-1);
        tracep->declBus(c+754,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i wdata_offset", false,-1, 1,0);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_be", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_wdata", false,-1, 31,0);
        tracep->declBit(c+448,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i misaligned_st", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i load_err_o", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i store_err_o", false,-1);
        tracep->declBus(c+755,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rdata_q", false,-1, 31,0);
        tracep->declBus(c+995,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_rdata_ext", false,-1, 31,0);
        tracep->declBus(c+1041,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rdata_w_ext", false,-1, 31,0);
        tracep->declBus(c+996,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rdata_h_ext", false,-1, 31,0);
        tracep->declBus(c+997,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i rdata_b_ext", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i TRANS_STABLE", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i rst_n", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_valid_i", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_ready_o", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_addr_i", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_we_i", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_be_i", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_wdata_i", false,-1, 31,0);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i trans_atop_i", false,-1, 5,0);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i resp_valid_o", false,-1);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i resp_rdata_o", false,-1, 31,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i resp_err_o", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_req_o", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_gnt_i", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_addr_o", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_we_o", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_be_o", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_wdata_o", false,-1, 31,0);
        tracep->declBus(c+381,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_atop_o", false,-1, 5,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_rdata_i", false,-1, 31,0);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_rvalid_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i obi_err_i", false,-1);
        tracep->declBit(c+1148,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i state_q", false,-1);
        tracep->declBit(c+1148,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i load_store_unit_i data_obi_i next_state", false,-1);
        tracep->declBus(c+1058,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i N_HWLP", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i N_HWLP_BITS", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i APU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i A_EXTENSION", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i FPU", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i PULP_SECURE", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i USE_PMP", false,-1, 31,0);
        tracep->declBus(c+1057,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i N_PMP_ENTRIES", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i NUM_MHPMCOUNTERS", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i PULP_XPULP", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i PULP_CLUSTER", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i DEBUG_TRIGGER_EN", false,-1, 31,0);
        tracep->declBit(c+217,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i clk", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i rst_n", false,-1);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hart_id_i", false,-1, 31,0);
        tracep->declBus(c+439,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_o", false,-1, 23,0);
        tracep->declBus(c+1063,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_o", false,-1, 23,0);
        tracep->declBus(c+440,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_mode_o", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_mode_o", false,-1, 1,0);
        tracep->declBus(c+1053,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_addr_i", false,-1, 31,0);
        tracep->declBit(c+212,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_mtvec_init_i", false,-1);
        tracep->declBus(c+441,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_addr_i", false,-1, 11,0);
        tracep->declBus(c+400,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_wdata_i", false,-1, 31,0);
        tracep->declBus(c+438,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_op_i", false,-1, 1,0);
        tracep->declBus(c+442,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_rdata_o", false,-1, 31,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i frm_o", false,-1, 2,0);
        tracep->declBus(c+1056,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i fflags_i", false,-1, 4,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i fflags_we_i", false,-1);
        tracep->declBus(c+455,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mie_bypass_o", false,-1, 31,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mip_i", false,-1, 31,0);
        tracep->declBit(c+451,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i m_irq_enable_o", false,-1);
        tracep->declBit(c+452,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i u_irq_enable_o", false,-1);
        tracep->declBit(c+204,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_irq_sec_i", false,-1);
        tracep->declBit(c+1052,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i sec_lvl_o", false,-1);
        tracep->declBus(c+453,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mepc_o", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i uepc_o", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcounteren_o", false,-1, 31,0);
        tracep->declBit(c+457,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_mode_i", false,-1);
        tracep->declBus(c+213,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_cause_i", false,-1, 2,0);
        tracep->declBit(c+214,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_csr_save_i", false,-1);
        tracep->declBus(c+454,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i depc_o", false,-1, 31,0);
        tracep->declBit(c+458,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_single_step_o", false,-1);
        tracep->declBit(c+459,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_ebreakm_o", false,-1);
        tracep->declBit(c+460,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i debug_ebreaku_o", false,-1);
        tracep->declBit(c+461,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i trigger_match_o", false,-1);
        tracep->declArray(c+1149,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmp_addr_o", false,-1, 511,0);
        tracep->declArray(c+1165,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmp_cfg_o", false,-1, 127,0);
        tracep->declBus(c+1064,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i priv_lvl_o", false,-1, 1,0);
        tracep->declBus(c+387,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pc_if_i", false,-1, 31,0);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pc_id_i", false,-1, 31,0);
        tracep->declBus(c+397,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pc_ex_i", false,-1, 31,0);
        tracep->declBit(c+206,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_save_if_i", false,-1);
        tracep->declBit(c+207,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_save_id_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_save_ex_i", false,-1);
        tracep->declBit(c+209,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_restore_mret_i", false,-1);
        tracep->declBit(c+210,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_restore_uret_i", false,-1);
        tracep->declBit(c+211,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_restore_dret_i", false,-1);
        tracep->declBus(c+208,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_cause_i", false,-1, 5,0);
        tracep->declBit(c+205,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_save_cause_i", false,-1);
        tracep->declQuad(c+1065,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_start_i", false,-1, 63,0);
        tracep->declQuad(c+1067,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_end_i", false,-1, 63,0);
        tracep->declQuad(c+1069,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_cnt_i", false,-1, 63,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_data_o", false,-1, 31,0);
        tracep->declBus(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_regid_o", false,-1, 0,0);
        tracep->declBus(c+1059,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hwlp_we_o", false,-1, 2,0);
        tracep->declBit(c+462,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_minstret_i", false,-1);
        tracep->declBit(c+463,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_load_i", false,-1);
        tracep->declBit(c+464,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_store_i", false,-1);
        tracep->declBit(c+465,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_jump_i", false,-1);
        tracep->declBit(c+466,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_branch_i", false,-1);
        tracep->declBit(c+467,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_branch_taken_i", false,-1);
        tracep->declBit(c+468,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_compressed_i", false,-1);
        tracep->declBit(c+469,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_jr_stall_i", false,-1);
        tracep->declBit(c+470,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_imiss_i", false,-1);
        tracep->declBit(c+471,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_ld_stall_i", false,-1);
        tracep->declBit(c+472,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_pipe_stall_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i apu_typeconflict_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i apu_contention_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i apu_dep_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i apu_wb_i", false,-1);
        tracep->declBus(c+1057,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i NUM_HPM_EVENTS", false,-1, 31,0);
        tracep->declBus(c+1169,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MTVEC_MODE", false,-1, 1,0);
        tracep->declBus(c+1057,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MAX_N_PMP_ENTRIES", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MAX_N_PMP_CFG", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i N_PMP_CFG", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_UIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_SIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1096,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_MIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_UPIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1099,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_SPIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1106,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_MPIE_BIT", false,-1, 31,0);
        tracep->declBus(c+1171,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_SPP_BIT", false,-1, 31,0);
        tracep->declBus(c+1172,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_MPP_BIT_HIGH", false,-1, 31,0);
        tracep->declBus(c+1105,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_MPP_BIT_LOW", false,-1, 31,0);
        tracep->declBus(c+1173,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MSTATUS_MPRV_BIT", false,-1, 31,0);
        tracep->declBus(c+1169,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MXL", false,-1, 1,0);
        tracep->declBus(c+1174,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MISA_VALUE", false,-1, 31,0);
        tracep->declBus(c+1175,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i MHPMCOUNTER_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i PULP_PERF_COUNTERS", false,-1, 31,0);
        tracep->declBus(c+756,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_wdata_int", false,-1, 31,0);
        tracep->declBus(c+442,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_rdata_int", false,-1, 31,0);
        tracep->declBit(c+757,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_we_int", false,-1);
        tracep->declBus(c+758,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i frm_q", false,-1, 2,0);
        tracep->declBus(c+759,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i frm_n", false,-1, 2,0);
        tracep->declBus(c+760,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i fflags_q", false,-1, 4,0);
        tracep->declBus(c+761,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i fflags_n", false,-1, 4,0);
        tracep->declBus(c+453,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mepc_q", false,-1, 31,0);
        tracep->declBus(c+318,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mepc_n", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i uepc_q", false,-1, 31,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i uepc_n", false,-1, 31,0);
        tracep->declBus(c+762,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i tmatch_control_rdata", false,-1, 31,0);
        tracep->declBus(c+763,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i tmatch_value_rdata", false,-1, 31,0);
        tracep->declBus(c+1176,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i tinfo_types", false,-1, 15,0);
        tracep->declBus(c+764,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dcsr_q", false,-1, 31,0);
        tracep->declBus(c+319,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dcsr_n", false,-1, 31,0);
        tracep->declBus(c+454,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i depc_q", false,-1, 31,0);
        tracep->declBus(c+320,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i depc_n", false,-1, 31,0);
        tracep->declBus(c+765,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dscratch0_q", false,-1, 31,0);
        tracep->declBus(c+766,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dscratch0_n", false,-1, 31,0);
        tracep->declBus(c+767,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dscratch1_q", false,-1, 31,0);
        tracep->declBus(c+768,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i dscratch1_n", false,-1, 31,0);
        tracep->declBus(c+769,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mscratch_q", false,-1, 31,0);
        tracep->declBus(c+770,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mscratch_n", false,-1, 31,0);
        tracep->declBus(c+321,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i exception_pc", false,-1, 31,0);
        tracep->declBus(c+771,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mstatus_q", false,-1, 6,0);
        tracep->declBus(c+322,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mstatus_n", false,-1, 6,0);
        tracep->declBus(c+772,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcause_q", false,-1, 5,0);
        tracep->declBus(c+323,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcause_n", false,-1, 5,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i ucause_q", false,-1, 5,0);
        tracep->declBus(c+1055,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i ucause_n", false,-1, 5,0);
        tracep->declBus(c+324,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_n", false,-1, 23,0);
        tracep->declBus(c+439,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_q", false,-1, 23,0);
        tracep->declBus(c+1063,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_n", false,-1, 23,0);
        tracep->declBus(c+1063,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_q", false,-1, 23,0);
        tracep->declBus(c+773,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_mode_n", false,-1, 1,0);
        tracep->declBus(c+440,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mtvec_mode_q", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_mode_n", false,-1, 1,0);
        tracep->declBus(c+1062,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i utvec_mode_q", false,-1, 1,0);
        tracep->declBus(c+456,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mip", false,-1, 31,0);
        tracep->declBus(c+774,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mie_q", false,-1, 31,0);
        tracep->declBus(c+775,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mie_n", false,-1, 31,0);
        tracep->declBus(c+776,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_mie_wdata", false,-1, 31,0);
        tracep->declBit(c+777,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i csr_mie_we", false,-1);
        tracep->declBit(c+325,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i is_irq", false,-1);
        tracep->declBus(c+326,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i priv_lvl_n", false,-1, 1,0);
        tracep->declBus(c+1177,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i priv_lvl_q", false,-1, 1,0);
        tracep->declArray(c+1178,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmp_reg_q", false,-1, 767,0);
        tracep->declArray(c+45,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmp_reg_n", false,-1, 767,0);
        tracep->declBus(c+1202,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmpaddr_we", false,-1, 15,0);
        tracep->declBus(c+1202,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i pmpcfg_we", false,-1, 15,0);
        tracep->declArray(c+778,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmcounter_q", false,-1, 2047,0);
        tracep->declArray(c+842,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_q", false,-1, 1023,0);
        tracep->declArray(c+874,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_n", false,-1, 1023,0);
        tracep->declBus(c+69,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcounteren_q", false,-1, 31,0);
        tracep->declBus(c+69,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcounteren_n", false,-1, 31,0);
        tracep->declBus(c+906,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcountinhibit_q", false,-1, 31,0);
        tracep->declBus(c+907,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcountinhibit_n", false,-1, 31,0);
        tracep->declBus(c+908,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i hpm_events", false,-1, 15,0);
        tracep->declArray(c+909,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmcounter_increment", false,-1, 2047,0);
        tracep->declBus(c+973,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmcounter_write_lower", false,-1, 31,0);
        tracep->declBus(c+974,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmcounter_write_upper", false,-1, 31,0);
        tracep->declBus(c+975,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmcounter_write_increment", false,-1, 31,0);
        tracep->declBit(c+976,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcounteren_we", false,-1);
        tracep->declBit(c+977,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mcountinhibit_we", false,-1);
        tracep->declBit(c+978,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i mhpmevent_we", false,-1);
        tracep->declBit(c+979,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i gen_trigger_regs tmatch_control_exec_q", false,-1);
        tracep->declBus(c+763,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i gen_trigger_regs tmatch_value_q", false,-1, 31,0);
        tracep->declBit(c+980,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i gen_trigger_regs tmatch_control_we", false,-1);
        tracep->declBit(c+981,"tb_top_verilator cv32e40p_tb_wrapper_i cv32e40p_core_i cs_registers_i gen_trigger_regs tmatch_value_we", false,-1);
        tracep->declBus(c+1044,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RAM_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1043,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i INSTR_RDATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i DATA_RDATA_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1203,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i DBG_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i IRQ_WIDTH", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rst_ni", false,-1);
        tracep->declBus(c+1046,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dm_halt_addr_i", false,-1, 31,0);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_req_i", false,-1);
        tracep->declBus(c+327,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_addr_i", false,-1, 31,0);
        tracep->declArray(c+366,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rdata_o", false,-1, 127,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_o", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_o", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_req_i", false,-1);
        tracep->declBus(c+373,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_addr_i", false,-1, 31,0);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_we_i", false,-1);
        tracep->declBus(c+375,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_be_i", false,-1, 3,0);
        tracep->declBus(c+376,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_wdata_i", false,-1, 31,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rdata_o", false,-1, 31,0);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_o", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_o", false,-1);
        tracep->declBus(c+188,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i irq_id_i", false,-1, 4,0);
        tracep->declBit(c+187,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i irq_ack_i", false,-1);
        tracep->declBus(c+74,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i irq_o", false,-1, 31,0);
        tracep->declBus(c+388,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i pc_core_id_i", false,-1, 31,0);
        tracep->declBit(c+73,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debug_req_o", false,-1);
        tracep->declBit(c+1029,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i tests_passed_o", false,-1);
        tracep->declBit(c+1030,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i tests_failed_o", false,-1);
        tracep->declBit(c+983,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i exit_valid_o", false,-1);
        tracep->declBus(c+984,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i exit_value_o", false,-1, 31,0);
        tracep->declBus(c+1204,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_REGS", false,-1, 31,0);
        tracep->declBus(c+1205,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_INSTR_EN", false,-1, 31,0);
        tracep->declBus(c+1206,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_INSTR_MODE", false,-1, 31,0);
        tracep->declBus(c+1207,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_INSTR_MAX", false,-1, 31,0);
        tracep->declBus(c+1208,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_INSTR_GNT", false,-1, 31,0);
        tracep->declBus(c+1209,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_INSTR_VALID", false,-1, 31,0);
        tracep->declBus(c+1210,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_DATA_EN", false,-1, 31,0);
        tracep->declBus(c+1211,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_DATA_MODE", false,-1, 31,0);
        tracep->declBus(c+1212,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_DATA_MAX", false,-1, 31,0);
        tracep->declBus(c+1213,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_DATA_GNT", false,-1, 31,0);
        tracep->declBus(c+1214,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_STALL_DATA_VALID", false,-1, 31,0);
        tracep->declBus(c+1215,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i RND_IRQ_ID", false,-1, 31,0);
        tracep->declBus(c+1216,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_PRINT", false,-1, 31,0);
        tracep->declBus(c+1217,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_TESTSTATUS", false,-1, 31,0);
        tracep->declBus(c+1218,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_EXIT", false,-1, 31,0);
        tracep->declBus(c+1219,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_SIGBEGIN", false,-1, 31,0);
        tracep->declBus(c+1220,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_SIGEND", false,-1, 31,0);
        tracep->declBus(c+1221,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_SIGDUMP", false,-1, 31,0);
        tracep->declBus(c+1222,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_TIMERREG", false,-1, 31,0);
        tracep->declBus(c+1223,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_TIMERVAL", false,-1, 31,0);
        tracep->declBus(c+1224,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_DBG", false,-1, 31,0);
        tracep->declBus(c+1225,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_RNDSTALL", false,-1, 31,0);
        tracep->declBus(c+1226,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_RNDNUM", false,-1, 31,0);
        tracep->declBus(c+1227,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i MMADDR_TICKS", false,-1, 31,0);
        tracep->declBus(c+998,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i select_rdata_d", false,-1, 2,0);
        tracep->declBus(c+80,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i select_rdata_q", false,-1, 2,0);
        tracep->declBit(c+999,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i transaction", false,-1);
        tracep->declBus(c+1042,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i i", false,-1, 31,0);
        tracep->declBus(c+982,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_addr_aligned", false,-1, 31,0);
        tracep->declBit(c+1228,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_q", false,-1);
        tracep->declBit(c+1229,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_q", false,-1);
        tracep->declArray(c+177,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i core_instr_rdata", false,-1, 127,0);
        tracep->declBus(c+181,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i core_data_rdata", false,-1, 31,0);
        tracep->declBit(c+1000,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_req", false,-1);
        tracep->declBus(c+1001,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_addr", false,-1, 21,0);
        tracep->declBus(c+1002,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_wdata", false,-1, 31,0);
        tracep->declBus(c+181,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_rdata", false,-1, 31,0);
        tracep->declBit(c+1003,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_we", false,-1);
        tracep->declBus(c+1004,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_be", false,-1, 3,0);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_gnt", false,-1);
        tracep->declBit(c+1230,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_data_valid", false,-1);
        tracep->declBit(c+1005,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_req_dec", false,-1);
        tracep->declBus(c+1002,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_wdata_dec", false,-1, 31,0);
        tracep->declBus(c+1001,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_addr_dec", false,-1, 21,0);
        tracep->declBit(c+1003,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_we_dec", false,-1);
        tracep->declBus(c+1004,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_be_dec", false,-1, 3,0);
        tracep->declArray(c+177,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_instr_rdata", false,-1, 127,0);
        tracep->declBit(c+328,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_instr_req", false,-1);
        tracep->declBus(c+329,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_instr_addr", false,-1, 21,0);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_instr_gnt", false,-1);
        tracep->declBit(c+1231,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i ram_instr_valid", false,-1);
        tracep->declBus(c+329,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_addr_remap", false,-1, 21,0);
        tracep->declBus(c+1006,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i print_wdata", false,-1, 31,0);
        tracep->declBit(c+1007,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i print_valid", false,-1);
        tracep->declBus(c+1008,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i sig_end_d", false,-1, 31,0);
        tracep->declBus(c+81,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i sig_end_q", false,-1, 31,0);
        tracep->declBus(c+1009,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i sig_begin_d", false,-1, 31,0);
        tracep->declBus(c+82,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i sig_begin_q", false,-1, 31,0);
        tracep->declBus(c+83,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i timer_irq_mask_q", false,-1, 31,0);
        tracep->declBus(c+84,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i timer_cnt_q", false,-1, 31,0);
        tracep->declBus(c+85,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i irq_q", false,-1, 31,0);
        tracep->declBit(c+1010,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i timer_reg_valid", false,-1);
        tracep->declBit(c+1011,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i timer_val_valid", false,-1);
        tracep->declBus(c+1012,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i timer_wdata", false,-1, 31,0);
        tracep->declBus(c+86,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i cycle_count_q", false,-1, 31,0);
        tracep->declBit(c+87,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i cycle_count_overflow_q", false,-1);
        tracep->declBit(c+1013,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i cycle_count_clear", false,-1);
        tracep->declBus(c+1014,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debugger_wdata", false,-1, 31,0);
        tracep->declBit(c+1015,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debugger_valid", false,-1);
        {int i; for (i=0; i<16; i++) {
                tracep->declBus(c+151+i*1,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_regs", true,(i+0), 31,0);}}
        tracep->declBit(c+1016,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_req", false,-1);
        tracep->declBus(c+1017,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_addr", false,-1, 31,0);
        tracep->declBus(c+1018,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_wdata", false,-1, 31,0);
        tracep->declBit(c+1019,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_we", false,-1);
        tracep->declBus(c+88,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_rdata", false,-1, 31,0);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_instr_req", false,-1);
        tracep->declBit(c+89,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_instr_gnt", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_data_req", false,-1);
        tracep->declBit(c+90,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_stall_data_gnt", false,-1);
        tracep->declBit(c+1020,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_num_req", false,-1);
        tracep->declBus(c+91,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_num", false,-1, 31,0);
        tracep->declBit(c+1232,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i rnd_irq", false,-1);
        tracep->declBit(c+1021,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i use_sig_file", false,-1);
        tracep->declBus(c+1022,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i sig_fd", false,-1, 31,0);
        tracep->declBus(c+1233,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i errno", false,-1, 31,0);
        tracep->declBus(c+371,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rdata_mux", false,-1, 31,0);
        tracep->declBus(c+92,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debugger_start_cnt_q", false,-1, 14,0);
        tracep->declBit(c+93,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debug_req_value_q", false,-1);
        tracep->declBus(c+94,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i debug_req_duration_q", false,-1, 12,0);
        tracep->declBus(c+1023,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i unnamedblk1 addr", false,-1, 31,0);
        tracep->declBus(c+1044,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1043,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i INSTR_RDATA_WIDTH", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i clk_i", false,-1);
        tracep->declBit(c+328,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i en_a_i", false,-1);
        tracep->declBus(c+329,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i addr_a_i", false,-1, 21,0);
        tracep->declBus(c+1047,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i wdata_a_i", false,-1, 31,0);
        tracep->declArray(c+177,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i rdata_a_o", false,-1, 127,0);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i we_a_i", false,-1);
        tracep->declBus(c+1095,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i be_a_i", false,-1, 3,0);
        tracep->declBit(c+1000,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i en_b_i", false,-1);
        tracep->declBus(c+1001,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i addr_b_i", false,-1, 21,0);
        tracep->declBus(c+1002,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i wdata_b_i", false,-1, 31,0);
        tracep->declBus(c+181,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i rdata_b_o", false,-1, 31,0);
        tracep->declBit(c+1003,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i we_b_i", false,-1);
        tracep->declBus(c+1004,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i be_b_i", false,-1, 3,0);
        tracep->declBus(c+1234,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i bytes", false,-1, 31,0);
        tracep->declBus(c+330,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i addr_a_int", false,-1, 21,0);
        tracep->declBus(c+1024,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i addr_b_int", false,-1, 21,0);
        tracep->declBus(c+182,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i dp_ram_i unnamedblk1 i", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rst_ni", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i req_i", false,-1);
        tracep->declBit(c+185,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i gnt_i", false,-1);
        tracep->declBit(c+1051,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i we_i", false,-1);
        tracep->declBus(c+183,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rdata_i", false,-1, 31,0);
        tracep->declBus(c+370,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rdata_o", false,-1, 31,0);
        tracep->declBit(c+72,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rvalid_o", false,-1);
        tracep->declBit(c+167,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i en_stall_i", false,-1);
        tracep->declBus(c+168,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i stall_mode_i", false,-1, 31,0);
        tracep->declBus(c+169,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i max_stall_i", false,-1, 31,0);
        tracep->declBus(c+170,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i valid_stall_i", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_DATA_WL", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_DELAY_WL", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_WE_WL", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_DATA_LSB", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_DELAY_LSB", false,-1, 31,0);
        tracep->declBus(c+1235,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_WE_LSB", false,-1, 31,0);
        tracep->declBus(c+1236,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_WL", false,-1, 31,0);
        tracep->declBus(c+1171,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_DEPTH", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i FIFO_PTR_WL", false,-1, 31,0);
        tracep->declBit(c+95,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i fifo_empty", false,-1);
        tracep->declBit(c+96,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i fifo_full", false,-1);
        tracep->declBit(c+331,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i fifo_push", false,-1);
        tracep->declBus(c+97,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i wptr", false,-1, 3,0);
        tracep->declBus(c+98,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rptr", false,-1, 3,0);
        tracep->declBus(c+99,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i wptr_rdata", false,-1, 2,0);
        {int i; for (i=0; i<8; i++) {
                tracep->declQuad(c+100+i*2,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i fifo", true,(i+0), 36,0);}}
        tracep->declBit(c+116,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i rvalid_i_q", false,-1);
        tracep->declBus(c+117,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i current_delay", false,-1, 3,0);
        tracep->declBus(c+118,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_rvalid_stall_i i", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rst_ni", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i req_i", false,-1);
        tracep->declBit(c+985,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i gnt_i", false,-1);
        tracep->declBit(c+374,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i we_i", false,-1);
        tracep->declBus(c+371,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rdata_i", false,-1, 31,0);
        tracep->declBus(c+1032,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rdata_o", false,-1, 31,0);
        tracep->declBit(c+1031,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rvalid_o", false,-1);
        tracep->declBit(c+171,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i en_stall_i", false,-1);
        tracep->declBus(c+172,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i stall_mode_i", false,-1, 31,0);
        tracep->declBus(c+173,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i max_stall_i", false,-1, 31,0);
        tracep->declBus(c+174,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i valid_stall_i", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_DATA_WL", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_DELAY_WL", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_WE_WL", false,-1, 31,0);
        tracep->declBus(c+1048,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_DATA_LSB", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_DELAY_LSB", false,-1, 31,0);
        tracep->declBus(c+1235,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_WE_LSB", false,-1, 31,0);
        tracep->declBus(c+1236,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_WL", false,-1, 31,0);
        tracep->declBus(c+1171,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_DEPTH", false,-1, 31,0);
        tracep->declBus(c+1170,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i FIFO_PTR_WL", false,-1, 31,0);
        tracep->declBit(c+119,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i fifo_empty", false,-1);
        tracep->declBit(c+120,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i fifo_full", false,-1);
        tracep->declBit(c+1025,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i fifo_push", false,-1);
        tracep->declBus(c+121,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i wptr", false,-1, 3,0);
        tracep->declBus(c+122,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rptr", false,-1, 3,0);
        tracep->declBus(c+123,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i wptr_rdata", false,-1, 2,0);
        {int i; for (i=0; i<8; i++) {
                tracep->declQuad(c+124+i*2,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i fifo", true,(i+0), 36,0);}}
        tracep->declBit(c+140,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i rvalid_i_q", false,-1);
        tracep->declBus(c+141,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i current_delay", false,-1, 3,0);
        tracep->declBus(c+142,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_rvalid_stall_i i", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i MAX_STALL_N", false,-1, 31,0);
        tracep->declBus(c+1044,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i RAM_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1043,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i DATA_WIDTH", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i rst_ni", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i req_core_i", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i req_mem_o", false,-1);
        tracep->declBit(c+89,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i grant_core_o", false,-1);
        tracep->declBit(c+184,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i grant_mem_i", false,-1);
        tracep->declBit(c+167,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i en_stall_i", false,-1);
        tracep->declBus(c+168,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i stall_mode_i", false,-1, 31,0);
        tracep->declBus(c+169,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i max_stall_i", false,-1, 31,0);
        tracep->declBus(c+175,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i gnt_stall_i", false,-1, 31,0);
        tracep->declBit(c+143,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i req_core_i_q", false,-1);
        tracep->declBit(c+144,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i grant_core_o_q", false,-1);
        tracep->declBus(c+145,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i grant_delay_cnt", false,-1, 31,0);
        tracep->declBus(c+146,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i instr_gnt_stall_i delay_value", false,-1, 31,0);
        tracep->declBus(c+1049,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i MAX_STALL_N", false,-1, 31,0);
        tracep->declBus(c+1044,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i RAM_ADDR_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1113,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i DATA_WIDTH", false,-1, 31,0);
        tracep->declBit(c+1026,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i clk_i", false,-1);
        tracep->declBit(c+1027,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i rst_ni", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i req_core_i", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i req_mem_o", false,-1);
        tracep->declBit(c+90,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i grant_core_o", false,-1);
        tracep->declBit(c+372,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i grant_mem_i", false,-1);
        tracep->declBit(c+171,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i en_stall_i", false,-1);
        tracep->declBus(c+172,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i stall_mode_i", false,-1, 31,0);
        tracep->declBus(c+173,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i max_stall_i", false,-1, 31,0);
        tracep->declBus(c+176,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i gnt_stall_i", false,-1, 31,0);
        tracep->declBit(c+147,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i req_core_i_q", false,-1);
        tracep->declBit(c+148,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i grant_core_o_q", false,-1);
        tracep->declBus(c+149,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i grant_delay_cnt", false,-1, 31,0);
        tracep->declBus(c+150,"tb_top_verilator cv32e40p_tb_wrapper_i ram_i data_gnt_stall_i delay_value", false,-1, 31,0);
        tracep->declBus(c+1096,"cv32e40p_apu_core_pkg APU_NARGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1097,"cv32e40p_apu_core_pkg APU_WOP_CPU", false,-1, 31,0);
        tracep->declBus(c+1098,"cv32e40p_apu_core_pkg APU_NDSFLAGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1099,"cv32e40p_apu_core_pkg APU_NUSFLAGS_CPU", false,-1, 31,0);
        tracep->declBus(c+1049,"cv32e40p_apu_core_pkg PIPE_REG_ADDSUB", false,-1, 31,0);
        tracep->declBus(c+1049,"cv32e40p_apu_core_pkg PIPE_REG_MULT", false,-1, 31,0);
        tracep->declBus(c+1049,"cv32e40p_apu_core_pkg PIPE_REG_CAST", false,-1, 31,0);
        tracep->declBus(c+1058,"cv32e40p_apu_core_pkg PIPE_REG_MAC", false,-1, 31,0);
        tracep->declBus(c+1237,"cv32e40p_fpu_pkg NUM_FP_FORMATS", false,-1, 31,0);
        tracep->declBus(c+1238,"cv32e40p_fpu_pkg FP_FORMAT_BITS", false,-1, 31,0);
        tracep->declBus(c+1239,"cv32e40p_fpu_pkg NUM_INT_FORMATS", false,-1, 31,0);
        tracep->declBus(c+1094,"cv32e40p_fpu_pkg INT_FORMAT_BITS", false,-1, 31,0);
        tracep->declBus(c+1239,"cv32e40p_fpu_pkg OP_BITS", false,-1, 31,0);
        tracep->declBus(c+1240,"cv32e40p_pkg OPCODE_SYSTEM", false,-1, 6,0);
        tracep->declBus(c+1241,"cv32e40p_pkg OPCODE_FENCE", false,-1, 6,0);
        tracep->declBus(c+1242,"cv32e40p_pkg OPCODE_OP", false,-1, 6,0);
        tracep->declBus(c+1243,"cv32e40p_pkg OPCODE_OPIMM", false,-1, 6,0);
        tracep->declBus(c+1244,"cv32e40p_pkg OPCODE_STORE", false,-1, 6,0);
        tracep->declBus(c+1245,"cv32e40p_pkg OPCODE_LOAD", false,-1, 6,0);
        tracep->declBus(c+1246,"cv32e40p_pkg OPCODE_BRANCH", false,-1, 6,0);
        tracep->declBus(c+1247,"cv32e40p_pkg OPCODE_JALR", false,-1, 6,0);
        tracep->declBus(c+1248,"cv32e40p_pkg OPCODE_JAL", false,-1, 6,0);
        tracep->declBus(c+1249,"cv32e40p_pkg OPCODE_AUIPC", false,-1, 6,0);
        tracep->declBus(c+1250,"cv32e40p_pkg OPCODE_LUI", false,-1, 6,0);
        tracep->declBus(c+1251,"cv32e40p_pkg OPCODE_OP_FP", false,-1, 6,0);
        tracep->declBus(c+1252,"cv32e40p_pkg OPCODE_OP_FMADD", false,-1, 6,0);
        tracep->declBus(c+1253,"cv32e40p_pkg OPCODE_OP_FNMADD", false,-1, 6,0);
        tracep->declBus(c+1254,"cv32e40p_pkg OPCODE_OP_FMSUB", false,-1, 6,0);
        tracep->declBus(c+1255,"cv32e40p_pkg OPCODE_OP_FNMSUB", false,-1, 6,0);
        tracep->declBus(c+1256,"cv32e40p_pkg OPCODE_STORE_FP", false,-1, 6,0);
        tracep->declBus(c+1257,"cv32e40p_pkg OPCODE_LOAD_FP", false,-1, 6,0);
        tracep->declBus(c+1258,"cv32e40p_pkg OPCODE_AMO", false,-1, 6,0);
        tracep->declBus(c+1259,"cv32e40p_pkg OPCODE_LOAD_POST", false,-1, 6,0);
        tracep->declBus(c+1260,"cv32e40p_pkg OPCODE_STORE_POST", false,-1, 6,0);
        tracep->declBus(c+1261,"cv32e40p_pkg OPCODE_PULP_OP", false,-1, 6,0);
        tracep->declBus(c+1262,"cv32e40p_pkg OPCODE_VECOP", false,-1, 6,0);
        tracep->declBus(c+1263,"cv32e40p_pkg OPCODE_HWLOOP", false,-1, 6,0);
        tracep->declBus(c+1111,"cv32e40p_pkg REGC_S1", false,-1, 1,0);
        tracep->declBus(c+1062,"cv32e40p_pkg REGC_S4", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg REGC_RD", false,-1, 1,0);
        tracep->declBus(c+1264,"cv32e40p_pkg REGC_ZERO", false,-1, 1,0);
        tracep->declBus(c+1106,"cv32e40p_pkg ALU_OP_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1096,"cv32e40p_pkg MUL_OP_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1062,"cv32e40p_pkg VEC_MODE32", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg VEC_MODE16", false,-1, 1,0);
        tracep->declBus(c+1264,"cv32e40p_pkg VEC_MODE8", false,-1, 1,0);
        tracep->declBus(c+1048,"cv32e40p_pkg HAVERESET_INDEX", false,-1, 31,0);
        tracep->declBus(c+1049,"cv32e40p_pkg RUNNING_INDEX", false,-1, 31,0);
        tracep->declBus(c+1058,"cv32e40p_pkg HALTED_INDEX", false,-1, 31,0);
        tracep->declBus(c+1058,"cv32e40p_pkg CSR_OP_WIDTH", false,-1, 31,0);
        tracep->declBus(c+1238,"cv32e40p_pkg CSR_MSIX_BIT", false,-1, 31,0);
        tracep->declBus(c+1265,"cv32e40p_pkg CSR_MTIX_BIT", false,-1, 31,0);
        tracep->declBus(c+1266,"cv32e40p_pkg CSR_MEIX_BIT", false,-1, 31,0);
        tracep->declBus(c+1267,"cv32e40p_pkg CSR_MFIX_BIT_LOW", false,-1, 31,0);
        tracep->declBus(c+1268,"cv32e40p_pkg CSR_MFIX_BIT_HIGH", false,-1, 31,0);
        tracep->declBus(c+1269,"cv32e40p_pkg SP_DVR0", false,-1, 15,0);
        tracep->declBus(c+1270,"cv32e40p_pkg SP_DCR0", false,-1, 15,0);
        tracep->declBus(c+1271,"cv32e40p_pkg SP_DMR1", false,-1, 15,0);
        tracep->declBus(c+1272,"cv32e40p_pkg SP_DMR2", false,-1, 15,0);
        tracep->declBus(c+1273,"cv32e40p_pkg SP_DVR_MSB", false,-1, 7,0);
        tracep->declBus(c+1274,"cv32e40p_pkg SP_DCR_MSB", false,-1, 7,0);
        tracep->declBus(c+1275,"cv32e40p_pkg SP_DMR_MSB", false,-1, 7,0);
        tracep->declBus(c+1276,"cv32e40p_pkg SP_DSR_MSB", false,-1, 7,0);
        tracep->declBus(c+1277,"cv32e40p_pkg MVENDORID_OFFSET", false,-1, 6,0);
        tracep->declBus(c+1278,"cv32e40p_pkg MVENDORID_BANK", false,-1, 24,0);
        tracep->declBus(c+1279,"cv32e40p_pkg MARCHID", false,-1, 31,0);
        tracep->declBus(c+1062,"cv32e40p_pkg SEL_REGFILE", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg SEL_FW_EX", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg SEL_FW_WB", false,-1, 1,0);
        tracep->declBus(c+1059,"cv32e40p_pkg OP_A_REGA_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1280,"cv32e40p_pkg OP_A_CURRPC", false,-1, 2,0);
        tracep->declBus(c+1281,"cv32e40p_pkg OP_A_IMM", false,-1, 2,0);
        tracep->declBus(c+1282,"cv32e40p_pkg OP_A_REGB_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1283,"cv32e40p_pkg OP_A_REGC_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1110,"cv32e40p_pkg IMMA_Z", false,-1, 0,0);
        tracep->declBus(c+1112,"cv32e40p_pkg IMMA_ZERO", false,-1, 0,0);
        tracep->declBus(c+1059,"cv32e40p_pkg OP_B_REGB_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1280,"cv32e40p_pkg OP_B_REGC_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1281,"cv32e40p_pkg OP_B_IMM", false,-1, 2,0);
        tracep->declBus(c+1282,"cv32e40p_pkg OP_B_REGA_OR_FWD", false,-1, 2,0);
        tracep->declBus(c+1283,"cv32e40p_pkg OP_B_BMASK", false,-1, 2,0);
        tracep->declBus(c+1284,"cv32e40p_pkg IMMB_I", false,-1, 3,0);
        tracep->declBus(c+1285,"cv32e40p_pkg IMMB_S", false,-1, 3,0);
        tracep->declBus(c+1286,"cv32e40p_pkg IMMB_U", false,-1, 3,0);
        tracep->declBus(c+1287,"cv32e40p_pkg IMMB_PCINCR", false,-1, 3,0);
        tracep->declBus(c+1288,"cv32e40p_pkg IMMB_S2", false,-1, 3,0);
        tracep->declBus(c+1289,"cv32e40p_pkg IMMB_S3", false,-1, 3,0);
        tracep->declBus(c+1290,"cv32e40p_pkg IMMB_VS", false,-1, 3,0);
        tracep->declBus(c+1291,"cv32e40p_pkg IMMB_VU", false,-1, 3,0);
        tracep->declBus(c+1292,"cv32e40p_pkg IMMB_SHUF", false,-1, 3,0);
        tracep->declBus(c+1293,"cv32e40p_pkg IMMB_CLIP", false,-1, 3,0);
        tracep->declBus(c+1294,"cv32e40p_pkg IMMB_BI", false,-1, 3,0);
        tracep->declBus(c+1110,"cv32e40p_pkg BMASK_A_ZERO", false,-1, 0,0);
        tracep->declBus(c+1112,"cv32e40p_pkg BMASK_A_S3", false,-1, 0,0);
        tracep->declBus(c+1062,"cv32e40p_pkg BMASK_B_S2", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg BMASK_B_S3", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg BMASK_B_ZERO", false,-1, 1,0);
        tracep->declBus(c+1264,"cv32e40p_pkg BMASK_B_ONE", false,-1, 1,0);
        tracep->declBus(c+1110,"cv32e40p_pkg BMASK_A_REG", false,-1, 0,0);
        tracep->declBus(c+1112,"cv32e40p_pkg BMASK_A_IMM", false,-1, 0,0);
        tracep->declBus(c+1110,"cv32e40p_pkg BMASK_B_REG", false,-1, 0,0);
        tracep->declBus(c+1112,"cv32e40p_pkg BMASK_B_IMM", false,-1, 0,0);
        tracep->declBus(c+1110,"cv32e40p_pkg MIMM_ZERO", false,-1, 0,0);
        tracep->declBus(c+1112,"cv32e40p_pkg MIMM_S3", false,-1, 0,0);
        tracep->declBus(c+1062,"cv32e40p_pkg OP_C_REGC_OR_FWD", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg OP_C_REGB_OR_FWD", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg OP_C_JT", false,-1, 1,0);
        tracep->declBus(c+1062,"cv32e40p_pkg BRANCH_NONE", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg BRANCH_JAL", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg BRANCH_JALR", false,-1, 1,0);
        tracep->declBus(c+1264,"cv32e40p_pkg BRANCH_COND", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg JT_JAL", false,-1, 1,0);
        tracep->declBus(c+1111,"cv32e40p_pkg JT_JALR", false,-1, 1,0);
        tracep->declBus(c+1264,"cv32e40p_pkg JT_COND", false,-1, 1,0);
        tracep->declBus(c+1295,"cv32e40p_pkg AMO_LR", false,-1, 4,0);
        tracep->declBus(c+1296,"cv32e40p_pkg AMO_SC", false,-1, 4,0);
        tracep->declBus(c+1297,"cv32e40p_pkg AMO_SWAP", false,-1, 4,0);
        tracep->declBus(c+1056,"cv32e40p_pkg AMO_ADD", false,-1, 4,0);
        tracep->declBus(c+1298,"cv32e40p_pkg AMO_XOR", false,-1, 4,0);
        tracep->declBus(c+1299,"cv32e40p_pkg AMO_AND", false,-1, 4,0);
        tracep->declBus(c+1300,"cv32e40p_pkg AMO_OR", false,-1, 4,0);
        tracep->declBus(c+1301,"cv32e40p_pkg AMO_MIN", false,-1, 4,0);
        tracep->declBus(c+1302,"cv32e40p_pkg AMO_MAX", false,-1, 4,0);
        tracep->declBus(c+1303,"cv32e40p_pkg AMO_MINU", false,-1, 4,0);
        tracep->declBus(c+1304,"cv32e40p_pkg AMO_MAXU", false,-1, 4,0);
        tracep->declBus(c+1284,"cv32e40p_pkg PC_BOOT", false,-1, 3,0);
        tracep->declBus(c+1286,"cv32e40p_pkg PC_JUMP", false,-1, 3,0);
        tracep->declBus(c+1287,"cv32e40p_pkg PC_BRANCH", false,-1, 3,0);
        tracep->declBus(c+1288,"cv32e40p_pkg PC_EXCEPTION", false,-1, 3,0);
        tracep->declBus(c+1285,"cv32e40p_pkg PC_FENCEI", false,-1, 3,0);
        tracep->declBus(c+1289,"cv32e40p_pkg PC_MRET", false,-1, 3,0);
        tracep->declBus(c+1290,"cv32e40p_pkg PC_URET", false,-1, 3,0);
        tracep->declBus(c+1291,"cv32e40p_pkg PC_DRET", false,-1, 3,0);
        tracep->declBus(c+1292,"cv32e40p_pkg PC_HWLOOP", false,-1, 3,0);
        tracep->declBus(c+1059,"cv32e40p_pkg EXC_PC_EXCEPTION", false,-1, 2,0);
        tracep->declBus(c+1280,"cv32e40p_pkg EXC_PC_IRQ", false,-1, 2,0);
        tracep->declBus(c+1281,"cv32e40p_pkg EXC_PC_DBD", false,-1, 2,0);
        tracep->declBus(c+1282,"cv32e40p_pkg EXC_PC_DBE", false,-1, 2,0);
        tracep->declBus(c+1297,"cv32e40p_pkg EXC_CAUSE_INSTR_FAULT", false,-1, 4,0);
        tracep->declBus(c+1295,"cv32e40p_pkg EXC_CAUSE_ILLEGAL_INSN", false,-1, 4,0);
        tracep->declBus(c+1296,"cv32e40p_pkg EXC_CAUSE_BREAKPOINT", false,-1, 4,0);
        tracep->declBus(c+1305,"cv32e40p_pkg EXC_CAUSE_LOAD_FAULT", false,-1, 4,0);
        tracep->declBus(c+1306,"cv32e40p_pkg EXC_CAUSE_STORE_FAULT", false,-1, 4,0);
        tracep->declBus(c+1300,"cv32e40p_pkg EXC_CAUSE_ECALL_UMODE", false,-1, 4,0);
        tracep->declBus(c+1307,"cv32e40p_pkg EXC_CAUSE_ECALL_MMODE", false,-1, 4,0);
        tracep->declBus(c+1308,"cv32e40p_pkg IRQ_MASK", false,-1, 31,0);
        tracep->declBus(c+1062,"cv32e40p_pkg TRAP_MACHINE", false,-1, 1,0);
        tracep->declBus(c+1169,"cv32e40p_pkg TRAP_USER", false,-1, 1,0);
        tracep->declBus(c+1059,"cv32e40p_pkg DBG_CAUSE_NONE", false,-1, 2,0);
        tracep->declBus(c+1280,"cv32e40p_pkg DBG_CAUSE_EBREAK", false,-1, 2,0);
        tracep->declBus(c+1281,"cv32e40p_pkg DBG_CAUSE_TRIGGER", false,-1, 2,0);
        tracep->declBus(c+1282,"cv32e40p_pkg DBG_CAUSE_HALTREQ", false,-1, 2,0);
        tracep->declBus(c+1283,"cv32e40p_pkg DBG_CAUSE_STEP", false,-1, 2,0);
        tracep->declBus(c+1309,"cv32e40p_pkg DBG_CAUSE_RSTHALTREQ", false,-1, 2,0);
        tracep->declBus(c+1097,"cv32e40p_pkg DBG_SETS_W", false,-1, 31,0);
        tracep->declBus(c+1099,"cv32e40p_pkg DBG_SETS_IRQ", false,-1, 31,0);
        tracep->declBus(c+1170,"cv32e40p_pkg DBG_SETS_ECALL", false,-1, 31,0);
        tracep->declBus(c+1096,"cv32e40p_pkg DBG_SETS_EILL", false,-1, 31,0);
        tracep->declBus(c+1058,"cv32e40p_pkg DBG_SETS_ELSU", false,-1, 31,0);
        tracep->declBus(c+1049,"cv32e40p_pkg DBG_SETS_EBRK", false,-1, 31,0);
        tracep->declBus(c+1048,"cv32e40p_pkg DBG_SETS_SSTE", false,-1, 31,0);
        tracep->declBus(c+1310,"cv32e40p_pkg DBG_CAUSE_HALT", false,-1, 5,0);
        tracep->declBit(c+1311,"cv32e40p_pkg C_RVF", false,-1);
        tracep->declBit(c+1092,"cv32e40p_pkg C_RVD", false,-1);
        tracep->declBit(c+1092,"cv32e40p_pkg C_XF16", false,-1);
        tracep->declBit(c+1092,"cv32e40p_pkg C_XF16ALT", false,-1);
        tracep->declBit(c+1092,"cv32e40p_pkg C_XF8", false,-1);
        tracep->declBit(c+1092,"cv32e40p_pkg C_XFVEC", false,-1);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_FP64", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_FP32", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_FP16", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_FP16ALT", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_FP8", false,-1, 31,0);
        tracep->declBus(c+1091,"cv32e40p_pkg C_LAT_DIVSQRT", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_CONV", false,-1, 31,0);
        tracep->declBus(c+1312,"cv32e40p_pkg C_LAT_NONCOMP", false,-1, 31,0);
        tracep->declBus(c+1113,"cv32e40p_pkg C_FLEN", false,-1, 31,0);
        tracep->declBus(c+1099,"cv32e40p_pkg C_FFLAG", false,-1, 31,0);
        tracep->declBus(c+1096,"cv32e40p_pkg C_RM", false,-1, 31,0);
    }
}

void Vtb_top_verilator::traceRegister(VerilatedVcd* tracep) {
    // Body
    {
        tracep->addFullCb(&traceFullTop0, __VlSymsp);
        tracep->addChgCb(&traceChgTop0, __VlSymsp);
        tracep->addCleanupCb(&traceCleanup, __VlSymsp);
    }
}

void Vtb_top_verilator::traceFullTop0(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    {
        vlTOPp->traceFullSub0(userp, tracep);
    }
}

void Vtb_top_verilator::traceFullSub0(void* userp, VerilatedVcd* tracep) {
    Vtb_top_verilator__Syms* __restrict vlSymsp = static_cast<Vtb_top_verilator__Syms*>(userp);
    Vtb_top_verilator* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Variables
    WData/*127:0*/ __Vtemp76[4];
    WData/*127:0*/ __Vtemp79[4];
    WData/*127:0*/ __Vtemp74[4];
    WData/*511:0*/ __Vtemp75[16];
    WData/*1023:0*/ __Vtemp77[32];
    WData/*511:0*/ __Vtemp78[16];
    WData/*767:0*/ __Vtemp80[24];
    // Body
    {
        tracep->fullWData(oldp+1,(vlTOPp->tb_top_verilator__DOT__load_prog__DOT__firmware),1024);
        tracep->fullIData(oldp+33,(vlTOPp->tb_top_verilator__DOT__load_prog__DOT__prog_size),32);
        tracep->fullWData(oldp+34,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__ex_stage_i__apu_operands_o),96);
        tracep->fullWData(oldp+37,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__apu_operands),96);
        tracep->fullWData(oldp+40,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_lut),160);
        tracep->fullWData(oldp+45,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__pmp_reg_n),768);
        tracep->fullIData(oldp+69,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcounteren_q),32);
        tracep->fullIData(oldp+70,(vlTOPp->tb_top_verilator__DOT__cycle_cnt_q),32);
        tracep->fullIData(oldp+71,(vlTOPp->tb_top_verilator__DOT__unnamedblk1__DOT__maxcycles),32);
        tracep->fullBit(oldp+72,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid));
        tracep->fullBit(oldp+73,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__debug_req));
        tracep->fullIData(oldp+74,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q 
                                    | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_irq) 
                                       << 0x1fU))),32);
        tracep->fullBit(oldp+75,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q));
        tracep->fullBit(oldp+76,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q));
        tracep->fullBit(oldp+77,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__p_elw_busy_q));
        tracep->fullBit(oldp+78,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q));
        tracep->fullBit(oldp+79,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending));
        tracep->fullCData(oldp+80,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_q),3);
        tracep->fullIData(oldp+81,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q),32);
        tracep->fullIData(oldp+82,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q),32);
        tracep->fullIData(oldp+83,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_irq_mask_q),32);
        tracep->fullIData(oldp+84,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_cnt_q),32);
        tracep->fullIData(oldp+85,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q),32);
        tracep->fullIData(oldp+86,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_q),32);
        tracep->fullBit(oldp+87,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_overflow_q));
        tracep->fullIData(oldp+88,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_rdata),32);
        tracep->fullBit(oldp+89,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_instr_gnt));
        tracep->fullBit(oldp+90,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_data_gnt));
        tracep->fullIData(oldp+91,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num),32);
        tracep->fullSData(oldp+92,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_start_cnt_q),15);
        tracep->fullBit(oldp+93,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_value_q));
        tracep->fullSData(oldp+94,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_duration_q),13);
        tracep->fullBit(oldp+95,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_empty));
        tracep->fullBit(oldp+96,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr) 
                                   == ((8U & ((~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr) 
                                                  >> 3U)) 
                                              << 3U)) 
                                       | (7U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr))))
                                   ? 1U : 0U)));
        tracep->fullCData(oldp+97,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr),4);
        tracep->fullCData(oldp+98,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr),4);
        tracep->fullCData(oldp+99,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr_rdata),3);
        tracep->fullQData(oldp+100,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[0]),37);
        tracep->fullQData(oldp+102,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[1]),37);
        tracep->fullQData(oldp+104,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[2]),37);
        tracep->fullQData(oldp+106,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[3]),37);
        tracep->fullQData(oldp+108,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[4]),37);
        tracep->fullQData(oldp+110,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[5]),37);
        tracep->fullQData(oldp+112,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[6]),37);
        tracep->fullQData(oldp+114,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[7]),37);
        tracep->fullBit(oldp+116,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rvalid_i_q));
        tracep->fullCData(oldp+117,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__current_delay),4);
        tracep->fullIData(oldp+118,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__i),32);
        tracep->fullBit(oldp+119,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_empty));
        tracep->fullBit(oldp+120,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr) 
                                    == ((8U & ((~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr) 
                                                   >> 3U)) 
                                               << 3U)) 
                                        | (7U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr))))
                                    ? 1U : 0U)));
        tracep->fullCData(oldp+121,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr),4);
        tracep->fullCData(oldp+122,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr),4);
        tracep->fullCData(oldp+123,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr_rdata),3);
        tracep->fullQData(oldp+124,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[0]),37);
        tracep->fullQData(oldp+126,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[1]),37);
        tracep->fullQData(oldp+128,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[2]),37);
        tracep->fullQData(oldp+130,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[3]),37);
        tracep->fullQData(oldp+132,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[4]),37);
        tracep->fullQData(oldp+134,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[5]),37);
        tracep->fullQData(oldp+136,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[6]),37);
        tracep->fullQData(oldp+138,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[7]),37);
        tracep->fullBit(oldp+140,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rvalid_i_q));
        tracep->fullCData(oldp+141,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__current_delay),4);
        tracep->fullIData(oldp+142,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__i),32);
        tracep->fullBit(oldp+143,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__req_core_i_q));
        tracep->fullBit(oldp+144,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_core_o_q));
        tracep->fullIData(oldp+145,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_delay_cnt),32);
        tracep->fullIData(oldp+146,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__delay_value),32);
        tracep->fullBit(oldp+147,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__req_core_i_q));
        tracep->fullBit(oldp+148,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_core_o_q));
        tracep->fullIData(oldp+149,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_delay_cnt),32);
        tracep->fullIData(oldp+150,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__delay_value),32);
        tracep->fullIData(oldp+151,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[0]),32);
        tracep->fullIData(oldp+152,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[1]),32);
        tracep->fullIData(oldp+153,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[2]),32);
        tracep->fullIData(oldp+154,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[3]),32);
        tracep->fullIData(oldp+155,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[4]),32);
        tracep->fullIData(oldp+156,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[5]),32);
        tracep->fullIData(oldp+157,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[6]),32);
        tracep->fullIData(oldp+158,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[7]),32);
        tracep->fullIData(oldp+159,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[8]),32);
        tracep->fullIData(oldp+160,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[9]),32);
        tracep->fullIData(oldp+161,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[10]),32);
        tracep->fullIData(oldp+162,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[11]),32);
        tracep->fullIData(oldp+163,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[12]),32);
        tracep->fullIData(oldp+164,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[13]),32);
        tracep->fullIData(oldp+165,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[14]),32);
        tracep->fullIData(oldp+166,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[15]),32);
        tracep->fullBit(oldp+167,((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                   [0U])));
        tracep->fullIData(oldp+168,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [2U]),32);
        tracep->fullIData(oldp+169,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [4U]),32);
        tracep->fullIData(oldp+170,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [8U]),32);
        tracep->fullBit(oldp+171,((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                   [1U])));
        tracep->fullIData(oldp+172,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [3U]),32);
        tracep->fullIData(oldp+173,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [5U]),32);
        tracep->fullIData(oldp+174,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [9U]),32);
        tracep->fullIData(oldp+175,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [6U]),32);
        tracep->fullIData(oldp+176,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs
                                    [7U]),32);
        tracep->fullWData(oldp+177,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata),128);
        tracep->fullIData(oldp+181,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_rdata),32);
        tracep->fullIData(oldp+182,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__unnamedblk1__DOT__i),32);
        tracep->fullIData(oldp+183,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata[0U]),32);
        tracep->fullBit(oldp+184,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp));
        tracep->fullBit(oldp+185,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt));
        tracep->fullIData(oldp+186,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp),32);
        tracep->fullBit(oldp+187,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack));
        tracep->fullCData(oldp+188,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out),5);
        tracep->fullBit(oldp+189,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clear_instr_valid));
        tracep->fullBit(oldp+190,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set));
        tracep->fullCData(oldp+191,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id),4);
        tracep->fullCData(oldp+192,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id),3);
        tracep->fullCData(oldp+193,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id),5);
        tracep->fullCData(oldp+194,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause),5);
        tracep->fullCData(oldp+195,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux),2);
        tracep->fullBit(oldp+196,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding));
        tracep->fullBit(oldp+197,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy));
        tracep->fullIData(oldp+198,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw),32);
        tracep->fullBit(oldp+199,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if));
        tracep->fullBit(oldp+200,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready));
        tracep->fullBit(oldp+201,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready));
        tracep->fullBit(oldp+202,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid));
        tracep->fullBit(oldp+203,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid));
        tracep->fullBit(oldp+204,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec));
        tracep->fullBit(oldp+205,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause));
        tracep->fullBit(oldp+206,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if));
        tracep->fullBit(oldp+207,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id));
        tracep->fullCData(oldp+208,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause),6);
        tracep->fullBit(oldp+209,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id));
        tracep->fullBit(oldp+210,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_uret_id));
        tracep->fullBit(oldp+211,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_dret_id));
        tracep->fullBit(oldp+212,(((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id)) 
                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set))));
        tracep->fullCData(oldp+213,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause),3);
        tracep->fullBit(oldp+214,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save));
        tracep->fullBit(oldp+215,((1U & ((~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid)) 
                                         & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req))))));
        tracep->fullBit(oldp+216,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep));
        tracep->fullBit(oldp+217,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk));
        tracep->fullBit(oldp+218,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_clock_gate_i__DOT__clk_en));
        tracep->fullBit(oldp+219,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid));
        tracep->fullBit(oldp+220,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid) 
                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready))));
        tracep->fullBit(oldp+221,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req));
        tracep->fullIData(oldp+222,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n),32);
        tracep->fullBit(oldp+223,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid));
        tracep->fullBit(oldp+224,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready));
        tracep->fullIData(oldp+225,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc),32);
        tracep->fullIData(oldp+226,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr),24);
        tracep->fullCData(oldp+227,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux),5);
        tracep->fullBit(oldp+228,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready));
        tracep->fullBit(oldp+229,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid));
        tracep->fullIData(oldp+230,((0xfffffffeU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)),32);
        tracep->fullBit(oldp+231,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid));
        tracep->fullIData(oldp+232,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr),32);
        tracep->fullBit(oldp+233,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push));
        tracep->fullBit(oldp+234,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop));
        tracep->fullBit(oldp+235,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state));
        tracep->fullCData(oldp+236,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt),2);
        tracep->fullIData(oldp+237,((0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n)),32);
        tracep->fullBit(oldp+238,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock));
        tracep->fullBit(oldp+239,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n));
        tracep->fullBit(oldp+240,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n));
        tracep->fullCData(oldp+241,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n),2);
        tracep->fullQData(oldp+242,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n),64);
        tracep->fullIData(oldp+244,((0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr)),32);
        tracep->fullBit(oldp+245,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state));
        tracep->fullCData(oldp+246,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state),3);
        tracep->fullIData(oldp+247,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n),32);
        tracep->fullBit(oldp+248,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state));
        tracep->fullBit(oldp+249,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we));
        tracep->fullBit(oldp+250,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec));
        tracep->fullBit(oldp+251,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec));
        tracep->fullCData(oldp+252,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id),2);
        tracep->fullBit(oldp+253,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall));
        tracep->fullBit(oldp+254,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask));
        tracep->fullBit(oldp+255,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id));
        tracep->fullBit(oldp+256,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__debug_wfi_no_sleep));
        tracep->fullIData(oldp+257,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b),32);
        tracep->fullBit(oldp+258,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_we_id));
        tracep->fullBit(oldp+259,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_en));
        tracep->fullCData(oldp+260,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operator),7);
        tracep->fullCData(oldp+261,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel),3);
        tracep->fullCData(oldp+262,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b_mux_sel),4);
        tracep->fullBit(oldp+263,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_int_en));
        tracep->fullBit(oldp+264,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_we_id));
        tracep->fullBit(oldp+265,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_req_id));
        tracep->fullCData(oldp+266,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we)
                                      ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op))),2);
        tracep->fullBit(oldp+267,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status));
        tracep->fullIData(oldp+268,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id),32);
        tracep->fullIData(oldp+269,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id),32);
        tracep->fullIData(oldp+270,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id),32);
        tracep->fullIData(oldp+271,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b),32);
        tracep->fullIData(oldp+272,(((0xffff0000U & 
                                      (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b 
                                       << 0x10U)) | 
                                     (0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b))),32);
        tracep->fullIData(oldp+273,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c),32);
        tracep->fullIData(oldp+274,(((0xffff0000U & 
                                      (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c 
                                       << 0x10U)) | 
                                     (0xffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c))),32);
        tracep->fullIData(oldp+275,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operand_a),32);
        tracep->fullBit(oldp+276,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__minstret));
        tracep->fullBit(oldp+277,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_illegal));
        tracep->fullCData(oldp+278,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op),2);
        tracep->fullCData(oldp+279,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns),5);
        tracep->fullCData(oldp+280,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns),3);
        tracep->fullBit(oldp+281,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done));
        tracep->fullBit(oldp+282,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec));
        tracep->fullBit(oldp+283,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id));
        tracep->fullBit(oldp+284,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n));
        tracep->fullBit(oldp+285,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode));
        tracep->fullBit(oldp+286,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal));
        tracep->fullBit(oldp+287,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n));
        tracep->fullBit(oldp+288,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n));
        tracep->fullBit(oldp+289,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_n));
        tracep->fullBit(oldp+290,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active));
        tracep->fullIData(oldp+291,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result),32);
        tracep->fullIData(oldp+292,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result),32);
        tracep->fullBit(oldp+293,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready));
        tracep->fullCData(oldp+294,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift),6);
        tracep->fullIData(oldp+295,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left),32);
        tracep->fullIData(oldp+296,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt),32);
        tracep->fullIData(oldp+297,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int),32);
        tracep->fullIData(oldp+298,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result),32);
        tracep->fullIData(oldp+299,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result),32);
        tracep->fullIData(oldp+300,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result),32);
        tracep->fullCData(oldp+301,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result),6);
        tracep->fullIData(oldp+302,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result),32);
        tracep->fullIData(oldp+303,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev),32);
        tracep->fullIData(oldp+304,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev),32);
        tracep->fullIData(oldp+305,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev),32);
        tracep->fullIData(oldp+306,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D),32);
        tracep->fullIData(oldp+307,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D),32);
        tracep->fullBit(oldp+308,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S));
        tracep->fullBit(oldp+309,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S));
        tracep->fullBit(oldp+310,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S));
        tracep->fullBit(oldp+311,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S));
        tracep->fullCData(oldp+312,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN),2);
        tracep->fullQData(oldp+313,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac),34);
        tracep->fullQData(oldp+315,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result),34);
        tracep->fullCData(oldp+317,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS),3);
        tracep->fullIData(oldp+318,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n),32);
        tracep->fullIData(oldp+319,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n),32);
        tracep->fullIData(oldp+320,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n),32);
        tracep->fullIData(oldp+321,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc),32);
        tracep->fullCData(oldp+322,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n),7);
        tracep->fullCData(oldp+323,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n),6);
        tracep->fullIData(oldp+324,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n),24);
        tracep->fullBit(oldp+325,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause) 
                                         >> 5U))));
        tracep->fullCData(oldp+326,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n),2);
        tracep->fullIData(oldp+327,((0x3fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),32);
        tracep->fullBit(oldp+328,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req));
        tracep->fullIData(oldp+329,((0x3fffffU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),22);
        tracep->fullIData(oldp+330,((0x3ffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp)),22);
        tracep->fullBit(oldp+331,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_push));
        tracep->fullBit(oldp+332,(((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid))));
        tracep->fullBit(oldp+333,(((((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)) 
                                     | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid)) 
                                    | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy)) 
                                   | ((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)) 
                                      | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid)))));
        tracep->fullBit(oldp+334,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                                   & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))));
        tracep->fullCData(oldp+335,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req)
                                      ? 0U : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))),2);
        tracep->fullCData(oldp+336,((0x3fU & ((0x1fU 
                                               & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]) 
                                              - (IData)(1U)))),6);
        tracep->fullCData(oldp+337,((0x1fU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U])),5);
        tracep->fullBit(oldp+338,((1U & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes))));
        tracep->fullCData(oldp+339,((0x1fU & ((IData)(0x1fU) 
                                              - vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]))),5);
        tracep->fullBit(oldp+340,(((0x28U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                                      >> (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))));
        tracep->fullIData(oldp+341,(((0x2aU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                      ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex
                                      : (- (IData)(
                                                   ((0x28U 
                                                     == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                                    & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result 
                                                       >> (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))))))),32);
        tracep->fullIData(oldp+342,(((0U == (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                      ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev
                                      : ((1U == (3U 
                                                 & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                          ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev
                                          : ((2U == 
                                              (3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex)))
                                              ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev
                                              : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev)))),32);
        tracep->fullCData(oldp+343,(((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes)
                                      ? (0x3fU & ((0x1fU 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[0U]) 
                                                  - (IData)(1U)))
                                      : 0x1fU)),6);
        tracep->fullIData(oldp+344,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes),32);
        tracep->fullWData(oldp+345,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes),160);
        tracep->fullIData(oldp+350,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                      ? 0U : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S)
                                               ? (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S) 
                                                   << 0x1fU) 
                                                  | (0x7fffffffU 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP 
                                                        >> 1U)))
                                               : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP))),32);
        tracep->fullIData(oldp+351,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S)
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
        tracep->fullIData(oldp+352,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S)
                                      ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                          ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
                                          : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP) 
                                              << 0x1fU) 
                                             | (0x7fffffffU 
                                                & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP 
                                                   >> 1U))))
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP)),32);
        tracep->fullBit(oldp+353,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                          ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                             >> 1U)
                                          : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP)))));
        tracep->fullBit(oldp+354,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                    ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)
                                    : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP))));
        tracep->fullBit(oldp+355,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                          ? ((((0U 
                                                != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result)) 
                                               | ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                                  >> 1U)) 
                                              & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                             & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                 >> 0x1fU) 
                                                ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))
                                          : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP)))));
        tracep->fullIData(oldp+356,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                                      & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                            & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                                >> 0x1fU) 
                                               ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))
                                      ? (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                         + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D)
                                      : (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D 
                                         - vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D))),32);
        tracep->fullIData(oldp+357,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                      ? vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result
                                      : (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP) 
                                          << 0x1fU) 
                                         | (0x7fffffffU 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP 
                                               >> 1U))))),32);
        tracep->fullCData(oldp+358,((0x3fU & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S)
                                               ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift)
                                               : ((0U 
                                                   != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP))
                                                   ? 
                                                  ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP) 
                                                   - (IData)(1U))
                                                   : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP))))),6);
        tracep->fullBit(oldp+359,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S) 
                                   & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex) 
                                         & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex 
                                             >> 0x1fU) 
                                            ^ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed)))))));
        tracep->fullIData(oldp+360,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a),17);
        tracep->fullIData(oldp+361,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b),17);
        tracep->fullQData(oldp+362,((0x3ffffffffULL 
                                     & VL_MULS_QQQ(34,34,34, 
                                                   (0x3ffffffffULL 
                                                    & VL_EXTENDS_QI(34,17, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a)), 
                                                   (0x3ffffffffULL 
                                                    & VL_EXTENDS_QI(34,17, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b))))),34);
        tracep->fullBit(oldp+364,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                          ? (IData)(
                                                    (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                     >> 0x21U))
                                          : (IData)(
                                                    (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                     >> 0x1fU))))));
        tracep->fullBit(oldp+365,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                          ? (IData)(
                                                    (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                     >> 0x20U))
                                          : (IData)(
                                                    (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac 
                                                     >> 0x1fU))))));
        VL_EXTEND_WI(128,32, __Vtemp74, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o);
        tracep->fullWData(oldp+366,(__Vtemp74),128);
        tracep->fullIData(oldp+370,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o),32);
        tracep->fullIData(oldp+371,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rdata_mux),32);
        tracep->fullBit(oldp+372,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid));
        tracep->fullIData(oldp+373,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                      ? (0xfffffffcU 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)),32);
        tracep->fullBit(oldp+374,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex));
        tracep->fullCData(oldp+375,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                                      ? ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                          ? ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                              ? 8U : 4U)
                                          : ((1U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                              ? 2U : 1U))
                                      : ((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex))
                                          ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                              ? 1U : 
                                             ((2U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                               ? ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 8U
                                                   : 0xcU)
                                               : ((1U 
                                                   & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                                   ? 6U
                                                   : 3U)))
                                          : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                              ? ((2U 
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
                                              : ((2U 
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
        tracep->fullIData(oldp+376,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset))
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
        tracep->fullSData(oldp+377,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_flags_ex),15);
        tracep->fullBit(oldp+378,((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs))));
        tracep->fullBit(oldp+379,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs) 
                                         >> 1U))));
        tracep->fullBit(oldp+380,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs) 
                                         >> 2U))));
        tracep->fullCData(oldp+381,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_atop_ex),6);
        tracep->fullBit(oldp+382,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id));
        tracep->fullIData(oldp+383,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id),32);
        tracep->fullBit(oldp+384,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_compressed_id));
        tracep->fullBit(oldp+385,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__illegal_c_insn_id));
        tracep->fullBit(oldp+386,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id));
        tracep->fullIData(oldp+387,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q),32);
        tracep->fullIData(oldp+388,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id),32);
        tracep->fullBit(oldp+389,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__useincr_addr_ex));
        tracep->fullBit(oldp+390,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned));
        tracep->fullBit(oldp+391,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_multicycle));
        tracep->fullIData(oldp+392,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target),32);
        tracep->fullIData(oldp+393,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex),32);
        tracep->fullBit(oldp+394,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__branch_in_ex));
        tracep->fullBit(oldp+395,((1U & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result) 
                                         >> 3U))));
        tracep->fullBit(oldp+396,(((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)) 
                                   | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid))));
        tracep->fullIData(oldp+397,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_ex),32);
        tracep->fullBit(oldp+398,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_en_ex));
        tracep->fullCData(oldp+399,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex),7);
        tracep->fullIData(oldp+400,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex),32);
        tracep->fullIData(oldp+401,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex),32);
        tracep->fullCData(oldp+402,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex),5);
        tracep->fullCData(oldp+403,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex),5);
        tracep->fullCData(oldp+404,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__imm_vec_ext_ex),2);
        tracep->fullCData(oldp+405,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex),2);
        tracep->fullBit(oldp+406,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex));
        tracep->fullBit(oldp+407,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_subrot_ex));
        tracep->fullCData(oldp+408,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex),2);
        tracep->fullCData(oldp+409,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex),3);
        tracep->fullIData(oldp+410,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex),32);
        tracep->fullIData(oldp+411,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex),32);
        tracep->fullIData(oldp+412,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex),32);
        tracep->fullBit(oldp+413,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex));
        tracep->fullBit(oldp+414,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_sel_subword_ex));
        tracep->fullCData(oldp+415,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_signed_mode_ex),2);
        tracep->fullCData(oldp+416,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex),5);
        tracep->fullIData(oldp+417,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_a_ex),32);
        tracep->fullIData(oldp+418,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_b_ex),32);
        tracep->fullIData(oldp+419,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex),32);
        tracep->fullCData(oldp+420,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_signed_ex),2);
        tracep->fullBit(oldp+421,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex));
        tracep->fullCData(oldp+422,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_clpx_shift_ex),2);
        tracep->fullBit(oldp+423,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex));
        tracep->fullCData(oldp+424,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_op_ex),6);
        tracep->fullCData(oldp+425,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex),2);
        tracep->fullWData(oldp+426,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__id_stage_i__apu_operands_ex_o),96);
        tracep->fullCData(oldp+429,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_waddr_ex),6);
        tracep->fullCData(oldp+430,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex),6);
        tracep->fullBit(oldp+431,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex));
        tracep->fullCData(oldp+432,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu),6);
        tracep->fullBit(oldp+433,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb));
        tracep->fullCData(oldp+434,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex),6);
        tracep->fullBit(oldp+435,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_ex));
        tracep->fullBit(oldp+436,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_fw));
        tracep->fullBit(oldp+437,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_access_ex));
        tracep->fullCData(oldp+438,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_op_ex),2);
        tracep->fullIData(oldp+439,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q),24);
        tracep->fullCData(oldp+440,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_q),2);
        tracep->fullSData(oldp+441,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int),12);
        tracep->fullIData(oldp+442,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_rdata_int),32);
        tracep->fullCData(oldp+443,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex),2);
        tracep->fullCData(oldp+444,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_sign_ext_ex),2);
        tracep->fullCData(oldp+445,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_reg_offset_ex),2);
        tracep->fullBit(oldp+446,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex));
        tracep->fullBit(oldp+447,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex));
        tracep->fullBit(oldp+448,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex));
        tracep->fullBit(oldp+449,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex) 
                                   & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid))));
        tracep->fullBit(oldp+450,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int));
        tracep->fullBit(oldp+451,((1U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                                          >> 5U) & 
                                         (~ (IData)(
                                                    (4U 
                                                     == 
                                                     (0x804U 
                                                      & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q))))))));
        tracep->fullBit(oldp+452,((1U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q) 
                                          >> 6U) & 
                                         (~ (IData)(
                                                    (4U 
                                                     == 
                                                     (0x804U 
                                                      & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q))))))));
        tracep->fullIData(oldp+453,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q),32);
        tracep->fullIData(oldp+454,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q),32);
        tracep->fullIData(oldp+455,((((0x304U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)) 
                                      & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we))
                                      ? (0xffff0888U 
                                         & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q)),32);
        tracep->fullIData(oldp+456,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_q),32);
        tracep->fullBit(oldp+457,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q));
        tracep->fullBit(oldp+458,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                         >> 2U))));
        tracep->fullBit(oldp+459,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                         >> 0xfU))));
        tracep->fullBit(oldp+460,((1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                         >> 0xcU))));
        tracep->fullBit(oldp+461,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match));
        tracep->fullBit(oldp+462,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_minstret));
        tracep->fullBit(oldp+463,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_load));
        tracep->fullBit(oldp+464,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_store));
        tracep->fullBit(oldp+465,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jump));
        tracep->fullBit(oldp+466,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch));
        tracep->fullBit(oldp+467,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch_taken));
        tracep->fullBit(oldp+468,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_compressed));
        tracep->fullBit(oldp+469,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jr_stall));
        tracep->fullBit(oldp+470,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_imiss));
        tracep->fullBit(oldp+471,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_ld_stall));
        tracep->fullBit(oldp+472,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_pipe_stall));
        tracep->fullBit(oldp+473,((1U & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))));
        tracep->fullCData(oldp+474,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q),2);
        tracep->fullIData(oldp+475,((IData)((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q 
                                             >> (0x3fU 
                                                 & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q) 
                                                    << 5U))))),32);
        tracep->fullBit(oldp+476,((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
        tracep->fullBit(oldp+477,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q));
        tracep->fullCData(oldp+478,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q),2);
        tracep->fullCData(oldp+479,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q),2);
        tracep->fullIData(oldp+480,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q),32);
        tracep->fullIData(oldp+481,(((IData)(4U) + 
                                     (0xfffffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q))),32);
        tracep->fullBit(oldp+482,((0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
        tracep->fullBit(oldp+483,((2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q))));
        tracep->fullBit(oldp+484,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q));
        tracep->fullBit(oldp+485,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q));
        tracep->fullQData(oldp+486,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q),64);
        tracep->fullBit(oldp+488,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_we_o));
        tracep->fullCData(oldp+489,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_be_o),4);
        tracep->fullIData(oldp+490,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_wdata_o),32);
        tracep->fullCData(oldp+491,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_atop_o),6);
        tracep->fullBit(oldp+492,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q));
        tracep->fullIData(oldp+493,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_addr_q),32);
        tracep->fullBit(oldp+494,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_we_q));
        tracep->fullCData(oldp+495,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_be_q),4);
        tracep->fullIData(oldp+496,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_wdata_q),32);
        tracep->fullCData(oldp+497,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_atop_q),6);
        tracep->fullCData(oldp+498,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state),3);
        tracep->fullSData(oldp+499,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h),16);
        tracep->fullIData(oldp+500,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_addr_q),32);
        tracep->fullIData(oldp+501,(((IData)(4U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)),32);
        tracep->fullIData(oldp+502,(((IData)(2U) + vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q)),32);
        tracep->fullBit(oldp+503,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q));
        tracep->fullBit(oldp+504,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_update_pc_q));
        tracep->fullBit(oldp+505,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec));
        tracep->fullBit(oldp+506,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec));
        tracep->fullBit(oldp+507,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec));
        tracep->fullBit(oldp+508,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec));
        tracep->fullBit(oldp+509,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec));
        tracep->fullBit(oldp+510,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec));
        tracep->fullBit(oldp+511,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__rega_used_dec));
        tracep->fullBit(oldp+512,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec));
        tracep->fullBit(oldp+513,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec));
        tracep->fullBit(oldp+514,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex));
        tracep->fullCData(oldp+515,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn),2);
        tracep->fullBit(oldp+516,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall));
        tracep->fullBit(oldp+517,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access) 
                                   & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex) 
                                      & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex) 
                                         >> 1U)))));
        tracep->fullIData(oldp+518,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_i_type),32);
        tracep->fullIData(oldp+519,((0xfffU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x14U))),32);
        tracep->fullIData(oldp+520,(((0xfffff000U & 
                                      ((- (IData)((1U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x1fU)))) 
                                       << 0xcU)) | 
                                     ((0xfe0U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                 >> 0x14U)) 
                                      | (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 7U))))),32);
        tracep->fullIData(oldp+521,(((0xffffe000U & 
                                      ((- (IData)((1U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x1fU)))) 
                                       << 0xdU)) | 
                                     ((0x1000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 0x13U)) 
                                      | ((0x800U & 
                                          (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                           << 4U)) 
                                         | ((0x7e0U 
                                             & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                >> 0x14U)) 
                                            | (0x1eU 
                                               & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 7U))))))),32);
        tracep->fullIData(oldp+522,((0xfffff000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id)),32);
        tracep->fullIData(oldp+523,(((0xfff00000U & 
                                      ((- (IData)((1U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x1fU)))) 
                                       << 0x14U)) | 
                                     ((0xff000U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id) 
                                      | ((0x800U & 
                                          (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                           >> 9U)) 
                                         | (0x7feU 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                               >> 0x14U)))))),32);
        tracep->fullIData(oldp+524,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0xfU))),32);
        tracep->fullIData(oldp+525,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0x14U))),32);
        tracep->fullIData(oldp+526,(((0xffffffe0U & 
                                      ((- (IData)((1U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x18U)))) 
                                       << 5U)) | (0x1fU 
                                                  & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                     >> 0x14U)))),32);
        tracep->fullIData(oldp+527,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0x19U))),32);
        tracep->fullIData(oldp+528,(((0xffffffc0U & 
                                      ((- (IData)((1U 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x18U)))) 
                                       << 6U)) | ((0x3eU 
                                                   & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                      >> 0x13U)) 
                                                  | (1U 
                                                     & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                        >> 0x19U))))),32);
        tracep->fullIData(oldp+529,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type),32);
        tracep->fullIData(oldp+530,(((0x3000000U & 
                                      (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                       >> 3U)) | ((0x30000U 
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
        tracep->fullIData(oldp+531,(((0x10000U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 4U)) 
                                     | (1U & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0x19U)))),32);
        tracep->fullIData(oldp+532,((((IData)(1U) << 
                                      (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                >> 0x14U))) 
                                     - (IData)(1U))),32);
        tracep->fullIData(oldp+533,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a),32);
        tracep->fullBit(oldp+534,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl));
        tracep->fullBit(oldp+535,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q));
        tracep->fullCData(oldp+536,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl),5);
        tracep->fullCData(oldp+537,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0xfU))),6);
        tracep->fullCData(oldp+538,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0x14U))),6);
        tracep->fullCData(oldp+539,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id),6);
        tracep->fullCData(oldp+540,((0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 7U))),6);
        tracep->fullCData(oldp+541,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id),6);
        tracep->fullBit(oldp+542,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we));
        tracep->fullIData(oldp+543,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_data_ra_id),32);
        tracep->fullIData(oldp+544,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
                                    (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                              >> 0x14U))]),32);
        tracep->fullIData(oldp+545,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[
                                    (0x1fU & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id))]),32);
        tracep->fullCData(oldp+546,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel),3);
        tracep->fullCData(oldp+547,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel),2);
        tracep->fullCData(oldp+548,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_mux),2);
        tracep->fullBit(oldp+549,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a_mux_sel));
        tracep->fullCData(oldp+550,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_target_mux_sel),2);
        tracep->fullCData(oldp+551,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_operator),3);
        tracep->fullCData(oldp+552,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_signed_mode),2);
        tracep->fullBit(oldp+553,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_mux_sel));
        tracep->fullBit(oldp+554,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_we_id));
        tracep->fullCData(oldp+555,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_type_id),2);
        tracep->fullCData(oldp+556,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_sign_ext_id),2);
        tracep->fullBit(oldp+557,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access));
        tracep->fullBit(oldp+558,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__prepost_useincr));
        tracep->fullCData(oldp+559,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel),2);
        tracep->fullCData(oldp+560,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel),2);
        tracep->fullCData(oldp+561,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel),2);
        tracep->fullCData(oldp+562,((3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type)),2);
        tracep->fullBit(oldp+563,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id));
        tracep->fullBit(oldp+564,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id));
        tracep->fullBit(oldp+565,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id));
        tracep->fullBit(oldp+566,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_wb_is_reg_a_id));
        tracep->fullBit(oldp+567,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu) 
                                     == (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 0x14U))) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec)) 
                                   & (0U != (0x1fU 
                                             & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                >> 0x14U))))));
        tracep->fullBit(oldp+568,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu) 
                                     == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec)) 
                                   & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)))));
        tracep->fullBit(oldp+569,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_alu_is_reg_a_id));
        tracep->fullBit(oldp+570,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex) 
                                     == (0x1fU & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                  >> 0x14U))) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec)) 
                                   & (0U != (0x1fU 
                                             & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id 
                                                >> 0x14U))))));
        tracep->fullBit(oldp+571,(((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex) 
                                     == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec)) 
                                   & (0U != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id)))));
        tracep->fullBit(oldp+572,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec));
        tracep->fullBit(oldp+573,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec));
        tracep->fullBit(oldp+574,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_dec));
        tracep->fullBit(oldp+575,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__id_valid_q));
        tracep->fullBit(oldp+576,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall));
        tracep->fullWData(oldp+577,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem),1024);
        tracep->fullIData(oldp+609,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_a_dec),32);
        tracep->fullIData(oldp+610,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_b_dec),32);
        tracep->fullBit(oldp+611,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_mem_we));
        tracep->fullBit(oldp+612,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__data_req));
        tracep->fullBit(oldp+613,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__alu_en));
        tracep->fullBit(oldp+614,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__mult_int_en));
        tracep->fullCData(oldp+615,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs),5);
        tracep->fullCData(oldp+616,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs),3);
        tracep->fullBit(oldp+617,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q));
        tracep->fullBit(oldp+618,((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn))));
        tracep->fullBit(oldp+619,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q));
        tracep->fullBit(oldp+620,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q));
        tracep->fullBit(oldp+621,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q));
        tracep->fullBit(oldp+622,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_q));
        tracep->fullIData(oldp+623,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_local_qual),32);
        tracep->fullBit(oldp+624,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_we_lsu));
        tracep->fullBit(oldp+625,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_ready));
        tracep->fullIData(oldp+626,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_rev),32);
        tracep->fullIData(oldp+627,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex)),32);
        tracep->fullIData(oldp+628,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_neg_rev),32);
        tracep->fullIData(oldp+629,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)),32);
        tracep->fullBit(oldp+630,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid));
        tracep->fullIData(oldp+631,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask),32);
        tracep->fullBit(oldp+632,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b_negate));
        tracep->fullIData(oldp+633,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_a),32);
        tracep->fullIData(oldp+634,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b),32);
        tracep->fullQData(oldp+635,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_a),36);
        tracep->fullQData(oldp+637,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_b),36);
        tracep->fullIData(oldp+639,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result),32);
        tracep->fullQData(oldp+640,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded),37);
        tracep->fullIData(oldp+642,((((((0x1cU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                        | (0x1dU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                       | (0x1eU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                      | (0x1fU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))
                                      ? (0x7fffffffU 
                                         & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
                                            >> 1U))
                                      : 0U)),32);
        tracep->fullIData(oldp+643,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result 
                                     + (((((0x1cU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                           | (0x1dU 
                                              == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                          | (0x1eU 
                                             == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                         | (0x1fU == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))
                                         ? (0x7fffffffU 
                                            & (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask 
                                               >> 1U))
                                         : 0U))),32);
        tracep->fullBit(oldp+644,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left));
        tracep->fullBit(oldp+645,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round));
        tracep->fullBit(oldp+646,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic));
        tracep->fullIData(oldp+647,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex)
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
        tracep->fullIData(oldp+648,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a),32);
        tracep->fullSData(oldp+649,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex),16);
        tracep->fullQData(oldp+650,(((0x26U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
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
        tracep->fullCData(oldp+652,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal),4);
        tracep->fullCData(oldp+653,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater),4);
        tracep->fullCData(oldp+654,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed),4);
        tracep->fullCData(oldp+655,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_vec),4);
        tracep->fullCData(oldp+656,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater_vec),4);
        tracep->fullIData(oldp+657,(((0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                      ? 0U : (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex))),32);
        tracep->fullBit(oldp+658,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip));
        tracep->fullCData(oldp+659,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result),4);
        tracep->fullIData(oldp+660,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax),32);
        tracep->fullCData(oldp+661,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax),4);
        tracep->fullBit(oldp+662,(((((0x10U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)) 
                                     | (0x11U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                    | (0x16U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))) 
                                   | (0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex)))));
        tracep->fullIData(oldp+663,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b),32);
        tracep->fullIData(oldp+664,(((0x17U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))
                                      ? ((1U & ((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                                 >> 0x1fU) 
                                                | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                          ? 0U : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax)
                                      : ((1U & ((IData)(
                                                        (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded 
                                                         >> 0x24U)) 
                                                | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip)))
                                          ? (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex)
                                          : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax))),32);
        tracep->fullCData(oldp+665,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_byte_sel),8);
        tracep->fullCData(oldp+666,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg_sel),4);
        tracep->fullCData(oldp+667,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg1_sel),2);
        tracep->fullCData(oldp+668,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg0_sel),2);
        tracep->fullCData(oldp+669,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through),4);
        tracep->fullIData(oldp+670,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1),32);
        tracep->fullIData(oldp+671,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0),32);
        tracep->fullIData(oldp+672,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1_in),32);
        tracep->fullIData(oldp+673,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0_in),32);
        tracep->fullIData(oldp+674,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result),32);
        tracep->fullIData(oldp+675,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result),32);
        tracep->fullIData(oldp+676,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_input),32);
        tracep->fullCData(oldp+677,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result),6);
        tracep->fullBit(oldp+678,((0x28U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))));
        tracep->fullIData(oldp+679,(((IData)(0xfffffffeU) 
                                     << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))),32);
        tracep->fullIData(oldp+680,((~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)),32);
        tracep->fullIData(oldp+681,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                     & (~ vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask))),32);
        tracep->fullIData(oldp+682,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex 
                                     | vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask)),32);
        tracep->fullCData(oldp+683,((3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex))),2);
        tracep->fullIData(oldp+684,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP)
                                      ? (- vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D)
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D)),32);
        tracep->fullBit(oldp+685,((1U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))));
        tracep->fullBit(oldp+686,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed));
        tracep->fullIData(oldp+687,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l1),32);
        tracep->fullIData(oldp+688,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l2),24);
        tracep->fullSData(oldp+689,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l3),16);
        tracep->fullSData(oldp+690,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4),10);
        tracep->fullBit(oldp+691,((0U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result))));
        tracep->fullCData(oldp+692,((3U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex))),2);
        tracep->fullIData(oldp+693,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP),32);
        tracep->fullIData(oldp+694,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP_rev),32);
        tracep->fullIData(oldp+695,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP),32);
        tracep->fullIData(oldp+696,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP),32);
        tracep->fullBit(oldp+697,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP));
        tracep->fullBit(oldp+698,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP));
        tracep->fullBit(oldp+699,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP));
        tracep->fullIData(oldp+700,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D),32);
        tracep->fullCData(oldp+701,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP),6);
        tracep->fullBit(oldp+702,((1U & (~ (IData)(
                                                   (0U 
                                                    != (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP)))))));
        tracep->fullBit(oldp+703,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S));
        tracep->fullCData(oldp+704,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SP),2);
        tracep->fullQData(oldp+705,((0x1ffffffffULL 
                                     & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                         ? (((QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q)) 
                                             << 0x20U) 
                                            | (QData)((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex)))
                                         : VL_EXTENDS_QI(33,32, vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex)))),33);
        tracep->fullIData(oldp+707,(((3U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))
                                      ? (0x7fffffffU 
                                         & (((IData)(1U) 
                                             << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex)) 
                                            >> 1U))
                                      : 0U)),32);
        tracep->fullIData(oldp+708,(((IData)(1U) << (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex))),32);
        tracep->fullCData(oldp+709,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active)
                                      ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm)
                                      : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex))),5);
        tracep->fullCData(oldp+710,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_subword),2);
        tracep->fullCData(oldp+711,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_signed),2);
        tracep->fullBit(oldp+712,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith));
        tracep->fullCData(oldp+713,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm),5);
        tracep->fullCData(oldp+714,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_subword),2);
        tracep->fullCData(oldp+715,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_signed),2);
        tracep->fullBit(oldp+716,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_shift_arith));
        tracep->fullBit(oldp+717,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q));
        tracep->fullBit(oldp+718,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active));
        tracep->fullBit(oldp+719,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_save));
        tracep->fullBit(oldp+720,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_clearcarry));
        tracep->fullCData(oldp+721,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS),3);
        tracep->fullIData(oldp+722,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex 
                                     ^ (- (IData)((1U 
                                                   == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))),32);
        tracep->fullIData(oldp+723,((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex 
                                     & (- (IData)((1U 
                                                   == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex)))))),32);
        tracep->fullIData(oldp+724,(((vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex 
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
        tracep->fullBit(oldp+725,((1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex))));
        tracep->fullIData(oldp+726,(((((VL_EXTENDS_II(32,18, 
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
        tracep->fullQData(oldp+727,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_result),33);
        tracep->fullIData(oldp+729,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex)
                                      ? (VL_EXTENDS_II(32,17, 
                                                       (0x1ffffU 
                                                        & (IData)(
                                                                  (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b 
                                                                   >> 0x11U)))) 
                                         & (- (IData)(
                                                      (1U 
                                                       & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex))))))
                                      : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex)),32);
        tracep->fullSData(oldp+730,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result),16);
        tracep->fullQData(oldp+731,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_a),36);
        tracep->fullQData(oldp+733,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_b),36);
        tracep->fullWData(oldp+735,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul),72);
        tracep->fullQData(oldp+738,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a),34);
        tracep->fullQData(oldp+740,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b),34);
        tracep->fullWData(oldp+742,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_mul),68);
        tracep->fullIData(oldp+745,((0x1ffffU & (IData)(
                                                        (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a 
                                                         >> 0x11U)))),17);
        tracep->fullIData(oldp+746,(VL_EXTENDS_II(32,17, 
                                                  (0x1ffffU 
                                                   & (IData)(
                                                             (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b 
                                                              >> 0x11U))))),32);
        tracep->fullCData(oldp+747,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q),2);
        tracep->fullIData(oldp+748,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int),32);
        tracep->fullCData(oldp+749,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_type_q),2);
        tracep->fullCData(oldp+750,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q),2);
        tracep->fullCData(oldp+751,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_sign_ext_q),2);
        tracep->fullBit(oldp+752,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_we_q));
        tracep->fullBit(oldp+753,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q));
        tracep->fullCData(oldp+754,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset),2);
        tracep->fullIData(oldp+755,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q),32);
        tracep->fullIData(oldp+756,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int),32);
        tracep->fullBit(oldp+757,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int));
        tracep->fullCData(oldp+758,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_q),3);
        tracep->fullCData(oldp+759,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_n),3);
        tracep->fullCData(oldp+760,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_q),5);
        tracep->fullCData(oldp+761,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_n),5);
        tracep->fullIData(oldp+762,((0x28001040U | 
                                     ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q) 
                                      << 2U))),32);
        tracep->fullIData(oldp+763,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_value_q),32);
        tracep->fullIData(oldp+764,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q),32);
        tracep->fullIData(oldp+765,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_q),32);
        tracep->fullIData(oldp+766,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_n),32);
        tracep->fullIData(oldp+767,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_q),32);
        tracep->fullIData(oldp+768,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_n),32);
        tracep->fullIData(oldp+769,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_q),32);
        tracep->fullIData(oldp+770,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_n),32);
        tracep->fullCData(oldp+771,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q),7);
        tracep->fullCData(oldp+772,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_q),6);
        tracep->fullCData(oldp+773,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_n),2);
        tracep->fullIData(oldp+774,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q),32);
        tracep->fullIData(oldp+775,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_n),32);
        tracep->fullIData(oldp+776,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata),32);
        tracep->fullBit(oldp+777,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we));
        tracep->fullWData(oldp+778,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_q),2048);
        tracep->fullWData(oldp+842,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_q),1024);
        tracep->fullWData(oldp+874,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_n),1024);
        tracep->fullIData(oldp+906,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_q),32);
        tracep->fullIData(oldp+907,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_n),32);
        tracep->fullSData(oldp+908,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__hpm_events),16);
        tracep->fullWData(oldp+909,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_increment),2048);
        tracep->fullIData(oldp+973,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_lower),32);
        tracep->fullIData(oldp+974,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_upper),32);
        tracep->fullIData(oldp+975,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_increment),32);
        tracep->fullBit(oldp+976,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                   & (0x306U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
        tracep->fullBit(oldp+977,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                   & (0x320U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
        tracep->fullBit(oldp+978,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_we));
        tracep->fullBit(oldp+979,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q));
        tracep->fullBit(oldp+980,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)) 
                                   & (0x7a1U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
        tracep->fullBit(oldp+981,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q)) 
                                   & (0x7a2U == (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int)))));
        tracep->fullIData(oldp+982,((0xfffffffcU & 
                                     ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)
                                       ? (0xfffffffcU 
                                          & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int)
                                       : vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int))),32);
        tracep->fullBit(oldp+983,(vlTOPp->tb_top_verilator__DOT__exit_valid));
        tracep->fullIData(oldp+984,(vlTOPp->tb_top_verilator__DOT__exit_value),32);
        tracep->fullBit(oldp+985,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt));
        tracep->fullIData(oldp+986,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata),32);
        tracep->fullBit(oldp+987,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb));
        tracep->fullBit(oldp+988,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_ex));
        tracep->fullIData(oldp+989,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata),32);
        tracep->fullBit(oldp+990,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__illegal_c_insn));
        tracep->fullIData(oldp+991,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned),32);
        tracep->fullIData(oldp+992,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_decompressed),32);
        tracep->fullBit(oldp+993,((3U != (3U & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned))));
        tracep->fullBit(oldp+994,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__ctrl_update));
        tracep->fullIData(oldp+995,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_rdata_ext),32);
        tracep->fullIData(oldp+996,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_h_ext),32);
        tracep->fullIData(oldp+997,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_b_ext),32);
        tracep->fullCData(oldp+998,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d),3);
        tracep->fullBit(oldp+999,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction));
        tracep->fullBit(oldp+1000,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req));
        tracep->fullIData(oldp+1001,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec),22);
        tracep->fullIData(oldp+1002,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec),32);
        tracep->fullBit(oldp+1003,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec));
        tracep->fullCData(oldp+1004,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec),4);
        tracep->fullBit(oldp+1005,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec));
        tracep->fullIData(oldp+1006,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata),32);
        tracep->fullBit(oldp+1007,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid));
        tracep->fullIData(oldp+1008,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d),32);
        tracep->fullIData(oldp+1009,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d),32);
        tracep->fullBit(oldp+1010,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid));
        tracep->fullBit(oldp+1011,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid));
        tracep->fullIData(oldp+1012,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata),32);
        tracep->fullBit(oldp+1013,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear));
        tracep->fullIData(oldp+1014,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata),32);
        tracep->fullBit(oldp+1015,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid));
        tracep->fullBit(oldp+1016,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req));
        tracep->fullIData(oldp+1017,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr),32);
        tracep->fullIData(oldp+1018,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata),32);
        tracep->fullBit(oldp+1019,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we));
        tracep->fullBit(oldp+1020,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req));
        tracep->fullBit(oldp+1021,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file));
        tracep->fullIData(oldp+1022,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd),32);
        tracep->fullIData(oldp+1023,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr),32);
        tracep->fullIData(oldp+1024,((0x3ffffcU & vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec)),22);
        tracep->fullBit(oldp+1025,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_push));
        tracep->fullBit(oldp+1026,(vlTOPp->clk_i));
        tracep->fullBit(oldp+1027,(vlTOPp->rst_ni));
        tracep->fullBit(oldp+1028,(vlTOPp->fetch_enable_i));
        tracep->fullBit(oldp+1029,(vlTOPp->tests_passed_o));
        tracep->fullBit(oldp+1030,(vlTOPp->tests_failed_o));
        tracep->fullBit(oldp+1031,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid));
        tracep->fullIData(oldp+1032,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata),32);
        tracep->fullBit(oldp+1033,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                    & (~ ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                          & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep) 
                                             | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q)))))));
        tracep->fullBit(oldp+1034,((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q) 
                                     & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)) 
                                    & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex)))));
        tracep->fullBit(oldp+1035,((1U & ((((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q) 
                                            | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q)) 
                                           | (vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q 
                                              >> 2U)) 
                                          | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match)))));
        tracep->fullBit(oldp+1036,(((IData)(vlTOPp->fetch_enable_i) 
                                    | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q))));
        tracep->fullBit(oldp+1037,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q) 
                                    & ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep) 
                                       | (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q)))));
        tracep->fullCData(oldp+1038,((3U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid) 
                                             & (~ (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q)))
                                             ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                                                 ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)
                                                 : 
                                                ((IData)(1U) 
                                                 + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q)))
                                             : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid)
                                                 ? 
                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q) 
                                                 - (IData)(1U))
                                                 : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q))))),2);
        tracep->fullCData(oldp+1039,((3U & (((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid) 
                                             & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt))
                                             ? ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)
                                                 ? (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)
                                                 : 
                                                ((IData)(1U) 
                                                 + (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q)))
                                             : ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid)
                                                 ? 
                                                ((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q) 
                                                 - (IData)(1U))
                                                 : (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q))))),2);
        tracep->fullBit(oldp+1040,(((IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid) 
                                    & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt))));
        tracep->fullIData(oldp+1041,(((2U & (IData)(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q))
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
        tracep->fullIData(oldp+1042,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__i),32);
        tracep->fullIData(oldp+1043,(0x80U),32);
        tracep->fullIData(oldp+1044,(0x16U),32);
        tracep->fullIData(oldp+1045,(0x80U),32);
        tracep->fullIData(oldp+1046,(0x1a110800U),32);
        tracep->fullIData(oldp+1047,(0U),32);
        tracep->fullIData(oldp+1048,(0U),32);
        tracep->fullIData(oldp+1049,(1U),32);
        tracep->fullCData(oldp+1050,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_in),5);
        tracep->fullBit(oldp+1051,(0U));
        tracep->fullBit(oldp+1052,(1U));
        tracep->fullIData(oldp+1053,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mtvec_addr_i),32);
        tracep->fullIData(oldp+1054,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__dm_exception_addr_i),32);
        tracep->fullCData(oldp+1055,(0U),6);
        tracep->fullCData(oldp+1056,(0U),5);
        tracep->fullIData(oldp+1057,(0x10U),32);
        tracep->fullIData(oldp+1058,(2U),32);
        tracep->fullCData(oldp+1059,(0U),3);
        tracep->fullIData(oldp+1060,(0U),18);
        tracep->fullSData(oldp+1061,(0U),12);
        tracep->fullCData(oldp+1062,(0U),2);
        tracep->fullIData(oldp+1063,(0U),24);
        tracep->fullCData(oldp+1064,(3U),2);
        tracep->fullQData(oldp+1065,(0ULL),64);
        tracep->fullQData(oldp+1067,(0ULL),64);
        tracep->fullQData(oldp+1069,(0ULL),64);
        __Vtemp75[0U] = 0U;
        __Vtemp75[1U] = 0U;
        __Vtemp75[2U] = 0U;
        __Vtemp75[3U] = 0U;
        __Vtemp75[4U] = 0U;
        __Vtemp75[5U] = 0U;
        __Vtemp75[6U] = 0U;
        __Vtemp75[7U] = 0U;
        __Vtemp75[8U] = 0U;
        __Vtemp75[9U] = 0U;
        __Vtemp75[0xaU] = 0U;
        __Vtemp75[0xbU] = 0U;
        __Vtemp75[0xcU] = 0U;
        __Vtemp75[0xdU] = 0U;
        __Vtemp75[0xeU] = 0U;
        __Vtemp75[0xfU] = 0U;
        tracep->fullWData(oldp+1071,(__Vtemp75),512);
        __Vtemp76[0U] = 0U;
        __Vtemp76[1U] = 0U;
        __Vtemp76[2U] = 0U;
        __Vtemp76[3U] = 0U;
        tracep->fullWData(oldp+1087,(__Vtemp76),128);
        tracep->fullIData(oldp+1091,(1U),32);
        tracep->fullBit(oldp+1092,(0U));
        tracep->fullIData(oldp+1093,(0x20U),32);
        tracep->fullIData(oldp+1094,(2U),32);
        tracep->fullCData(oldp+1095,(0xfU),4);
        tracep->fullIData(oldp+1096,(3U),32);
        tracep->fullIData(oldp+1097,(6U),32);
        tracep->fullIData(oldp+1098,(0xfU),32);
        tracep->fullIData(oldp+1099,(5U),32);
        tracep->fullIData(oldp+1100,(0x13U),32);
        tracep->fullIData(oldp+1101,(0x18U),32);
        tracep->fullIData(oldp+1102,(0x14U),32);
        tracep->fullIData(oldp+1103,(0x1fU),32);
        tracep->fullIData(oldp+1104,(0x1bU),32);
        tracep->fullIData(oldp+1105,(0xbU),32);
        tracep->fullIData(oldp+1106,(7U),32);
        tracep->fullCData(oldp+1107,(0U),3);
        tracep->fullCData(oldp+1108,(2U),2);
        tracep->fullSData(oldp+1109,(0U),15);
        tracep->fullBit(oldp+1110,(0U));
        tracep->fullCData(oldp+1111,(2U),2);
        tracep->fullBit(oldp+1112,(1U));
        tracep->fullIData(oldp+1113,(0x20U),32);
        __Vtemp77[0U] = 0U;
        __Vtemp77[1U] = 0U;
        __Vtemp77[2U] = 0U;
        __Vtemp77[3U] = 0U;
        __Vtemp77[4U] = 0U;
        __Vtemp77[5U] = 0U;
        __Vtemp77[6U] = 0U;
        __Vtemp77[7U] = 0U;
        __Vtemp77[8U] = 0U;
        __Vtemp77[9U] = 0U;
        __Vtemp77[0xaU] = 0U;
        __Vtemp77[0xbU] = 0U;
        __Vtemp77[0xcU] = 0U;
        __Vtemp77[0xdU] = 0U;
        __Vtemp77[0xeU] = 0U;
        __Vtemp77[0xfU] = 0U;
        __Vtemp77[0x10U] = 0U;
        __Vtemp77[0x11U] = 0U;
        __Vtemp77[0x12U] = 0U;
        __Vtemp77[0x13U] = 0U;
        __Vtemp77[0x14U] = 0U;
        __Vtemp77[0x15U] = 0U;
        __Vtemp77[0x16U] = 0U;
        __Vtemp77[0x17U] = 0U;
        __Vtemp77[0x18U] = 0U;
        __Vtemp77[0x19U] = 0U;
        __Vtemp77[0x1aU] = 0U;
        __Vtemp77[0x1bU] = 0U;
        __Vtemp77[0x1cU] = 0U;
        __Vtemp77[0x1dU] = 0U;
        __Vtemp77[0x1eU] = 0U;
        __Vtemp77[0x1fU] = 0U;
        tracep->fullWData(oldp+1114,(__Vtemp77),1024);
        tracep->fullCData(oldp+1146,(6U),4);
        tracep->fullCData(oldp+1147,(0U),2);
        tracep->fullBit(oldp+1148,(0U));
        __Vtemp78[0U] = 0U;
        __Vtemp78[1U] = 0U;
        __Vtemp78[2U] = 0U;
        __Vtemp78[3U] = 0U;
        __Vtemp78[4U] = 0U;
        __Vtemp78[5U] = 0U;
        __Vtemp78[6U] = 0U;
        __Vtemp78[7U] = 0U;
        __Vtemp78[8U] = 0U;
        __Vtemp78[9U] = 0U;
        __Vtemp78[0xaU] = 0U;
        __Vtemp78[0xbU] = 0U;
        __Vtemp78[0xcU] = 0U;
        __Vtemp78[0xdU] = 0U;
        __Vtemp78[0xeU] = 0U;
        __Vtemp78[0xfU] = 0U;
        tracep->fullWData(oldp+1149,(__Vtemp78),512);
        __Vtemp79[0U] = 0U;
        __Vtemp79[1U] = 0U;
        __Vtemp79[2U] = 0U;
        __Vtemp79[3U] = 0U;
        tracep->fullWData(oldp+1165,(__Vtemp79),128);
        tracep->fullCData(oldp+1169,(1U),2);
        tracep->fullIData(oldp+1170,(4U),32);
        tracep->fullIData(oldp+1171,(8U),32);
        tracep->fullIData(oldp+1172,(0xcU),32);
        tracep->fullIData(oldp+1173,(0x11U),32);
        tracep->fullIData(oldp+1174,(0x40001104U),32);
        tracep->fullIData(oldp+1175,(0x40U),32);
        tracep->fullSData(oldp+1176,(4U),16);
        tracep->fullCData(oldp+1177,(3U),2);
        __Vtemp80[0U] = 0U;
        __Vtemp80[1U] = 0U;
        __Vtemp80[2U] = 0U;
        __Vtemp80[3U] = 0U;
        __Vtemp80[4U] = 0U;
        __Vtemp80[5U] = 0U;
        __Vtemp80[6U] = 0U;
        __Vtemp80[7U] = 0U;
        __Vtemp80[8U] = 0U;
        __Vtemp80[9U] = 0U;
        __Vtemp80[0xaU] = 0U;
        __Vtemp80[0xbU] = 0U;
        __Vtemp80[0xcU] = 0U;
        __Vtemp80[0xdU] = 0U;
        __Vtemp80[0xeU] = 0U;
        __Vtemp80[0xfU] = 0U;
        __Vtemp80[0x10U] = 0U;
        __Vtemp80[0x11U] = 0U;
        __Vtemp80[0x12U] = 0U;
        __Vtemp80[0x13U] = 0U;
        __Vtemp80[0x14U] = 0U;
        __Vtemp80[0x15U] = 0U;
        __Vtemp80[0x16U] = 0U;
        __Vtemp80[0x17U] = 0U;
        tracep->fullWData(oldp+1178,(__Vtemp80),768);
        tracep->fullSData(oldp+1202,(0U),16);
        tracep->fullIData(oldp+1203,(0xeU),32);
        tracep->fullIData(oldp+1204,(0x10U),32);
        tracep->fullIData(oldp+1205,(0U),32);
        tracep->fullIData(oldp+1206,(2U),32);
        tracep->fullIData(oldp+1207,(4U),32);
        tracep->fullIData(oldp+1208,(6U),32);
        tracep->fullIData(oldp+1209,(8U),32);
        tracep->fullIData(oldp+1210,(1U),32);
        tracep->fullIData(oldp+1211,(3U),32);
        tracep->fullIData(oldp+1212,(5U),32);
        tracep->fullIData(oldp+1213,(7U),32);
        tracep->fullIData(oldp+1214,(9U),32);
        tracep->fullIData(oldp+1215,(0x1fU),32);
        tracep->fullIData(oldp+1216,(0x10000000U),32);
        tracep->fullIData(oldp+1217,(0x20000000U),32);
        tracep->fullIData(oldp+1218,(0x20000004U),32);
        tracep->fullIData(oldp+1219,(0x20000008U),32);
        tracep->fullIData(oldp+1220,(0x2000000cU),32);
        tracep->fullIData(oldp+1221,(0x20000010U),32);
        tracep->fullIData(oldp+1222,(0x15000000U),32);
        tracep->fullIData(oldp+1223,(0x15000004U),32);
        tracep->fullIData(oldp+1224,(0x15000008U),32);
        tracep->fullIData(oldp+1225,(0x1600U),32);
        tracep->fullIData(oldp+1226,(0x15001000U),32);
        tracep->fullIData(oldp+1227,(0x15001004U),32);
        tracep->fullBit(oldp+1228,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_q));
        tracep->fullBit(oldp+1229,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_q));
        tracep->fullBit(oldp+1230,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_valid));
        tracep->fullBit(oldp+1231,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_valid));
        tracep->fullBit(oldp+1232,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_irq));
        tracep->fullIData(oldp+1233,(vlTOPp->tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__errno),32);
        tracep->fullIData(oldp+1234,(0x400000U),32);
        tracep->fullIData(oldp+1235,(0x24U),32);
        tracep->fullIData(oldp+1236,(0x25U),32);
        tracep->fullIData(oldp+1237,(5U),32);
        tracep->fullIData(oldp+1238,(3U),32);
        tracep->fullIData(oldp+1239,(4U),32);
        tracep->fullCData(oldp+1240,(0x73U),7);
        tracep->fullCData(oldp+1241,(0xfU),7);
        tracep->fullCData(oldp+1242,(0x33U),7);
        tracep->fullCData(oldp+1243,(0x13U),7);
        tracep->fullCData(oldp+1244,(0x23U),7);
        tracep->fullCData(oldp+1245,(3U),7);
        tracep->fullCData(oldp+1246,(0x63U),7);
        tracep->fullCData(oldp+1247,(0x67U),7);
        tracep->fullCData(oldp+1248,(0x6fU),7);
        tracep->fullCData(oldp+1249,(0x17U),7);
        tracep->fullCData(oldp+1250,(0x37U),7);
        tracep->fullCData(oldp+1251,(0x53U),7);
        tracep->fullCData(oldp+1252,(0x43U),7);
        tracep->fullCData(oldp+1253,(0x4fU),7);
        tracep->fullCData(oldp+1254,(0x47U),7);
        tracep->fullCData(oldp+1255,(0x4bU),7);
        tracep->fullCData(oldp+1256,(0x27U),7);
        tracep->fullCData(oldp+1257,(7U),7);
        tracep->fullCData(oldp+1258,(0x2fU),7);
        tracep->fullCData(oldp+1259,(0xbU),7);
        tracep->fullCData(oldp+1260,(0x2bU),7);
        tracep->fullCData(oldp+1261,(0x5bU),7);
        tracep->fullCData(oldp+1262,(0x57U),7);
        tracep->fullCData(oldp+1263,(0x7bU),7);
        tracep->fullCData(oldp+1264,(3U),2);
        tracep->fullIData(oldp+1265,(7U),32);
        tracep->fullIData(oldp+1266,(0xbU),32);
        tracep->fullIData(oldp+1267,(0x10U),32);
        tracep->fullIData(oldp+1268,(0x1fU),32);
        tracep->fullSData(oldp+1269,(0x3000U),16);
        tracep->fullSData(oldp+1270,(0x3008U),16);
        tracep->fullSData(oldp+1271,(0x3010U),16);
        tracep->fullSData(oldp+1272,(0x3011U),16);
        tracep->fullCData(oldp+1273,(0U),8);
        tracep->fullCData(oldp+1274,(1U),8);
        tracep->fullCData(oldp+1275,(2U),8);
        tracep->fullCData(oldp+1276,(4U),8);
        tracep->fullCData(oldp+1277,(2U),7);
        tracep->fullIData(oldp+1278,(0xcU),25);
        tracep->fullIData(oldp+1279,(4U),32);
        tracep->fullCData(oldp+1280,(1U),3);
        tracep->fullCData(oldp+1281,(2U),3);
        tracep->fullCData(oldp+1282,(3U),3);
        tracep->fullCData(oldp+1283,(4U),3);
        tracep->fullCData(oldp+1284,(0U),4);
        tracep->fullCData(oldp+1285,(1U),4);
        tracep->fullCData(oldp+1286,(2U),4);
        tracep->fullCData(oldp+1287,(3U),4);
        tracep->fullCData(oldp+1288,(4U),4);
        tracep->fullCData(oldp+1289,(5U),4);
        tracep->fullCData(oldp+1290,(6U),4);
        tracep->fullCData(oldp+1291,(7U),4);
        tracep->fullCData(oldp+1292,(8U),4);
        tracep->fullCData(oldp+1293,(9U),4);
        tracep->fullCData(oldp+1294,(0xbU),4);
        tracep->fullCData(oldp+1295,(2U),5);
        tracep->fullCData(oldp+1296,(3U),5);
        tracep->fullCData(oldp+1297,(1U),5);
        tracep->fullCData(oldp+1298,(4U),5);
        tracep->fullCData(oldp+1299,(0xcU),5);
        tracep->fullCData(oldp+1300,(8U),5);
        tracep->fullCData(oldp+1301,(0x10U),5);
        tracep->fullCData(oldp+1302,(0x14U),5);
        tracep->fullCData(oldp+1303,(0x18U),5);
        tracep->fullCData(oldp+1304,(0x1cU),5);
        tracep->fullCData(oldp+1305,(5U),5);
        tracep->fullCData(oldp+1306,(7U),5);
        tracep->fullCData(oldp+1307,(0xbU),5);
        tracep->fullIData(oldp+1308,(0xffff0888U),32);
        tracep->fullCData(oldp+1309,(5U),3);
        tracep->fullCData(oldp+1310,(0x1fU),6);
        tracep->fullBit(oldp+1311,(1U));
        tracep->fullIData(oldp+1312,(0U),32);
    }
}
