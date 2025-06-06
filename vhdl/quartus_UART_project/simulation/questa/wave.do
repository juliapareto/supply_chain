onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/CLOCK_50
add wave -noupdate /testbench/s_reset
add wave -noupdate /testbench/s_RX_PIN
add wave -noupdate -divider {Memo_Control Signals}
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/i_RX_DV
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/i_RX_Byte
add wave -noupdate -color Blue -radix hexadecimal /testbench/U1/Memo_Control_inst/o_LEDS_Byte
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/r_State
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/r_Mem
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/r_Recv_Index
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/r_Send_Index
add wave -noupdate -color Blue /testbench/U1/Memo_Control_inst/r_Counter
add wave -noupdate /testbench/CLOCK_50
add wave -noupdate /testbench/s_reset
add wave -noupdate /testbench/s_RX_PIN
add wave -noupdate -radix hexadecimal /testbench/U1/UART_RX_inst/r_RX_Byte
add wave -noupdate /testbench/U1/UART_RX_inst/r_RX_DV
add wave -noupdate /testbench/U1/UART_RX_inst/r_SM_Main
add wave -noupdate -radix decimal /testbench/U1/UART_RX_inst/r_Clk_Count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {989530 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 266
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {989452 ns} {989609 ns}
