# stop any simulation that is currently running
quit -sim

# compile the VHDL source code in the parent folder
vcom +acc ../../Memo_Control_Ard.vhd
vcom +acc ../../UART_MEMO_Top_ARDUINO_SEND.vhd
# compile the VHDL code of the testbench
vcom +acc *.vht
# start the Simulator, including some libraries that may be needed
vsim +acc work.testbench -Lf 220model -Lf altera_mf
# show waveforms specified in wave.do
#do wave.do



# Group for Memo_Control signals
#add wave -divider "Memo_Control Signals"
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/i_RX_DV
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/i_RX_Byte
#add wave -color Blue -position end -radix hexadecimal -color Blue sim:/testbench/U1/Memo_Control_inst/o_LEDS_Byte
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/r_State
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/r_Mem
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/r_Recv_Index
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/r_Send_Index
#add wave -color Blue -position end  sim:/testbench/U1/Memo_Control_inst/r_Counter

# FOR TX

add wave -divider "TX SIGNALS"

add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/i_TX_DV
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/i_TX_Byte
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/o_TX_Active
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/o_TX_Serial
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/o_TX_Done
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/r_SM_Main
add wave -color Blue -position end  -radix decimal sim:/testbench/U1/UART_TX_inst/r_Clk_Count
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/r_Bit_Index
add wave -color Blue -position end  sim:/testbench/U1/UART_TX_inst/r_TX_Done

# FOR TESTBENCH SIGNALS
add wave -divider "TESTBENCH SIGNALS"

add wave -position end  sim:/testbench/CLOCK_50
add wave -position end  sim:/testbench/s_reset
add wave -position end  sim:/testbench/s_RX_PIN
add wave -position end  -radix hexadecimal sim:/testbench/U1/UART_RX_inst/r_RX_Byte
add wave -position end  sim:/testbench/U1/UART_RX_inst/r_RX_DV
add wave -position end  sim:/testbench/U1/UART_RX_inst/r_SM_Main
add wave -position end  -radix decimal sim:/testbench/U1/UART_RX_inst/r_Clk_Count


# FOR MEMO BLOCK
add wave -divider "MEMO CONTROL SIGN"

add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/i_RX_DV
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/i_RX_Byte
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/i_TX_Active
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/i_TX_Done
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/o_TX_DV
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/o_TX_Byte
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/o_LEDS_Byte
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/r_State
add wave -color Yellow -position end  -radix decimal sim:/testbench/U1/Memo_Control_inst/r_Show_Index
add wave -color Yellow -position end  -radix decimal sim:/testbench/U1/Memo_Control_inst/r_Send_Index
add wave -color Yellow -position end  -radix decimal sim:/testbench/U1/Memo_Control_inst/r_Counter
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/r_TX_DV
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/r_Waiting_For_Next_Byte
add wave -color Yellow -position end  sim:/testbench/U1/Memo_Control_inst/r_Waiting_1s


# advance the simulation the desired amount of time (10s)
run 100 ms 