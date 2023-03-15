onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/extract_is_signed
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/id_stage_i/decoder_i/alu_operator_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/operator_i
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/result_o
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bextins_result
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bmask
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/shift_result
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bextins_and
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bmask_inv
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bmask_first
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bmask_b_i
add wave -noupdate /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bmask_a_i
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/result_o
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/bitop_result
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/ff_no_one
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/fl1_result
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/ff_input
add wave -noupdate -expand -group {New Group} /uvmt_cv32e40p_tb/dut_wrap/cv32e40p_wrapper_i/core_i/ex_stage_i/alu_i/operand_a_rev
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {243300 ps} 1} {{Cursor 2} {229808 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
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
WaveRestoreZoom {217491 ps} {298249 ps}
