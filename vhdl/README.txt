DESCRIPTION OF THE DIFFERENT CODES:

SWITCHES_LEDS: ----------------------------------

Contains a Quartus project for when the really basic test was performed. To check how constraints files worked, display on LEDs, etc.

DE10Lite.qsf : ----------------------------------

Master constraints file for the used FPGA development kit

quartus_UART_project: ----------------------------------

Contains a Quartus Project with the successful physical implementation of the UART communication with the memory module. The final successful test uses "UART_MEMO_Top_ARDUINO_LOOP" as top module.

ARDUINO: ----------------------------------

This folder contains the Arduino code to be used for the previously mentioned UART test.

AES_PROJECT: ----------------------------------

Contains everythin related to the simulation of the encryption. 
The Master folder contains the source code, obtained from "https://github.com/hadipourh/AES-VHDL/blob/master/README.md"
And the INTEGRATION folder contains the code used for simulation with questa ("simulation" folder, "testbench.tcl").

