// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTB_TOP_VERILATOR_H_
#define _VTB_TOP_VERILATOR_H_  // guard

#include "verilated_heavy.h"
#include "Vtb_top_verilator__Dpi.h"

//==========

class Vtb_top_verilator__Syms;
class Vtb_top_verilator_VerilatedVcd;


//----------

VL_MODULE(Vtb_top_verilator) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk_i,0,0);
    VL_IN8(rst_ni,0,0);
    VL_IN8(fetch_enable_i,0,0);
    VL_OUT8(tests_passed_o,0,0);
    VL_OUT8(tests_failed_o,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk;
        CData/*0:0*/ tb_top_verilator__DOT__exit_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__instr_rvalid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rvalid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__debug_req;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_in;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_ack;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__irq_id_out;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_valid_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_compressed_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__illegal_c_insn_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_fetch_failed_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clear_instr_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_set;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_mux_id;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_pc_mux_id;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__m_exc_vec_pc_mux_id;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__exc_cause;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trap_addr_mux;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__is_decoding;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__useincr_addr_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_multicycle;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__branch_in_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ctrl_busy;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_en_ex;
        CData/*6:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operator_ex;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_a_ex;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__bmask_b_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__imm_vec_ext_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_vec_mode_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_clpx_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_is_subrot_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_clpx_shift_ex;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operator_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_en_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_sel_subword_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_signed_mode_ex;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_imm_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_signed_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_is_clpx_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_clpx_shift_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_en_ex;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_op_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_lat_ex;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_waddr_ex;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_waddr_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_we_wb;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_waddr_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_we_fw;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_access_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_op_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_we_ex;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_atop_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_type_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_sign_ext_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_reg_offset_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_req_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_load_event_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__data_misaligned_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_ready;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_ready;
    };
    struct {
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_ex;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_ready_wb;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_int;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_irq_sec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_cause;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_if;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_save_id;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_cause;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_mret_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_uret_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_restore_dret_id;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_cause;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__debug_csr_save;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__trigger_match;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_minstret;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_load;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_store;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jump;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_branch_taken;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_compressed;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_jr_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_imiss;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_ld_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mhpmevent_pipe_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__wake_from_sleep;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_req_pmp;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__fetch_enable_d;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_busy_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__p_elw_busy_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__sleep_unit_i__DOT__core_clock_gate_i__DOT__clk_en;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__if_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_ready;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_vec_pc_mux;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_ready;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__illegal_c_insn;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_push;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_pop;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__state_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_state;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__cnt_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_cnt;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__flush_cnt_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__next_flush_cnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__gate_clock;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__read_pointer_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__write_pointer_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_n;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__status_cnt_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_we_o;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_be_o;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_atop_o;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__state_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__next_state;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_we_q;
    };
    struct {
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_be_q;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_atop_q;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__state;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__next_state;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__update_state;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__aligner_ready_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_update_pc_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__deassert_we;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__illegal_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ebrk_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ecall_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__wfi_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__fencei_insn_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__rega_used_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regb_used_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_used_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__branch_taken_ex;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_insn_in_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jr_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__load_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__hwlp_mask;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__halt_if;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__debug_wfi_no_sleep;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_req_ctrl;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__irq_id_ctrl;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_addr_rc_id;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_we_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_en;
        CData/*6:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operator;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_a_mux_sel;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_b_mux_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_op_c_mux_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regc_mux;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a_mux_sel;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b_mux_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__ctrl_transfer_target_mux_sel;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_operator;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_int_en;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mult_signed_mode;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_we_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_alu_waddr_mux_sel;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_we_id;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_type_id;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_sign_ext_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__data_req_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_access;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__csr_status;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__prepost_useincr;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_mux_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_mux_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_mux_sel;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_a_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_b_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_ex_is_reg_c_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_wb_is_reg_a_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__reg_d_alu_is_reg_a_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__mret_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__uret_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__dret_dec;
    };
    struct {
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__id_valid_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__minstret;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__perf_pipeline_stall;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_mem_we;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__regfile_alu_we;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__data_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_illegal;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__ctrl_transfer_insn;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__csr_op;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__alu_en;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__decoder_i__DOT__mult_int_en;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_cs;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ctrl_fsm_ns;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_cs;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_fsm_ns;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_done_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__jump_in_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__branch_in_id;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__data_err_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__ebrk_force_debug_mode;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__is_hwlp_illegal;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__illegal_insn_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_entry_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_force_wakeup_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_req_pending;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__wfi_active;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_sec_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_we_lsu;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__regfile_waddr_lsu;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_shift;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b_negate;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_use_round;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_arithmetic;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_vec;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_greater_vec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__is_equal_clip;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_result;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__sel_minmax;
        CData/*7:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_byte_sel;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg1_sel;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_reg0_sel;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_through;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cnt_result;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bitop_result;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_op_a_signed;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l1;
        IData/*23:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l2;
        SData/*15:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l3;
        SData/*9:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__popcnt_i__DOT__cnt_l4;
        WData/*159:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_lut[5];
    };
    struct {
        WData/*159:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[5];
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SN;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__RemSel_SP;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SN;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__CompInv_SP;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SN;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResInv_SP;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DP;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__Cnt_DN;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ABComp_S;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SP;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_subword;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_signed;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_shift_arith;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_imm;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_subword;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_signed;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_shift_arith;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_carry_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_active;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_save;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_clearcarry;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_ready;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_CS;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__mulh_NS;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__trans_valid;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__cnt_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__next_cnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__ctrl_update;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_type_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_offset_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_sign_ext_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_we_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_load_event_q;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__wdata_offset;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_we_int;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_q;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__frm_n;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_q;
        CData/*4:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__fflags_n;
        CData/*6:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_q;
        CData/*6:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mstatus_n;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_q;
        CData/*5:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcause_n;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_n;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_mode_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_we;
        CData/*1:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__priv_lvl_n;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_we;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_control_exec_q;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_d;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__select_rdata_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__transaction;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_gnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_req_dec;
    };
    struct {
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_we_dec;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_be_dec;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_gnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_reg_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_val_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_overflow_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_clear;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_valid;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_we;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_instr_gnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_data_gnt;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num_req;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_irq;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__use_sig_file;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_value_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_empty;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo_push;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rptr;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__wptr_rdata;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__rvalid_i_q;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__current_delay;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_empty;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo_push;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rptr;
        CData/*2:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__wptr_rdata;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__rvalid_i_q;
        CData/*3:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__current_delay;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__req_core_i_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_core_o_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__req_core_i_q;
        CData/*0:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_core_o_q;
        SData/*14:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__apu_flags_ex;
        SData/*11:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__csr_addr_int;
        SData/*15:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__r_instr_h;
        SData/*15:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__clpx_shift_result;
        QData/*35:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_a;
        QData/*35:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_op_b;
        SData/*15:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__hpm_events;
        SData/*14:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_start_cnt_q;
        SData/*12:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debug_req_duration_q;
        IData/*31:0*/ tb_top_verilator__DOT__cycle_cnt_q;
        IData/*31:0*/ tb_top_verilator__DOT__exit_value;
        WData/*1023:0*/ tb_top_verilator__DOT__load_prog__DOT__firmware[32];
        IData/*31:0*/ tb_top_verilator__DOT__load_prog__DOT__prog_size;
        IData/*31:0*/ tb_top_verilator__DOT__unnamedblk1__DOT__maxcycles;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__data_rdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mtvec_addr_i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__dm_exception_addr_i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_rdata_id;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_id;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__pc_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_a_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_b_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__alu_operand_c_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_a_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_b_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_operand_c_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_a_ex;
    };
    struct {
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_b_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__mult_dot_op_c_ex;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__regfile_alu_wdata_fw;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__lsu_rdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__instr_addr_pmp;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__branch_addr_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__fetch_rdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__exc_pc;
        IData/*23:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__trap_base_addr;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_aligned;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__instr_decompressed;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__trans_addr;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__prefetch_controller_i__DOT__trans_addr_q;
        QData/*63:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_n;
        QData/*63:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__fifo_i__DOT__mem_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__obi_wdata_o;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_addr_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__prefetch_buffer_i__DOT__instruction_obi_i__DOT__gen_no_trans_stable__DOT__obi_wdata_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__hwlp_addr_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__if_stage_i__DOT__aligner_i__DOT__pc_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_i_type;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_vu_type;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_a;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__imm_b;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__jump_target;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__regfile_data_ra_id;
        WData/*95:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__apu_operands[3];
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_a_fw_id;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b_fw_id;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c_fw_id;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_b;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__operand_c;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__alu_operand_a;
        WData/*1023:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__mem[32];
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_a_dec;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__register_file_i__DOT__we_b_dec;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_local_qual;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__int_controller_i__DOT__irq_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__operand_a_neg_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bmask;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_a;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_op_b;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_left;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_amt_int;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_op_a;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_right_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shift_left_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__result_minmax;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__minmax_b;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r1_in;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_r0_in;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__shuffle_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__pack_result;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_input;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__bextins_result;
    };
    struct {
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_2_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_4_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__radix_8_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DN;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResReg_DP_rev;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DP;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AReg_DN;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DP;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BReg_DN;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddMux_D;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__AddTmp_D;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__OutMux_D;
        IData/*16:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a;
        IData/*16:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b;
        WData/*71:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_char_mul[3];
        QData/*33:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_a;
        QData/*33:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_op_b;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_addr_int;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__data_rdata_ext;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_h_ext;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__load_store_unit_i__DOT__rdata_b_ext;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_wdata_int;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_rdata_int;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mepc_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dcsr_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__depc_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch0_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__dscratch1_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mscratch_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__exception_pc;
        IData/*23:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_n;
        IData/*23:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mtvec_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mie_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__csr_mie_wdata;
        WData/*1023:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_q[32];
        WData/*1023:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmevent_n[32];
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcounteren_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mcountinhibit_n;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_lower;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_upper;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_write_increment;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__gen_trigger_regs__DOT__tmatch_value_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_data_rdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_wdata_dec;
        IData/*21:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_addr_dec;
        WData/*127:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__ram_instr_rdata[4];
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__print_wdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_d;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_end_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_d;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_begin_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_irq_mask_q;
    };
    struct {
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_cnt_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__irq_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__timer_wdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__cycle_count_q;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__debugger_wdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_addr;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_wdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_rdata;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_num;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_fd;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__errno;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rdata_mux;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__unnamedblk1__DOT__addr;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__unnamedblk1__DOT__i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__i;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__grant_delay_cnt;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_gnt_stall_i__DOT__delay_value;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__grant_delay_cnt;
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_gnt_stall_i__DOT__delay_value;
        QData/*35:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_a;
        QData/*35:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_in_b;
        QData/*36:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__adder_result_expanded;
        QData/*33:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_mac;
        QData/*33:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_result;
        QData/*32:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_result;
        WData/*67:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__dot_short_mul[3];
        WData/*767:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__pmp_reg_n[24];
        WData/*2047:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_q[64];
        WData/*2047:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__cs_registers_i__DOT__mhpmcounter_increment[64];
        IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__rnd_stall_regs[16];
        CData/*7:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__mem[4194304];
        QData/*36:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__instr_rvalid_stall_i__DOT__fifo[8];
        QData/*36:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__data_rvalid_stall_i__DOT__fifo[8];
    };
    std::string tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__sig_file;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*5:0*/ __Vtableidx2;
    CData/*0:0*/ __Vclklast__TOP__clk_i;
    CData/*0:0*/ __Vclklast__TOP__rst_ni;
    CData/*0:0*/ __Vclklast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__clk;
    CData/*0:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__id_stage_i__DOT__controller_i__DOT__debug_mode_q;
    CData/*0:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready;
    WData/*159:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__index_nodes[5];
    SData/*8:0*/ __Vtableidx1;
    WData/*95:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__id_stage_i__apu_operands_ex_o[3];
    WData/*95:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT____Vcellout__ex_stage_i__apu_operands_o[3];
    IData/*31:0*/ tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT____Vcellout__instr_rvalid_stall_i__rdata_o;
    IData/*31:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__ff_one_i__DOT__sel_nodes;
    IData/*16:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_a;
    IData/*16:0*/ __Vchglast__TOP__tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__mult_i__DOT__short_op_b;
    CData/*0:0*/ __Vm_traceActivity[8];
    static CData/*3:0*/ __Vtable1_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__cmp_signed[512];
    static CData/*1:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__State_SN[64];
    static CData/*0:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__div_ready[64];
    static CData/*0:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__LoadEn_S[64];
    static CData/*0:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ARegEn_S[64];
    static CData/*0:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__BRegEn_S[64];
    static CData/*0:0*/ __Vtable2_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__cv32e40p_core_i__DOT__ex_stage_i__DOT__alu_i__DOT__alu_div_i__DOT__ResRegEn_S[64];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vtb_top_verilator__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vtb_top_verilator);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vtb_top_verilator(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vtb_top_verilator();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
    static void _eval_initial_loop(Vtb_top_verilator__Syms* __restrict vlSymsp);
    void __Vconfigure(Vtb_top_verilator__Syms* symsp, bool first);
    static void __Vdpiexp_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__read_byte_TOP(Vtb_top_verilator__Syms* __restrict vlSymsp, IData/*21:0*/ byte_addr, IData/*31:0*/ (&read_byte__Vfuncrtn));
    static void __Vdpiexp_tb_top_verilator__DOT__cv32e40p_tb_wrapper_i__DOT__ram_i__DOT__dp_ram_i__DOT__write_byte_TOP(Vtb_top_verilator__Syms* __restrict vlSymsp, IData/*21:0*/ byte_addr, CData/*7:0*/ val, CData/*7:0*/ (&other));
  private:
    static QData _change_request(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vtb_top_verilator__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__14(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _combo__TOP__7(Vtb_top_verilator__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vtb_top_verilator__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__6(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _multiclk__TOP__13(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__10(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__11(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__12(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__3(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__4(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__5(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _sequent__TOP__8(Vtb_top_verilator__Syms* __restrict vlSymsp);
    static void _settle__TOP__1(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__2(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _settle__TOP__9(Vtb_top_verilator__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static int read_byte(const svLogicVecVal* byte_addr);
  private:
    static void traceChgSub0(void* userp, VerilatedVcd* tracep);
    static void traceChgTop0(void* userp, VerilatedVcd* tracep);
    static void traceCleanup(void* userp, VerilatedVcd* /*unused*/);
    static void traceFullSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullTop0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitTop(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    void traceRegister(VerilatedVcd* tracep) VL_ATTR_COLD;
  public:
    static void write_byte(const svLogicVecVal* byte_addr, const svLogicVecVal* val, svLogicVecVal* other);
  private:
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
