onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group if_stage_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/if_stage_i/instr_req_o
add wave -noupdate -expand -group if_stage_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/if_stage_i/instr_addr_o
add wave -noupdate -expand -group if_stage_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/if_stage_i/instr_rdata_i
add wave -noupdate -expand -group if_stage_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/if_stage_i/instr_rvalid_i
add wave -noupdate -expand -group if_stage_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/if_stage_i/instr_gnt_i
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_req_o
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_addr_o
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_we_o
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_be_o
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_wdata_o
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_rdata_i
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_rvalid_i
add wave -noupdate -expand -group load_store_unit_i /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/load_store_unit_i/data_gnt_i
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/clk
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/req
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/addr
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/we
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/wdata
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/be
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/rvalid
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_data_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_data_if} /uvmt_cv32e40p_tb/obi_memory_data_if/rdata
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/clk
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/req
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/addr
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/we
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/wdata
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/be
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/rvalid
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/rready
add wave -noupdate -expand -label vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if/Group1 -group {Region: vsim:/uvmt_cv32e40p_tb/obi_memory_instr_if} /uvmt_cv32e40p_tb/obi_memory_instr_if/rdata
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/debug_add_decode
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/debug_add_decode
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/alu_operator_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/alu_op_c_mux_sel_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/regfile_alu_we
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/regc_used_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/alu_op_b_mux_sel_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/regc_mux_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/instr_rdata_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {283391 ps} 0} {{Cursor 2} {254000 ps} 1} {{Cursor 3} {257000 ps} 1}
quietly wave cursor active 1
configure wave -namecolwidth 318
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {227807 ps} {640639 ps}
