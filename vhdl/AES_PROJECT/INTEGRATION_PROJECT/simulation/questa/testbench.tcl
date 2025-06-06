# stop any simulation that is currently running
quit -sim

# compile the VHDL source code in the parent folder
vcom +acc ../../add_round_key.vhd
vcom +acc ../../controller.vhd
vcom +acc ../../reg.vhd
vcom +acc ../../key_schedule.vhd
vcom +acc ../../mix_columns.vhd
vcom +acc ../../shift_rwos.vhd
vcom +acc ../../sub_byte.vhd


# compile the VHDL code of the testbench
vcom +acc ../../enc_tb.vhd

# start the Simulator, including some libraries that may be needed
vsim +acc work.test_enc -Lf 220model -Lf altera_mf
# show waveforms specified in wave.do
#do wave.do

add wave -position end  sim:/test_enc/clk
add wave -position end  sim:/test_enc/rst
add wave -position end  sim:/test_enc/plaintext
add wave -position end  sim:/test_enc/key
add wave -position end  sim:/test_enc/done
add wave -position end  sim:/test_enc/ciphertext



# advance the simulation the desired amount of time (10s)
run 700 ms 