-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "05/28/2025 16:27:52"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART_MEMO_Top_ARDUINO_LOOP IS
    PORT (
	i_Clk : IN std_logic;
	reset : IN std_logic;
	i_RX_Serial : IN std_logic;
	o_TX_Serial : OUT std_logic;
	o_LED_0 : OUT std_logic;
	o_LED_1 : OUT std_logic;
	o_LED_2 : OUT std_logic;
	o_LED_3 : OUT std_logic;
	o_LED_4 : OUT std_logic;
	o_LED_5 : OUT std_logic;
	o_LED_6 : OUT std_logic;
	o_LED_7 : OUT std_logic
	);
END UART_MEMO_Top_ARDUINO_LOOP;

-- Design Ports Information
-- o_TX_Serial	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_0	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_1	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_2	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_3	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_4	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_5	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_6	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- o_LED_7	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- i_Clk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- i_RX_Serial	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF UART_MEMO_Top_ARDUINO_LOOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_i_RX_Serial : std_logic;
SIGNAL ww_o_TX_Serial : std_logic;
SIGNAL ww_o_LED_0 : std_logic;
SIGNAL ww_o_LED_1 : std_logic;
SIGNAL ww_o_LED_2 : std_logic;
SIGNAL ww_o_LED_3 : std_logic;
SIGNAL ww_o_LED_4 : std_logic;
SIGNAL ww_o_LED_5 : std_logic;
SIGNAL ww_o_LED_6 : std_logic;
SIGNAL ww_o_LED_7 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_TX_Serial~output_o\ : std_logic;
SIGNAL \o_LED_0~output_o\ : std_logic;
SIGNAL \o_LED_1~output_o\ : std_logic;
SIGNAL \o_LED_2~output_o\ : std_logic;
SIGNAL \o_LED_3~output_o\ : std_logic;
SIGNAL \o_LED_4~output_o\ : std_logic;
SIGNAL \o_LED_5~output_o\ : std_logic;
SIGNAL \o_LED_6~output_o\ : std_logic;
SIGNAL \o_LED_7~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[0]~28_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \i_RX_Serial~input_o\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Data_R~q\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Data~q\ : std_logic;
SIGNAL \UART_RX_inst|Equal0~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|Equal0~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|Equal0~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Equal0~3_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[0]~41_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[11]~35_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[11]~36\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[12]~37_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector16~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector16~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector15~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector15~3_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector14~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector14~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector14~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector19~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector19~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Selector19~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ : std_logic;
SIGNAL \UART_RX_inst|Selector0~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[0]~39_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[0]~40_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \UART_RX_inst|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \UART_RX_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main~7_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \UART_RX_inst|Selector17~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \UART_RX_inst|Selector18~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\ : std_logic;
SIGNAL \UART_RX_inst|Selector0~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_DV~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Recv_Index[3]~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Recv_Index[0]~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Recv_Index[1]~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Recv_Index[2]~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter~27_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector0~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|o_TX_Active~q\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector2~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[0]~13_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[1]~35_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[0]~14\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[1]~15_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[1]~16\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[2]~17_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[2]~18\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[3]~19_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[3]~20\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[4]~21_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[4]~22\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[5]~23_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[5]~24\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[6]~25_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[6]~26\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[7]~27_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[7]~28\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[8]~29_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[8]~30\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[9]~31_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[9]~32\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[10]~33_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[10]~34\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[11]~36_combout\ : std_logic;
SIGNAL \UART_TX_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[11]~37\ : std_logic;
SIGNAL \UART_TX_inst|r_Clk_Count[12]~38_combout\ : std_logic;
SIGNAL \UART_TX_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_TX_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector2~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_TX_Done~q\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector41~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal3~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[23]~78\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[24]~79_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[3]~75_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[3]~76_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[24]~80\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[25]~81_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[25]~82\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[26]~83_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal3~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal3~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal3~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Send_Index[1]~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector40~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Add3~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector39~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector38~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector35~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_State.RECEIVING~q\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~7_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~6_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~8_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~9_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[3]~74_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[0]~29\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[1]~30_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[1]~31\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[2]~32_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[2]~33\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[3]~34_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[3]~35\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[4]~36_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[4]~37\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[5]~38_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[5]~39\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[6]~40_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[6]~41\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[7]~42_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[7]~43\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[8]~44_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[8]~45\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[9]~46_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[9]~47\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[10]~48_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[10]~49\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[11]~50_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[11]~51\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[12]~52_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[12]~53\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[13]~54_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[13]~55\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[14]~56_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[14]~57\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[15]~58_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[15]~59\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[16]~60_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[16]~61\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[17]~62_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[17]~63\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[18]~64_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[18]~65\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[19]~66_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[19]~67\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[20]~68_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[20]~69\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[21]~70_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[21]~71\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[22]~72_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[22]~73\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter[23]~77_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Equal1~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Show_Index[0]~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector36~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_State.SHOWING_LEDS~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Show_Index[3]~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Show_Index[1]~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Show_Index[2]~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector37~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_State.SENDING_TX~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Waiting_For_Next_Byte~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Waiting_For_Next_Byte~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Waiting_For_Next_Byte~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_TX_DV~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_TX_DV~q\ : std_logic;
SIGNAL \UART_TX_inst|Selector20~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \UART_TX_inst|Selector18~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector18~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector17~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector17~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector21~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main~7_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \UART_TX_inst|Selector19~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \UART_TX_inst|Selector16~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector16~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[2]~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][2]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux13~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux13~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][2]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux13~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux13~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux13~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_TX_Byte[7]~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_TX_Data[2]~feeder_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector20~0_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[3]~3_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[3]~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][3]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux12~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux12~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][3]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][3]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux12~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][3]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][3]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux12~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux12~4_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[1]~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux14~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux14~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][1]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][1]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux14~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][1]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][1]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux14~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux14~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_TX_Data[1]~feeder_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[0]~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][0]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][0]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][0]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux15~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux15~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][0]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][0]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux15~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux15~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux15~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|Mux0~2_combout\ : std_logic;
SIGNAL \UART_TX_inst|Mux0~3_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector1~1_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[6]~7_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux9~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux9~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][6]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux9~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux9~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux9~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_TX_Data[6]~feeder_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[7]~8_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[7]~9_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux8~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux8~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][7]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][7]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][7]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux8~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux8~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux8~4_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[5]~6_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][5]~feeder_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux10~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux10~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][5]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux10~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux10~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux10~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|r_TX_Data[5]~feeder_combout\ : std_logic;
SIGNAL \UART_RX_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \UART_RX_inst|r_RX_Byte[4]~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[2][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[0][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux11~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[3][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[1][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux11~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[6][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[7][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[5][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|r_Mem[4][4]~q\ : std_logic;
SIGNAL \Memo_Control_inst|Mux11~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux11~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Mux11~4_combout\ : std_logic;
SIGNAL \UART_TX_inst|Mux0~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Mux0~1_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector1~0_combout\ : std_logic;
SIGNAL \UART_TX_inst|Selector1~2_combout\ : std_logic;
SIGNAL \UART_TX_inst|o_TX_Serial~q\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector7~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte[3]~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector7~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector7~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector7~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~6_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector6~7_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~8_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~9_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~10_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~11_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector5~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector5~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector5~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~3_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~4_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector4~5_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~14_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~15_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~12_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~13_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector3~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector3~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector3~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~18_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~19_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~16_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~17_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector2~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector2~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector2~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~22_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~23_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~20_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~21_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector1~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector1~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector1~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~26_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~27_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~24_combout\ : std_logic;
SIGNAL \Memo_Control_inst|o_LEDS_Byte~25_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector0~0_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector0~1_combout\ : std_logic;
SIGNAL \Memo_Control_inst|Selector0~2_combout\ : std_logic;
SIGNAL \Memo_Control_inst|r_Counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Memo_Control_inst|r_Show_Index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_TX_inst|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Memo_Control_inst|o_LEDS_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_RX_inst|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \UART_TX_inst|r_TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memo_Control_inst|r_Send_Index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_TX_inst|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Memo_Control_inst|o_TX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memo_Control_inst|r_Recv_Index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_RX_inst|r_RX_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_RX_inst|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_reset <= reset;
ww_i_RX_Serial <= i_RX_Serial;
o_TX_Serial <= ww_o_TX_Serial;
o_LED_0 <= ww_o_LED_0;
o_LED_1 <= ww_o_LED_1;
o_LED_2 <= ww_o_LED_2;
o_LED_3 <= ww_o_LED_3;
o_LED_4 <= ww_o_LED_4;
o_LED_5 <= ww_o_LED_5;
o_LED_6 <= ww_o_LED_6;
o_LED_7 <= ww_o_LED_7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);
\UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\ <= NOT \UART_TX_inst|r_SM_Main.s_Cleanup~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N30
\o_TX_Serial~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX_inst|o_TX_Serial~q\,
	devoe => ww_devoe,
	o => \o_TX_Serial~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\o_LED_0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(0),
	devoe => ww_devoe,
	o => \o_LED_0~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\o_LED_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(1),
	devoe => ww_devoe,
	o => \o_LED_1~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\o_LED_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(2),
	devoe => ww_devoe,
	o => \o_LED_2~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\o_LED_3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(3),
	devoe => ww_devoe,
	o => \o_LED_3~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\o_LED_4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(4),
	devoe => ww_devoe,
	o => \o_LED_4~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\o_LED_5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(5),
	devoe => ww_devoe,
	o => \o_LED_5~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\o_LED_6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(6),
	devoe => ww_devoe,
	o => \o_LED_6~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\o_LED_7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memo_Control_inst|o_LEDS_Byte\(7),
	devoe => ww_devoe,
	o => \o_LED_7~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\i_Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G9
\i_Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y51_N6
\Memo_Control_inst|r_Counter[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[0]~28_combout\ = \Memo_Control_inst|r_Counter\(0) $ (VCC)
-- \Memo_Control_inst|r_Counter[0]~29\ = CARRY(\Memo_Control_inst|r_Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(0),
	datad => VCC,
	combout => \Memo_Control_inst|r_Counter[0]~28_combout\,
	cout => \Memo_Control_inst|r_Counter[0]~29\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X49_Y41_N2
\UART_RX_inst|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[0]~13_combout\ = \UART_RX_inst|r_Clk_Count\(0) $ (VCC)
-- \UART_RX_inst|r_Clk_Count[0]~14\ = CARRY(\UART_RX_inst|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(0),
	datad => VCC,
	combout => \UART_RX_inst|r_Clk_Count[0]~13_combout\,
	cout => \UART_RX_inst|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X49_Y41_N20
\UART_RX_inst|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[9]~31_combout\ = (\UART_RX_inst|r_Clk_Count\(9) & (!\UART_RX_inst|r_Clk_Count[8]~30\)) # (!\UART_RX_inst|r_Clk_Count\(9) & ((\UART_RX_inst|r_Clk_Count[8]~30\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[9]~32\ = CARRY((!\UART_RX_inst|r_Clk_Count[8]~30\) # (!\UART_RX_inst|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(9),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[8]~30\,
	combout => \UART_RX_inst|r_Clk_Count[9]~31_combout\,
	cout => \UART_RX_inst|r_Clk_Count[9]~32\);

-- Location: LCCOMB_X49_Y41_N22
\UART_RX_inst|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[10]~33_combout\ = (\UART_RX_inst|r_Clk_Count\(10) & (\UART_RX_inst|r_Clk_Count[9]~32\ $ (GND))) # (!\UART_RX_inst|r_Clk_Count\(10) & (!\UART_RX_inst|r_Clk_Count[9]~32\ & VCC))
-- \UART_RX_inst|r_Clk_Count[10]~34\ = CARRY((\UART_RX_inst|r_Clk_Count\(10) & !\UART_RX_inst|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(10),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[9]~32\,
	combout => \UART_RX_inst|r_Clk_Count[10]~33_combout\,
	cout => \UART_RX_inst|r_Clk_Count[10]~34\);

-- Location: IOIBUF_X31_Y0_N22
\i_RX_Serial~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX_Serial,
	o => \i_RX_Serial~input_o\);

-- Location: FF_X50_Y41_N3
\UART_RX_inst|r_RX_Data_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \i_RX_Serial~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Data_R~q\);

-- Location: FF_X50_Y41_N19
\UART_RX_inst|r_RX_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Data~q\);

-- Location: LCCOMB_X50_Y41_N16
\UART_RX_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Equal0~2_combout\ = (!\UART_RX_inst|r_Clk_Count\(6) & (!\UART_RX_inst|r_Clk_Count\(10) & (\UART_RX_inst|r_Clk_Count\(9) & \UART_RX_inst|r_Clk_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(6),
	datab => \UART_RX_inst|r_Clk_Count\(10),
	datac => \UART_RX_inst|r_Clk_Count\(9),
	datad => \UART_RX_inst|r_Clk_Count\(11),
	combout => \UART_RX_inst|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y41_N14
\UART_RX_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Equal0~0_combout\ = (\UART_RX_inst|r_Clk_Count\(0) & (\UART_RX_inst|r_Clk_Count\(1) & (!\UART_RX_inst|r_Clk_Count\(7) & !\UART_RX_inst|r_Clk_Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(0),
	datab => \UART_RX_inst|r_Clk_Count\(1),
	datac => \UART_RX_inst|r_Clk_Count\(7),
	datad => \UART_RX_inst|r_Clk_Count\(8),
	combout => \UART_RX_inst|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y41_N10
\UART_RX_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Equal0~1_combout\ = (\UART_RX_inst|r_Clk_Count\(3) & (!\UART_RX_inst|r_Clk_Count\(2) & (!\UART_RX_inst|r_Clk_Count\(4) & \UART_RX_inst|r_Clk_Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(3),
	datab => \UART_RX_inst|r_Clk_Count\(2),
	datac => \UART_RX_inst|r_Clk_Count\(4),
	datad => \UART_RX_inst|r_Clk_Count\(5),
	combout => \UART_RX_inst|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y41_N28
\UART_RX_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Equal0~3_combout\ = (!\UART_RX_inst|r_Clk_Count\(12) & (\UART_RX_inst|Equal0~2_combout\ & (\UART_RX_inst|Equal0~0_combout\ & \UART_RX_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(12),
	datab => \UART_RX_inst|Equal0~2_combout\,
	datac => \UART_RX_inst|Equal0~0_combout\,
	datad => \UART_RX_inst|Equal0~1_combout\,
	combout => \UART_RX_inst|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y41_N26
\UART_RX_inst|r_Clk_Count[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[0]~41_combout\ = (!\UART_RX_inst|r_SM_Main.s_Cleanup~q\ & (((!\UART_RX_inst|Equal0~3_combout\) # (!\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\)) # (!\UART_RX_inst|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_Cleanup~q\,
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \UART_RX_inst|Equal0~3_combout\,
	combout => \UART_RX_inst|r_Clk_Count[0]~41_combout\);

-- Location: FF_X49_Y41_N23
\UART_RX_inst|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[10]~33_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(10));

-- Location: LCCOMB_X49_Y41_N24
\UART_RX_inst|r_Clk_Count[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[11]~35_combout\ = (\UART_RX_inst|r_Clk_Count\(11) & (!\UART_RX_inst|r_Clk_Count[10]~34\)) # (!\UART_RX_inst|r_Clk_Count\(11) & ((\UART_RX_inst|r_Clk_Count[10]~34\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[11]~36\ = CARRY((!\UART_RX_inst|r_Clk_Count[10]~34\) # (!\UART_RX_inst|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(11),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[10]~34\,
	combout => \UART_RX_inst|r_Clk_Count[11]~35_combout\,
	cout => \UART_RX_inst|r_Clk_Count[11]~36\);

-- Location: FF_X49_Y41_N25
\UART_RX_inst|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[11]~35_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(11));

-- Location: LCCOMB_X49_Y41_N26
\UART_RX_inst|r_Clk_Count[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[12]~37_combout\ = \UART_RX_inst|r_Clk_Count\(12) $ (!\UART_RX_inst|r_Clk_Count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(12),
	cin => \UART_RX_inst|r_Clk_Count[11]~36\,
	combout => \UART_RX_inst|r_Clk_Count[12]~37_combout\);

-- Location: FF_X49_Y41_N27
\UART_RX_inst|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[12]~37_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(12));

-- Location: LCCOMB_X49_Y41_N28
\UART_RX_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~0_combout\ = (!\UART_RX_inst|r_Clk_Count\(3) & (((!\UART_RX_inst|r_Clk_Count\(0)) # (!\UART_RX_inst|r_Clk_Count\(1))) # (!\UART_RX_inst|r_Clk_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(2),
	datab => \UART_RX_inst|r_Clk_Count\(1),
	datac => \UART_RX_inst|r_Clk_Count\(3),
	datad => \UART_RX_inst|r_Clk_Count\(0),
	combout => \UART_RX_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y41_N0
\UART_RX_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~1_combout\ = ((!\UART_RX_inst|r_Clk_Count\(5) & ((\UART_RX_inst|LessThan1~0_combout\) # (!\UART_RX_inst|r_Clk_Count\(4))))) # (!\UART_RX_inst|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(5),
	datab => \UART_RX_inst|r_Clk_Count\(4),
	datac => \UART_RX_inst|r_Clk_Count\(6),
	datad => \UART_RX_inst|LessThan1~0_combout\,
	combout => \UART_RX_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y41_N24
\UART_RX_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~3_combout\ = (\UART_RX_inst|r_Clk_Count\(11) & (((\UART_RX_inst|LessThan1~2_combout\ & \UART_RX_inst|LessThan1~1_combout\)))) # (!\UART_RX_inst|r_Clk_Count\(11) & (((\UART_RX_inst|LessThan1~2_combout\ & 
-- \UART_RX_inst|LessThan1~1_combout\)) # (!\UART_RX_inst|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(11),
	datab => \UART_RX_inst|r_Clk_Count\(10),
	datac => \UART_RX_inst|LessThan1~2_combout\,
	datad => \UART_RX_inst|LessThan1~1_combout\,
	combout => \UART_RX_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X51_Y41_N10
\UART_RX_inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector16~0_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\UART_RX_inst|r_Clk_Count\(12))) # (!\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & ((\UART_RX_inst|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \UART_RX_inst|r_Clk_Count\(12),
	datad => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	combout => \UART_RX_inst|Selector16~0_combout\);

-- Location: LCCOMB_X51_Y41_N2
\UART_RX_inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector16~1_combout\ = (\UART_RX_inst|Selector16~0_combout\ & (\UART_RX_inst|r_Bit_Index\(0) $ (((!\UART_RX_inst|LessThan1~3_combout\ & \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\))))) # (!\UART_RX_inst|Selector16~0_combout\ & 
-- (((\UART_RX_inst|r_Bit_Index\(0) & \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|Selector16~0_combout\,
	datab => \UART_RX_inst|LessThan1~3_combout\,
	datac => \UART_RX_inst|r_Bit_Index\(0),
	datad => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	combout => \UART_RX_inst|Selector16~1_combout\);

-- Location: FF_X51_Y41_N3
\UART_RX_inst|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Bit_Index\(0));

-- Location: LCCOMB_X51_Y41_N28
\UART_RX_inst|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector15~2_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\UART_RX_inst|r_Bit_Index\(1) $ (((\UART_RX_inst|LessThan1~5_combout\ & \UART_RX_inst|r_Bit_Index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|LessThan1~5_combout\,
	datad => \UART_RX_inst|r_Bit_Index\(0),
	combout => \UART_RX_inst|Selector15~2_combout\);

-- Location: LCCOMB_X51_Y41_N16
\UART_RX_inst|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector15~3_combout\ = (\UART_RX_inst|Selector15~2_combout\) # ((!\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\UART_RX_inst|r_SM_Main.s_Idle~q\ & \UART_RX_inst|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	datac => \UART_RX_inst|r_Bit_Index\(1),
	datad => \UART_RX_inst|Selector15~2_combout\,
	combout => \UART_RX_inst|Selector15~3_combout\);

-- Location: FF_X51_Y41_N17
\UART_RX_inst|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Bit_Index\(1));

-- Location: LCCOMB_X51_Y41_N12
\UART_RX_inst|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector14~1_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (((!\UART_RX_inst|r_Bit_Index\(0)) # (!\UART_RX_inst|LessThan1~5_combout\)))) # (!\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\UART_RX_inst|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	datac => \UART_RX_inst|LessThan1~5_combout\,
	datad => \UART_RX_inst|r_Bit_Index\(0),
	combout => \UART_RX_inst|Selector14~1_combout\);

-- Location: LCCOMB_X51_Y41_N8
\UART_RX_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~0_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (\UART_RX_inst|r_Clk_Count\(12) & !\UART_RX_inst|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datac => \UART_RX_inst|r_Clk_Count\(12),
	datad => \UART_RX_inst|LessThan1~3_combout\,
	combout => \UART_RX_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X51_Y41_N18
\UART_RX_inst|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector14~0_combout\ = (\UART_RX_inst|Decoder0~0_combout\ & (\UART_RX_inst|r_Bit_Index\(0) & (\UART_RX_inst|r_Bit_Index\(2) $ (\UART_RX_inst|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(2),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|Decoder0~0_combout\,
	datad => \UART_RX_inst|r_Bit_Index\(0),
	combout => \UART_RX_inst|Selector14~0_combout\);

-- Location: LCCOMB_X51_Y41_N22
\UART_RX_inst|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector14~2_combout\ = (\UART_RX_inst|Selector14~0_combout\) # ((\UART_RX_inst|Selector14~1_combout\ & \UART_RX_inst|r_Bit_Index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|Selector14~1_combout\,
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Selector14~0_combout\,
	combout => \UART_RX_inst|Selector14~2_combout\);

-- Location: FF_X51_Y41_N23
\UART_RX_inst|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Bit_Index\(2));

-- Location: LCCOMB_X51_Y41_N20
\UART_RX_inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector19~0_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & (((!\UART_RX_inst|r_Bit_Index\(0)) # (!\UART_RX_inst|r_Bit_Index\(2))) # (!\UART_RX_inst|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|r_Bit_Index\(0),
	combout => \UART_RX_inst|Selector19~0_combout\);

-- Location: LCCOMB_X50_Y41_N20
\UART_RX_inst|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector19~1_combout\ = (\UART_RX_inst|Selector19~0_combout\) # ((!\UART_RX_inst|r_RX_Data~q\ & (\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\ & \UART_RX_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|Selector19~0_combout\,
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \UART_RX_inst|Equal0~3_combout\,
	combout => \UART_RX_inst|Selector19~1_combout\);

-- Location: LCCOMB_X50_Y41_N12
\UART_RX_inst|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector19~2_combout\ = (\UART_RX_inst|Selector19~1_combout\) # ((\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & ((\UART_RX_inst|LessThan1~3_combout\) # (!\UART_RX_inst|r_Clk_Count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(12),
	datab => \UART_RX_inst|LessThan1~3_combout\,
	datac => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \UART_RX_inst|Selector19~1_combout\,
	combout => \UART_RX_inst|Selector19~2_combout\);

-- Location: FF_X50_Y41_N13
\UART_RX_inst|r_SM_Main.s_RX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\);

-- Location: LCCOMB_X50_Y41_N18
\UART_RX_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector0~0_combout\ = (!\UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\ & !\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Data_Bits~q\,
	datad => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	combout => \UART_RX_inst|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y41_N8
\UART_RX_inst|r_Clk_Count[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[0]~39_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\ & \UART_RX_inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \UART_RX_inst|Equal0~3_combout\,
	combout => \UART_RX_inst|r_Clk_Count[0]~39_combout\);

-- Location: LCCOMB_X49_Y41_N30
\UART_RX_inst|r_Clk_Count[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[0]~40_combout\ = ((\UART_RX_inst|r_Clk_Count[0]~39_combout\) # ((!\UART_RX_inst|Selector0~0_combout\ & \UART_RX_inst|LessThan1~5_combout\))) # (!\UART_RX_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	datab => \UART_RX_inst|Selector0~0_combout\,
	datac => \UART_RX_inst|r_Clk_Count[0]~39_combout\,
	datad => \UART_RX_inst|LessThan1~5_combout\,
	combout => \UART_RX_inst|r_Clk_Count[0]~40_combout\);

-- Location: FF_X49_Y41_N3
\UART_RX_inst|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[0]~13_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(0));

-- Location: LCCOMB_X49_Y41_N4
\UART_RX_inst|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[1]~15_combout\ = (\UART_RX_inst|r_Clk_Count\(1) & (!\UART_RX_inst|r_Clk_Count[0]~14\)) # (!\UART_RX_inst|r_Clk_Count\(1) & ((\UART_RX_inst|r_Clk_Count[0]~14\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[1]~16\ = CARRY((!\UART_RX_inst|r_Clk_Count[0]~14\) # (!\UART_RX_inst|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(1),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[0]~14\,
	combout => \UART_RX_inst|r_Clk_Count[1]~15_combout\,
	cout => \UART_RX_inst|r_Clk_Count[1]~16\);

-- Location: FF_X49_Y41_N5
\UART_RX_inst|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[1]~15_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(1));

-- Location: LCCOMB_X49_Y41_N6
\UART_RX_inst|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[2]~17_combout\ = (\UART_RX_inst|r_Clk_Count\(2) & (\UART_RX_inst|r_Clk_Count[1]~16\ $ (GND))) # (!\UART_RX_inst|r_Clk_Count\(2) & (!\UART_RX_inst|r_Clk_Count[1]~16\ & VCC))
-- \UART_RX_inst|r_Clk_Count[2]~18\ = CARRY((\UART_RX_inst|r_Clk_Count\(2) & !\UART_RX_inst|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(2),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[1]~16\,
	combout => \UART_RX_inst|r_Clk_Count[2]~17_combout\,
	cout => \UART_RX_inst|r_Clk_Count[2]~18\);

-- Location: FF_X49_Y41_N7
\UART_RX_inst|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[2]~17_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(2));

-- Location: LCCOMB_X49_Y41_N8
\UART_RX_inst|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[3]~19_combout\ = (\UART_RX_inst|r_Clk_Count\(3) & (!\UART_RX_inst|r_Clk_Count[2]~18\)) # (!\UART_RX_inst|r_Clk_Count\(3) & ((\UART_RX_inst|r_Clk_Count[2]~18\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[3]~20\ = CARRY((!\UART_RX_inst|r_Clk_Count[2]~18\) # (!\UART_RX_inst|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(3),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[2]~18\,
	combout => \UART_RX_inst|r_Clk_Count[3]~19_combout\,
	cout => \UART_RX_inst|r_Clk_Count[3]~20\);

-- Location: FF_X49_Y41_N9
\UART_RX_inst|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[3]~19_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(3));

-- Location: LCCOMB_X49_Y41_N10
\UART_RX_inst|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[4]~21_combout\ = (\UART_RX_inst|r_Clk_Count\(4) & (\UART_RX_inst|r_Clk_Count[3]~20\ $ (GND))) # (!\UART_RX_inst|r_Clk_Count\(4) & (!\UART_RX_inst|r_Clk_Count[3]~20\ & VCC))
-- \UART_RX_inst|r_Clk_Count[4]~22\ = CARRY((\UART_RX_inst|r_Clk_Count\(4) & !\UART_RX_inst|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(4),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[3]~20\,
	combout => \UART_RX_inst|r_Clk_Count[4]~21_combout\,
	cout => \UART_RX_inst|r_Clk_Count[4]~22\);

-- Location: FF_X49_Y41_N11
\UART_RX_inst|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[4]~21_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(4));

-- Location: LCCOMB_X49_Y41_N12
\UART_RX_inst|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[5]~23_combout\ = (\UART_RX_inst|r_Clk_Count\(5) & (!\UART_RX_inst|r_Clk_Count[4]~22\)) # (!\UART_RX_inst|r_Clk_Count\(5) & ((\UART_RX_inst|r_Clk_Count[4]~22\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[5]~24\ = CARRY((!\UART_RX_inst|r_Clk_Count[4]~22\) # (!\UART_RX_inst|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(5),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[4]~22\,
	combout => \UART_RX_inst|r_Clk_Count[5]~23_combout\,
	cout => \UART_RX_inst|r_Clk_Count[5]~24\);

-- Location: FF_X49_Y41_N13
\UART_RX_inst|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[5]~23_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(5));

-- Location: LCCOMB_X49_Y41_N14
\UART_RX_inst|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[6]~25_combout\ = (\UART_RX_inst|r_Clk_Count\(6) & (\UART_RX_inst|r_Clk_Count[5]~24\ $ (GND))) # (!\UART_RX_inst|r_Clk_Count\(6) & (!\UART_RX_inst|r_Clk_Count[5]~24\ & VCC))
-- \UART_RX_inst|r_Clk_Count[6]~26\ = CARRY((\UART_RX_inst|r_Clk_Count\(6) & !\UART_RX_inst|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(6),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[5]~24\,
	combout => \UART_RX_inst|r_Clk_Count[6]~25_combout\,
	cout => \UART_RX_inst|r_Clk_Count[6]~26\);

-- Location: FF_X49_Y41_N15
\UART_RX_inst|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[6]~25_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(6));

-- Location: LCCOMB_X49_Y41_N16
\UART_RX_inst|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[7]~27_combout\ = (\UART_RX_inst|r_Clk_Count\(7) & (!\UART_RX_inst|r_Clk_Count[6]~26\)) # (!\UART_RX_inst|r_Clk_Count\(7) & ((\UART_RX_inst|r_Clk_Count[6]~26\) # (GND)))
-- \UART_RX_inst|r_Clk_Count[7]~28\ = CARRY((!\UART_RX_inst|r_Clk_Count[6]~26\) # (!\UART_RX_inst|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(7),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[6]~26\,
	combout => \UART_RX_inst|r_Clk_Count[7]~27_combout\,
	cout => \UART_RX_inst|r_Clk_Count[7]~28\);

-- Location: FF_X49_Y41_N17
\UART_RX_inst|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[7]~27_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(7));

-- Location: LCCOMB_X49_Y41_N18
\UART_RX_inst|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_Clk_Count[8]~29_combout\ = (\UART_RX_inst|r_Clk_Count\(8) & (\UART_RX_inst|r_Clk_Count[7]~28\ $ (GND))) # (!\UART_RX_inst|r_Clk_Count\(8) & (!\UART_RX_inst|r_Clk_Count[7]~28\ & VCC))
-- \UART_RX_inst|r_Clk_Count[8]~30\ = CARRY((\UART_RX_inst|r_Clk_Count\(8) & !\UART_RX_inst|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(8),
	datad => VCC,
	cin => \UART_RX_inst|r_Clk_Count[7]~28\,
	combout => \UART_RX_inst|r_Clk_Count[8]~29_combout\,
	cout => \UART_RX_inst|r_Clk_Count[8]~30\);

-- Location: FF_X49_Y41_N19
\UART_RX_inst|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[8]~29_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(8));

-- Location: FF_X49_Y41_N21
\UART_RX_inst|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_Clk_Count[9]~31_combout\,
	sclr => \UART_RX_inst|r_Clk_Count[0]~40_combout\,
	ena => \UART_RX_inst|r_Clk_Count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_Clk_Count\(9));

-- Location: LCCOMB_X49_Y41_N0
\UART_RX_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~2_combout\ = (!\UART_RX_inst|r_Clk_Count\(9) & (!\UART_RX_inst|r_Clk_Count\(11) & (!\UART_RX_inst|r_Clk_Count\(8) & !\UART_RX_inst|r_Clk_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Clk_Count\(9),
	datab => \UART_RX_inst|r_Clk_Count\(11),
	datac => \UART_RX_inst|r_Clk_Count\(8),
	datad => \UART_RX_inst|r_Clk_Count\(7),
	combout => \UART_RX_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y41_N2
\UART_RX_inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~4_combout\ = (\UART_RX_inst|r_Clk_Count\(10)) # (\UART_RX_inst|r_Clk_Count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_Clk_Count\(10),
	datad => \UART_RX_inst|r_Clk_Count\(11),
	combout => \UART_RX_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X50_Y41_N6
\UART_RX_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|LessThan1~5_combout\ = (\UART_RX_inst|LessThan1~4_combout\ & (\UART_RX_inst|r_Clk_Count\(12) & ((!\UART_RX_inst|LessThan1~1_combout\) # (!\UART_RX_inst|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|LessThan1~2_combout\,
	datab => \UART_RX_inst|LessThan1~4_combout\,
	datac => \UART_RX_inst|r_Clk_Count\(12),
	datad => \UART_RX_inst|LessThan1~1_combout\,
	combout => \UART_RX_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X51_Y41_N6
\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\ = (\UART_RX_inst|r_Bit_Index\(2) & (\UART_RX_inst|r_Bit_Index\(1) & (\UART_RX_inst|Decoder0~0_combout\ & \UART_RX_inst|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(2),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|Decoder0~0_combout\,
	datad => \UART_RX_inst|r_Bit_Index\(0),
	combout => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X51_Y41_N4
\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~1_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\) # ((!\UART_RX_inst|LessThan1~5_combout\ & \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|LessThan1~5_combout\,
	datac => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	datad => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~0_combout\,
	combout => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~1_combout\);

-- Location: FF_X51_Y41_N5
\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\);

-- Location: LCCOMB_X50_Y41_N22
\UART_RX_inst|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_SM_Main~7_combout\ = (\UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\ & (\UART_RX_inst|r_Clk_Count\(12) & !\UART_RX_inst|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Stop_Bit~q\,
	datac => \UART_RX_inst|r_Clk_Count\(12),
	datad => \UART_RX_inst|LessThan1~3_combout\,
	combout => \UART_RX_inst|r_SM_Main~7_combout\);

-- Location: FF_X50_Y41_N23
\UART_RX_inst|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X50_Y41_N30
\UART_RX_inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector17~0_combout\ = (!\UART_RX_inst|r_SM_Main.s_Cleanup~q\ & (((!\UART_RX_inst|r_Clk_Count[0]~39_combout\ & \UART_RX_inst|r_SM_Main.s_Idle~q\)) # (!\UART_RX_inst|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_Cleanup~q\,
	datab => \UART_RX_inst|r_Clk_Count[0]~39_combout\,
	datac => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	datad => \UART_RX_inst|r_RX_Data~q\,
	combout => \UART_RX_inst|Selector17~0_combout\);

-- Location: FF_X50_Y41_N31
\UART_RX_inst|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X50_Y41_N4
\UART_RX_inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector18~0_combout\ = (\UART_RX_inst|r_SM_Main.s_Idle~q\ & (((\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\ & !\UART_RX_inst|Equal0~3_combout\)))) # (!\UART_RX_inst|r_SM_Main.s_Idle~q\ & (((\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\ & 
-- !\UART_RX_inst|Equal0~3_combout\)) # (!\UART_RX_inst|r_RX_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_Idle~q\,
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datad => \UART_RX_inst|Equal0~3_combout\,
	combout => \UART_RX_inst|Selector18~0_combout\);

-- Location: FF_X50_Y41_N5
\UART_RX_inst|r_SM_Main.s_RX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\);

-- Location: LCCOMB_X49_Y47_N18
\UART_RX_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Selector0~1_combout\ = (\UART_RX_inst|r_SM_Main~7_combout\) # ((\UART_RX_inst|r_RX_DV~q\ & ((\UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\) # (!\UART_RX_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_SM_Main.s_RX_Start_Bit~q\,
	datab => \UART_RX_inst|Selector0~0_combout\,
	datac => \UART_RX_inst|r_RX_DV~q\,
	datad => \UART_RX_inst|r_SM_Main~7_combout\,
	combout => \UART_RX_inst|Selector0~1_combout\);

-- Location: FF_X49_Y47_N19
\UART_RX_inst|r_RX_DV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_DV~q\);

-- Location: LCCOMB_X49_Y47_N26
\Memo_Control_inst|r_Recv_Index[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Recv_Index[3]~0_combout\ = (!\Memo_Control_inst|r_State.RECEIVING~q\ & \UART_RX_inst|r_RX_DV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_State.RECEIVING~q\,
	datad => \UART_RX_inst|r_RX_DV~q\,
	combout => \Memo_Control_inst|r_Recv_Index[3]~0_combout\);

-- Location: LCCOMB_X49_Y47_N30
\Memo_Control_inst|r_Recv_Index[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Recv_Index[0]~3_combout\ = !\Memo_Control_inst|r_Recv_Index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memo_Control_inst|r_Recv_Index\(0),
	combout => \Memo_Control_inst|r_Recv_Index[0]~3_combout\);

-- Location: FF_X49_Y47_N31
\Memo_Control_inst|r_Recv_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Recv_Index[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Recv_Index\(0));

-- Location: LCCOMB_X49_Y47_N6
\Memo_Control_inst|r_Recv_Index[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Recv_Index[1]~1_combout\ = \Memo_Control_inst|r_Recv_Index\(1) $ (((\UART_RX_inst|r_RX_DV~q\ & (\Memo_Control_inst|r_Recv_Index\(0) & !\Memo_Control_inst|r_State.RECEIVING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(1),
	datab => \UART_RX_inst|r_RX_DV~q\,
	datac => \Memo_Control_inst|r_Recv_Index\(0),
	datad => \Memo_Control_inst|r_State.RECEIVING~q\,
	combout => \Memo_Control_inst|r_Recv_Index[1]~1_combout\);

-- Location: FF_X50_Y47_N1
\Memo_Control_inst|r_Recv_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Memo_Control_inst|r_Recv_Index[1]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Recv_Index\(1));

-- Location: LCCOMB_X49_Y47_N16
\Memo_Control_inst|r_Recv_Index[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Recv_Index[2]~2_combout\ = \Memo_Control_inst|r_Recv_Index\(2) $ (((\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & (\Memo_Control_inst|r_Recv_Index\(0) & \Memo_Control_inst|r_Recv_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datab => \Memo_Control_inst|r_Recv_Index\(0),
	datac => \Memo_Control_inst|r_Recv_Index\(2),
	datad => \Memo_Control_inst|r_Recv_Index\(1),
	combout => \Memo_Control_inst|r_Recv_Index[2]~2_combout\);

-- Location: FF_X49_Y47_N17
\Memo_Control_inst|r_Recv_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Recv_Index[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Recv_Index\(2));

-- Location: LCCOMB_X50_Y47_N26
\Memo_Control_inst|r_Counter~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter~27_combout\ = (\Memo_Control_inst|r_Recv_Index\(2) & (\Memo_Control_inst|r_Recv_Index\(1) & (\Memo_Control_inst|r_Recv_Index\(0) & \UART_RX_inst|r_RX_DV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(2),
	datab => \Memo_Control_inst|r_Recv_Index\(1),
	datac => \Memo_Control_inst|r_Recv_Index\(0),
	datad => \UART_RX_inst|r_RX_DV~q\,
	combout => \Memo_Control_inst|r_Counter~27_combout\);

-- Location: LCCOMB_X49_Y49_N30
\UART_TX_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector0~0_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\) # ((\UART_TX_inst|o_TX_Active~q\ & ((\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\) # (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datab => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \UART_TX_inst|o_TX_Active~q\,
	datad => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \UART_TX_inst|Selector0~0_combout\);

-- Location: FF_X49_Y49_N31
\UART_TX_inst|o_TX_Active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|o_TX_Active~q\);

-- Location: LCCOMB_X50_Y49_N0
\Memo_Control_inst|o_LEDS_Byte[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & ((\Memo_Control_inst|r_TX_DV~q\) # ((\Memo_Control_inst|r_Waiting_For_Next_Byte~q\) # (\UART_TX_inst|o_TX_Active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_TX_DV~q\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datad => \UART_TX_inst|o_TX_Active~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\);

-- Location: LCCOMB_X47_Y49_N22
\UART_TX_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector2~0_combout\ = (\UART_TX_inst|r_TX_Done~q\ & ((\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\) # ((\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\) # (\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datab => \UART_TX_inst|r_TX_Done~q\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	combout => \UART_TX_inst|Selector2~0_combout\);

-- Location: LCCOMB_X45_Y49_N0
\UART_TX_inst|r_Clk_Count[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[0]~13_combout\ = \UART_TX_inst|r_Clk_Count\(0) $ (VCC)
-- \UART_TX_inst|r_Clk_Count[0]~14\ = CARRY(\UART_TX_inst|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(0),
	datad => VCC,
	combout => \UART_TX_inst|r_Clk_Count[0]~13_combout\,
	cout => \UART_TX_inst|r_Clk_Count[0]~14\);

-- Location: LCCOMB_X45_Y49_N26
\UART_TX_inst|r_Clk_Count[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[1]~35_combout\ = (!\UART_TX_inst|LessThan1~4_combout\) # (!\UART_TX_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datad => \UART_TX_inst|LessThan1~4_combout\,
	combout => \UART_TX_inst|r_Clk_Count[1]~35_combout\);

-- Location: FF_X45_Y49_N1
\UART_TX_inst|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[0]~13_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(0));

-- Location: LCCOMB_X45_Y49_N2
\UART_TX_inst|r_Clk_Count[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[1]~15_combout\ = (\UART_TX_inst|r_Clk_Count\(1) & (!\UART_TX_inst|r_Clk_Count[0]~14\)) # (!\UART_TX_inst|r_Clk_Count\(1) & ((\UART_TX_inst|r_Clk_Count[0]~14\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[1]~16\ = CARRY((!\UART_TX_inst|r_Clk_Count[0]~14\) # (!\UART_TX_inst|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(1),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[0]~14\,
	combout => \UART_TX_inst|r_Clk_Count[1]~15_combout\,
	cout => \UART_TX_inst|r_Clk_Count[1]~16\);

-- Location: FF_X45_Y49_N3
\UART_TX_inst|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[1]~15_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(1));

-- Location: LCCOMB_X45_Y49_N4
\UART_TX_inst|r_Clk_Count[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[2]~17_combout\ = (\UART_TX_inst|r_Clk_Count\(2) & (\UART_TX_inst|r_Clk_Count[1]~16\ $ (GND))) # (!\UART_TX_inst|r_Clk_Count\(2) & (!\UART_TX_inst|r_Clk_Count[1]~16\ & VCC))
-- \UART_TX_inst|r_Clk_Count[2]~18\ = CARRY((\UART_TX_inst|r_Clk_Count\(2) & !\UART_TX_inst|r_Clk_Count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(2),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[1]~16\,
	combout => \UART_TX_inst|r_Clk_Count[2]~17_combout\,
	cout => \UART_TX_inst|r_Clk_Count[2]~18\);

-- Location: FF_X45_Y49_N5
\UART_TX_inst|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[2]~17_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(2));

-- Location: LCCOMB_X45_Y49_N6
\UART_TX_inst|r_Clk_Count[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[3]~19_combout\ = (\UART_TX_inst|r_Clk_Count\(3) & (!\UART_TX_inst|r_Clk_Count[2]~18\)) # (!\UART_TX_inst|r_Clk_Count\(3) & ((\UART_TX_inst|r_Clk_Count[2]~18\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[3]~20\ = CARRY((!\UART_TX_inst|r_Clk_Count[2]~18\) # (!\UART_TX_inst|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(3),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[2]~18\,
	combout => \UART_TX_inst|r_Clk_Count[3]~19_combout\,
	cout => \UART_TX_inst|r_Clk_Count[3]~20\);

-- Location: FF_X45_Y49_N7
\UART_TX_inst|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[3]~19_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(3));

-- Location: LCCOMB_X45_Y49_N8
\UART_TX_inst|r_Clk_Count[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[4]~21_combout\ = (\UART_TX_inst|r_Clk_Count\(4) & (\UART_TX_inst|r_Clk_Count[3]~20\ $ (GND))) # (!\UART_TX_inst|r_Clk_Count\(4) & (!\UART_TX_inst|r_Clk_Count[3]~20\ & VCC))
-- \UART_TX_inst|r_Clk_Count[4]~22\ = CARRY((\UART_TX_inst|r_Clk_Count\(4) & !\UART_TX_inst|r_Clk_Count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(4),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[3]~20\,
	combout => \UART_TX_inst|r_Clk_Count[4]~21_combout\,
	cout => \UART_TX_inst|r_Clk_Count[4]~22\);

-- Location: FF_X45_Y49_N9
\UART_TX_inst|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[4]~21_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(4));

-- Location: LCCOMB_X45_Y49_N10
\UART_TX_inst|r_Clk_Count[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[5]~23_combout\ = (\UART_TX_inst|r_Clk_Count\(5) & (!\UART_TX_inst|r_Clk_Count[4]~22\)) # (!\UART_TX_inst|r_Clk_Count\(5) & ((\UART_TX_inst|r_Clk_Count[4]~22\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[5]~24\ = CARRY((!\UART_TX_inst|r_Clk_Count[4]~22\) # (!\UART_TX_inst|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(5),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[4]~22\,
	combout => \UART_TX_inst|r_Clk_Count[5]~23_combout\,
	cout => \UART_TX_inst|r_Clk_Count[5]~24\);

-- Location: FF_X45_Y49_N11
\UART_TX_inst|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[5]~23_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(5));

-- Location: LCCOMB_X45_Y49_N12
\UART_TX_inst|r_Clk_Count[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[6]~25_combout\ = (\UART_TX_inst|r_Clk_Count\(6) & (\UART_TX_inst|r_Clk_Count[5]~24\ $ (GND))) # (!\UART_TX_inst|r_Clk_Count\(6) & (!\UART_TX_inst|r_Clk_Count[5]~24\ & VCC))
-- \UART_TX_inst|r_Clk_Count[6]~26\ = CARRY((\UART_TX_inst|r_Clk_Count\(6) & !\UART_TX_inst|r_Clk_Count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(6),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[5]~24\,
	combout => \UART_TX_inst|r_Clk_Count[6]~25_combout\,
	cout => \UART_TX_inst|r_Clk_Count[6]~26\);

-- Location: FF_X45_Y49_N13
\UART_TX_inst|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[6]~25_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(6));

-- Location: LCCOMB_X45_Y49_N14
\UART_TX_inst|r_Clk_Count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[7]~27_combout\ = (\UART_TX_inst|r_Clk_Count\(7) & (!\UART_TX_inst|r_Clk_Count[6]~26\)) # (!\UART_TX_inst|r_Clk_Count\(7) & ((\UART_TX_inst|r_Clk_Count[6]~26\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[7]~28\ = CARRY((!\UART_TX_inst|r_Clk_Count[6]~26\) # (!\UART_TX_inst|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(7),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[6]~26\,
	combout => \UART_TX_inst|r_Clk_Count[7]~27_combout\,
	cout => \UART_TX_inst|r_Clk_Count[7]~28\);

-- Location: FF_X45_Y49_N15
\UART_TX_inst|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[7]~27_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(7));

-- Location: LCCOMB_X45_Y49_N16
\UART_TX_inst|r_Clk_Count[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[8]~29_combout\ = (\UART_TX_inst|r_Clk_Count\(8) & (\UART_TX_inst|r_Clk_Count[7]~28\ $ (GND))) # (!\UART_TX_inst|r_Clk_Count\(8) & (!\UART_TX_inst|r_Clk_Count[7]~28\ & VCC))
-- \UART_TX_inst|r_Clk_Count[8]~30\ = CARRY((\UART_TX_inst|r_Clk_Count\(8) & !\UART_TX_inst|r_Clk_Count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(8),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[7]~28\,
	combout => \UART_TX_inst|r_Clk_Count[8]~29_combout\,
	cout => \UART_TX_inst|r_Clk_Count[8]~30\);

-- Location: FF_X45_Y49_N17
\UART_TX_inst|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[8]~29_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(8));

-- Location: LCCOMB_X45_Y49_N18
\UART_TX_inst|r_Clk_Count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[9]~31_combout\ = (\UART_TX_inst|r_Clk_Count\(9) & (!\UART_TX_inst|r_Clk_Count[8]~30\)) # (!\UART_TX_inst|r_Clk_Count\(9) & ((\UART_TX_inst|r_Clk_Count[8]~30\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[9]~32\ = CARRY((!\UART_TX_inst|r_Clk_Count[8]~30\) # (!\UART_TX_inst|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(9),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[8]~30\,
	combout => \UART_TX_inst|r_Clk_Count[9]~31_combout\,
	cout => \UART_TX_inst|r_Clk_Count[9]~32\);

-- Location: FF_X45_Y49_N19
\UART_TX_inst|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[9]~31_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(9));

-- Location: LCCOMB_X45_Y49_N20
\UART_TX_inst|r_Clk_Count[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[10]~33_combout\ = (\UART_TX_inst|r_Clk_Count\(10) & (\UART_TX_inst|r_Clk_Count[9]~32\ $ (GND))) # (!\UART_TX_inst|r_Clk_Count\(10) & (!\UART_TX_inst|r_Clk_Count[9]~32\ & VCC))
-- \UART_TX_inst|r_Clk_Count[10]~34\ = CARRY((\UART_TX_inst|r_Clk_Count\(10) & !\UART_TX_inst|r_Clk_Count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(10),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[9]~32\,
	combout => \UART_TX_inst|r_Clk_Count[10]~33_combout\,
	cout => \UART_TX_inst|r_Clk_Count[10]~34\);

-- Location: FF_X45_Y49_N21
\UART_TX_inst|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[10]~33_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(10));

-- Location: LCCOMB_X45_Y49_N22
\UART_TX_inst|r_Clk_Count[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[11]~36_combout\ = (\UART_TX_inst|r_Clk_Count\(11) & (!\UART_TX_inst|r_Clk_Count[10]~34\)) # (!\UART_TX_inst|r_Clk_Count\(11) & ((\UART_TX_inst|r_Clk_Count[10]~34\) # (GND)))
-- \UART_TX_inst|r_Clk_Count[11]~37\ = CARRY((!\UART_TX_inst|r_Clk_Count[10]~34\) # (!\UART_TX_inst|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(11),
	datad => VCC,
	cin => \UART_TX_inst|r_Clk_Count[10]~34\,
	combout => \UART_TX_inst|r_Clk_Count[11]~36_combout\,
	cout => \UART_TX_inst|r_Clk_Count[11]~37\);

-- Location: FF_X45_Y49_N23
\UART_TX_inst|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[11]~36_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(11));

-- Location: LCCOMB_X46_Y49_N30
\UART_TX_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|LessThan1~3_combout\ = (!\UART_TX_inst|r_Clk_Count\(7) & (!\UART_TX_inst|r_Clk_Count\(11) & (!\UART_TX_inst|r_Clk_Count\(8) & !\UART_TX_inst|r_Clk_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(7),
	datab => \UART_TX_inst|r_Clk_Count\(11),
	datac => \UART_TX_inst|r_Clk_Count\(8),
	datad => \UART_TX_inst|r_Clk_Count\(9),
	combout => \UART_TX_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y49_N24
\UART_TX_inst|r_Clk_Count[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_Clk_Count[12]~38_combout\ = \UART_TX_inst|r_Clk_Count[11]~37\ $ (!\UART_TX_inst|r_Clk_Count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_TX_inst|r_Clk_Count\(12),
	cin => \UART_TX_inst|r_Clk_Count[11]~37\,
	combout => \UART_TX_inst|r_Clk_Count[12]~38_combout\);

-- Location: FF_X45_Y49_N25
\UART_TX_inst|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_Clk_Count[12]~38_combout\,
	sclr => \UART_TX_inst|r_Clk_Count[1]~35_combout\,
	ena => \UART_TX_inst|ALT_INV_r_SM_Main.s_Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Clk_Count\(12));

-- Location: LCCOMB_X46_Y49_N8
\UART_TX_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|LessThan1~0_combout\ = (!\UART_TX_inst|r_Clk_Count\(11) & !\UART_TX_inst|r_Clk_Count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_Clk_Count\(11),
	datad => \UART_TX_inst|r_Clk_Count\(10),
	combout => \UART_TX_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y49_N30
\UART_TX_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|LessThan1~1_combout\ = (!\UART_TX_inst|r_Clk_Count\(3) & (((!\UART_TX_inst|r_Clk_Count\(1)) # (!\UART_TX_inst|r_Clk_Count\(2))) # (!\UART_TX_inst|r_Clk_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(3),
	datab => \UART_TX_inst|r_Clk_Count\(0),
	datac => \UART_TX_inst|r_Clk_Count\(2),
	datad => \UART_TX_inst|r_Clk_Count\(1),
	combout => \UART_TX_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y49_N28
\UART_TX_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|LessThan1~2_combout\ = ((!\UART_TX_inst|r_Clk_Count\(5) & ((\UART_TX_inst|LessThan1~1_combout\) # (!\UART_TX_inst|r_Clk_Count\(4))))) # (!\UART_TX_inst|r_Clk_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Clk_Count\(5),
	datab => \UART_TX_inst|r_Clk_Count\(4),
	datac => \UART_TX_inst|LessThan1~1_combout\,
	datad => \UART_TX_inst|r_Clk_Count\(6),
	combout => \UART_TX_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X46_Y49_N28
\UART_TX_inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|LessThan1~4_combout\ = ((\UART_TX_inst|LessThan1~0_combout\) # ((\UART_TX_inst|LessThan1~3_combout\ & \UART_TX_inst|LessThan1~2_combout\))) # (!\UART_TX_inst|r_Clk_Count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|LessThan1~3_combout\,
	datab => \UART_TX_inst|r_Clk_Count\(12),
	datac => \UART_TX_inst|LessThan1~0_combout\,
	datad => \UART_TX_inst|LessThan1~2_combout\,
	combout => \UART_TX_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X47_Y49_N2
\UART_TX_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector2~1_combout\ = (\UART_TX_inst|Selector2~0_combout\) # ((\UART_TX_inst|r_SM_Main.s_Cleanup~q\) # ((!\UART_TX_inst|LessThan1~4_combout\ & \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|Selector2~0_combout\,
	datab => \UART_TX_inst|LessThan1~4_combout\,
	datac => \UART_TX_inst|r_SM_Main.s_Cleanup~q\,
	datad => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	combout => \UART_TX_inst|Selector2~1_combout\);

-- Location: FF_X47_Y49_N3
\UART_TX_inst|r_TX_Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Done~q\);

-- Location: LCCOMB_X50_Y49_N14
\Memo_Control_inst|o_LEDS_Byte~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~4_combout\ = (!\Memo_Control_inst|r_TX_DV~q\ & ((\Memo_Control_inst|r_Waiting_For_Next_Byte~q\) # ((\UART_TX_inst|r_TX_Done~q\ & !\UART_TX_inst|o_TX_Active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_TX_DV~q\,
	datab => \UART_TX_inst|r_TX_Done~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datad => \UART_TX_inst|o_TX_Active~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte~4_combout\);

-- Location: LCCOMB_X51_Y48_N22
\Memo_Control_inst|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector41~0_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & !\Memo_Control_inst|r_Send_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Selector41~0_combout\);

-- Location: LCCOMB_X50_Y50_N8
\Memo_Control_inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal3~0_combout\ = (!\Memo_Control_inst|r_Counter\(16) & (\Memo_Control_inst|r_Counter\(17) & (!\Memo_Control_inst|r_Counter\(7) & \Memo_Control_inst|r_Counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(16),
	datab => \Memo_Control_inst|r_Counter\(17),
	datac => \Memo_Control_inst|r_Counter\(7),
	datad => \Memo_Control_inst|r_Counter\(12),
	combout => \Memo_Control_inst|Equal3~0_combout\);

-- Location: LCCOMB_X51_Y51_N0
\Memo_Control_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~1_combout\ = (\Memo_Control_inst|r_Counter\(0) & (\Memo_Control_inst|r_Counter\(1) & (\Memo_Control_inst|r_Counter\(2) & \Memo_Control_inst|r_Counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(0),
	datab => \Memo_Control_inst|r_Counter\(1),
	datac => \Memo_Control_inst|r_Counter\(2),
	datad => \Memo_Control_inst|r_Counter\(3),
	combout => \Memo_Control_inst|Equal1~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\Memo_Control_inst|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~4_combout\ = (\Memo_Control_inst|r_Counter\(15) & (\Memo_Control_inst|r_Counter\(14) & (\Memo_Control_inst|r_Counter\(20) & \Memo_Control_inst|r_Counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(15),
	datab => \Memo_Control_inst|r_Counter\(14),
	datac => \Memo_Control_inst|r_Counter\(20),
	datad => \Memo_Control_inst|r_Counter\(21),
	combout => \Memo_Control_inst|Equal1~4_combout\);

-- Location: LCCOMB_X50_Y50_N30
\Memo_Control_inst|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~3_combout\ = (!\Memo_Control_inst|r_Counter\(10) & (\Memo_Control_inst|r_Counter\(13) & (!\Memo_Control_inst|r_Counter\(9) & !\Memo_Control_inst|r_Counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(10),
	datab => \Memo_Control_inst|r_Counter\(13),
	datac => \Memo_Control_inst|r_Counter\(9),
	datad => \Memo_Control_inst|r_Counter\(11),
	combout => \Memo_Control_inst|Equal1~3_combout\);

-- Location: LCCOMB_X51_Y51_N2
\Memo_Control_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~2_combout\ = (!\Memo_Control_inst|r_Counter\(8) & (\Memo_Control_inst|r_Counter\(5) & (\Memo_Control_inst|r_Counter\(4) & \Memo_Control_inst|r_Counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(8),
	datab => \Memo_Control_inst|r_Counter\(5),
	datac => \Memo_Control_inst|r_Counter\(4),
	datad => \Memo_Control_inst|r_Counter\(6),
	combout => \Memo_Control_inst|Equal1~2_combout\);

-- Location: LCCOMB_X50_Y50_N4
\Memo_Control_inst|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~5_combout\ = (\Memo_Control_inst|Equal1~1_combout\ & (\Memo_Control_inst|Equal1~4_combout\ & (\Memo_Control_inst|Equal1~3_combout\ & \Memo_Control_inst|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Equal1~1_combout\,
	datab => \Memo_Control_inst|Equal1~4_combout\,
	datac => \Memo_Control_inst|Equal1~3_combout\,
	datad => \Memo_Control_inst|Equal1~2_combout\,
	combout => \Memo_Control_inst|Equal1~5_combout\);

-- Location: LCCOMB_X51_Y50_N20
\Memo_Control_inst|r_Counter[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[23]~77_combout\ = (\Memo_Control_inst|r_Counter\(23) & (!\Memo_Control_inst|r_Counter[22]~73\)) # (!\Memo_Control_inst|r_Counter\(23) & ((\Memo_Control_inst|r_Counter[22]~73\) # (GND)))
-- \Memo_Control_inst|r_Counter[23]~78\ = CARRY((!\Memo_Control_inst|r_Counter[22]~73\) # (!\Memo_Control_inst|r_Counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(23),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[22]~73\,
	combout => \Memo_Control_inst|r_Counter[23]~77_combout\,
	cout => \Memo_Control_inst|r_Counter[23]~78\);

-- Location: LCCOMB_X51_Y50_N22
\Memo_Control_inst|r_Counter[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[24]~79_combout\ = (\Memo_Control_inst|r_Counter\(24) & (\Memo_Control_inst|r_Counter[23]~78\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(24) & (!\Memo_Control_inst|r_Counter[23]~78\ & VCC))
-- \Memo_Control_inst|r_Counter[24]~80\ = CARRY((\Memo_Control_inst|r_Counter\(24) & !\Memo_Control_inst|r_Counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(24),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[23]~78\,
	combout => \Memo_Control_inst|r_Counter[24]~79_combout\,
	cout => \Memo_Control_inst|r_Counter[24]~80\);

-- Location: LCCOMB_X50_Y47_N30
\Memo_Control_inst|r_Counter[3]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[3]~75_combout\ = (!\Memo_Control_inst|r_Counter~27_combout\ & !\Memo_Control_inst|r_State.RECEIVING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memo_Control_inst|r_Counter~27_combout\,
	datad => \Memo_Control_inst|r_State.RECEIVING~q\,
	combout => \Memo_Control_inst|r_Counter[3]~75_combout\);

-- Location: LCCOMB_X50_Y47_N8
\Memo_Control_inst|r_Counter[3]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[3]~76_combout\ = (!\Memo_Control_inst|r_Counter[3]~75_combout\ & (((\Memo_Control_inst|r_Waiting_For_Next_Byte~q\ & !\Memo_Control_inst|r_TX_DV~q\)) # (!\Memo_Control_inst|r_State.SENDING_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|r_Counter[3]~75_combout\,
	datad => \Memo_Control_inst|r_TX_DV~q\,
	combout => \Memo_Control_inst|r_Counter[3]~76_combout\);

-- Location: FF_X51_Y50_N23
\Memo_Control_inst|r_Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[24]~79_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(24));

-- Location: LCCOMB_X51_Y50_N24
\Memo_Control_inst|r_Counter[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[25]~81_combout\ = (\Memo_Control_inst|r_Counter\(25) & (!\Memo_Control_inst|r_Counter[24]~80\)) # (!\Memo_Control_inst|r_Counter\(25) & ((\Memo_Control_inst|r_Counter[24]~80\) # (GND)))
-- \Memo_Control_inst|r_Counter[25]~82\ = CARRY((!\Memo_Control_inst|r_Counter[24]~80\) # (!\Memo_Control_inst|r_Counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(25),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[24]~80\,
	combout => \Memo_Control_inst|r_Counter[25]~81_combout\,
	cout => \Memo_Control_inst|r_Counter[25]~82\);

-- Location: FF_X51_Y50_N25
\Memo_Control_inst|r_Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[25]~81_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(25));

-- Location: LCCOMB_X51_Y50_N26
\Memo_Control_inst|r_Counter[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[26]~83_combout\ = \Memo_Control_inst|r_Counter\(26) $ (!\Memo_Control_inst|r_Counter[25]~82\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(26),
	cin => \Memo_Control_inst|r_Counter[25]~82\,
	combout => \Memo_Control_inst|r_Counter[26]~83_combout\);

-- Location: FF_X51_Y50_N27
\Memo_Control_inst|r_Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[26]~83_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(26));

-- Location: LCCOMB_X50_Y50_N2
\Memo_Control_inst|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal3~1_combout\ = (!\Memo_Control_inst|r_Counter\(24) & (\Memo_Control_inst|r_Counter\(19) & (!\Memo_Control_inst|r_Counter\(18) & \Memo_Control_inst|r_Counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(24),
	datab => \Memo_Control_inst|r_Counter\(19),
	datac => \Memo_Control_inst|r_Counter\(18),
	datad => \Memo_Control_inst|r_Counter\(25),
	combout => \Memo_Control_inst|Equal3~1_combout\);

-- Location: LCCOMB_X50_Y50_N28
\Memo_Control_inst|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal3~2_combout\ = (!\Memo_Control_inst|r_Counter\(26) & \Memo_Control_inst|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memo_Control_inst|r_Counter\(26),
	datad => \Memo_Control_inst|Equal3~1_combout\,
	combout => \Memo_Control_inst|Equal3~2_combout\);

-- Location: LCCOMB_X50_Y50_N26
\Memo_Control_inst|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal3~3_combout\ = (\Memo_Control_inst|Equal1~0_combout\ & (\Memo_Control_inst|Equal3~0_combout\ & (\Memo_Control_inst|Equal1~5_combout\ & \Memo_Control_inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Equal1~0_combout\,
	datab => \Memo_Control_inst|Equal3~0_combout\,
	datac => \Memo_Control_inst|Equal1~5_combout\,
	datad => \Memo_Control_inst|Equal3~2_combout\,
	combout => \Memo_Control_inst|Equal3~3_combout\);

-- Location: LCCOMB_X50_Y50_N14
\Memo_Control_inst|r_Send_Index[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Send_Index[1]~0_combout\ = (\Memo_Control_inst|Selector37~1_combout\) # ((\Memo_Control_inst|o_LEDS_Byte~4_combout\ & (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & \Memo_Control_inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datac => \Memo_Control_inst|Equal3~3_combout\,
	datad => \Memo_Control_inst|Selector37~1_combout\,
	combout => \Memo_Control_inst|r_Send_Index[1]~0_combout\);

-- Location: FF_X51_Y48_N23
\Memo_Control_inst|r_Send_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector41~0_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Send_Index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Send_Index\(0));

-- Location: LCCOMB_X51_Y48_N8
\Memo_Control_inst|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector40~0_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & (!\Memo_Control_inst|Selector37~3_combout\ & (\Memo_Control_inst|r_Send_Index\(1) $ (\Memo_Control_inst|r_Send_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \Memo_Control_inst|Selector37~3_combout\,
	datac => \Memo_Control_inst|r_Send_Index\(1),
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Selector40~0_combout\);

-- Location: FF_X51_Y48_N9
\Memo_Control_inst|r_Send_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector40~0_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Send_Index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Send_Index\(1));

-- Location: LCCOMB_X50_Y46_N20
\Memo_Control_inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Add3~0_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & \Memo_Control_inst|r_Send_Index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(0),
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Add3~0_combout\);

-- Location: LCCOMB_X51_Y48_N4
\Memo_Control_inst|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector39~0_combout\ = (!\Memo_Control_inst|Selector37~3_combout\ & (\Memo_Control_inst|r_State.SENDING_TX~q\ & (\Memo_Control_inst|r_Send_Index\(2) $ (\Memo_Control_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector37~3_combout\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|r_Send_Index\(2),
	datad => \Memo_Control_inst|Add3~0_combout\,
	combout => \Memo_Control_inst|Selector39~0_combout\);

-- Location: FF_X51_Y48_N5
\Memo_Control_inst|r_Send_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector39~0_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Send_Index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Send_Index\(2));

-- Location: LCCOMB_X51_Y48_N12
\Memo_Control_inst|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector38~0_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & (\Memo_Control_inst|r_Send_Index\(3) & ((!\Memo_Control_inst|Add3~0_combout\) # (!\Memo_Control_inst|r_Send_Index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|r_Send_Index\(3),
	datad => \Memo_Control_inst|Add3~0_combout\,
	combout => \Memo_Control_inst|Selector38~0_combout\);

-- Location: FF_X51_Y48_N13
\Memo_Control_inst|r_Send_Index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector38~0_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Send_Index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Send_Index\(3));

-- Location: LCCOMB_X51_Y48_N30
\Memo_Control_inst|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~3_combout\ = (!\Memo_Control_inst|r_Send_Index\(3) & (\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|r_Send_Index\(0) & \Memo_Control_inst|r_Send_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(3),
	datab => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|r_Send_Index\(0),
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Selector37~3_combout\);

-- Location: LCCOMB_X49_Y47_N28
\Memo_Control_inst|Selector37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~4_combout\ = (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & (\Memo_Control_inst|Selector37~3_combout\ & \Memo_Control_inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datac => \Memo_Control_inst|Selector37~3_combout\,
	datad => \Memo_Control_inst|Equal3~3_combout\,
	combout => \Memo_Control_inst|Selector37~4_combout\);

-- Location: LCCOMB_X49_Y47_N24
\Memo_Control_inst|Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector35~2_combout\ = (!\Memo_Control_inst|Selector37~4_combout\ & ((\Memo_Control_inst|r_Counter~27_combout\) # (\Memo_Control_inst|r_State.RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter~27_combout\,
	datac => \Memo_Control_inst|r_State.RECEIVING~q\,
	datad => \Memo_Control_inst|Selector37~4_combout\,
	combout => \Memo_Control_inst|Selector35~2_combout\);

-- Location: FF_X49_Y47_N25
\Memo_Control_inst|r_State.RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector35~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_State.RECEIVING~q\);

-- Location: LCCOMB_X51_Y50_N30
\Memo_Control_inst|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~7_combout\ = (!\Memo_Control_inst|r_Counter\(19) & (!\Memo_Control_inst|r_Counter\(25) & (\Memo_Control_inst|r_Counter\(24) & \Memo_Control_inst|r_Counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(19),
	datab => \Memo_Control_inst|r_Counter\(25),
	datac => \Memo_Control_inst|r_Counter\(24),
	datad => \Memo_Control_inst|r_Counter\(18),
	combout => \Memo_Control_inst|Equal1~7_combout\);

-- Location: LCCOMB_X50_Y50_N6
\Memo_Control_inst|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~6_combout\ = (\Memo_Control_inst|r_Counter\(16) & (!\Memo_Control_inst|r_Counter\(17) & (\Memo_Control_inst|r_Counter\(7) & !\Memo_Control_inst|r_Counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(16),
	datab => \Memo_Control_inst|r_Counter\(17),
	datac => \Memo_Control_inst|r_Counter\(7),
	datad => \Memo_Control_inst|r_Counter\(12),
	combout => \Memo_Control_inst|Equal1~6_combout\);

-- Location: LCCOMB_X50_Y50_N24
\Memo_Control_inst|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~8_combout\ = (\Memo_Control_inst|r_Counter\(26) & (\Memo_Control_inst|Equal1~7_combout\ & \Memo_Control_inst|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(26),
	datac => \Memo_Control_inst|Equal1~7_combout\,
	datad => \Memo_Control_inst|Equal1~6_combout\,
	combout => \Memo_Control_inst|Equal1~8_combout\);

-- Location: LCCOMB_X50_Y50_N18
\Memo_Control_inst|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~9_combout\ = (\Memo_Control_inst|r_Counter\(23) & (\Memo_Control_inst|r_Counter\(22) & (\Memo_Control_inst|Equal1~5_combout\ & \Memo_Control_inst|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(23),
	datab => \Memo_Control_inst|r_Counter\(22),
	datac => \Memo_Control_inst|Equal1~5_combout\,
	datad => \Memo_Control_inst|Equal1~8_combout\,
	combout => \Memo_Control_inst|Equal1~9_combout\);

-- Location: LCCOMB_X50_Y50_N0
\Memo_Control_inst|r_Counter[3]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[3]~74_combout\ = ((\Memo_Control_inst|r_State.SENDING_TX~q\ & (\Memo_Control_inst|Equal3~3_combout\)) # (!\Memo_Control_inst|r_State.SENDING_TX~q\ & ((\Memo_Control_inst|Equal1~9_combout\)))) # 
-- (!\Memo_Control_inst|r_State.RECEIVING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.RECEIVING~q\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|Equal3~3_combout\,
	datad => \Memo_Control_inst|Equal1~9_combout\,
	combout => \Memo_Control_inst|r_Counter[3]~74_combout\);

-- Location: FF_X51_Y51_N7
\Memo_Control_inst|r_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[0]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(0));

-- Location: LCCOMB_X51_Y51_N8
\Memo_Control_inst|r_Counter[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[1]~30_combout\ = (\Memo_Control_inst|r_Counter\(1) & (!\Memo_Control_inst|r_Counter[0]~29\)) # (!\Memo_Control_inst|r_Counter\(1) & ((\Memo_Control_inst|r_Counter[0]~29\) # (GND)))
-- \Memo_Control_inst|r_Counter[1]~31\ = CARRY((!\Memo_Control_inst|r_Counter[0]~29\) # (!\Memo_Control_inst|r_Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(1),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[0]~29\,
	combout => \Memo_Control_inst|r_Counter[1]~30_combout\,
	cout => \Memo_Control_inst|r_Counter[1]~31\);

-- Location: FF_X51_Y51_N9
\Memo_Control_inst|r_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[1]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(1));

-- Location: LCCOMB_X51_Y51_N10
\Memo_Control_inst|r_Counter[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[2]~32_combout\ = (\Memo_Control_inst|r_Counter\(2) & (\Memo_Control_inst|r_Counter[1]~31\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(2) & (!\Memo_Control_inst|r_Counter[1]~31\ & VCC))
-- \Memo_Control_inst|r_Counter[2]~33\ = CARRY((\Memo_Control_inst|r_Counter\(2) & !\Memo_Control_inst|r_Counter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(2),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[1]~31\,
	combout => \Memo_Control_inst|r_Counter[2]~32_combout\,
	cout => \Memo_Control_inst|r_Counter[2]~33\);

-- Location: FF_X51_Y51_N11
\Memo_Control_inst|r_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[2]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(2));

-- Location: LCCOMB_X51_Y51_N12
\Memo_Control_inst|r_Counter[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[3]~34_combout\ = (\Memo_Control_inst|r_Counter\(3) & (!\Memo_Control_inst|r_Counter[2]~33\)) # (!\Memo_Control_inst|r_Counter\(3) & ((\Memo_Control_inst|r_Counter[2]~33\) # (GND)))
-- \Memo_Control_inst|r_Counter[3]~35\ = CARRY((!\Memo_Control_inst|r_Counter[2]~33\) # (!\Memo_Control_inst|r_Counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(3),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[2]~33\,
	combout => \Memo_Control_inst|r_Counter[3]~34_combout\,
	cout => \Memo_Control_inst|r_Counter[3]~35\);

-- Location: FF_X51_Y51_N13
\Memo_Control_inst|r_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[3]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(3));

-- Location: LCCOMB_X51_Y51_N14
\Memo_Control_inst|r_Counter[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[4]~36_combout\ = (\Memo_Control_inst|r_Counter\(4) & (\Memo_Control_inst|r_Counter[3]~35\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(4) & (!\Memo_Control_inst|r_Counter[3]~35\ & VCC))
-- \Memo_Control_inst|r_Counter[4]~37\ = CARRY((\Memo_Control_inst|r_Counter\(4) & !\Memo_Control_inst|r_Counter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(4),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[3]~35\,
	combout => \Memo_Control_inst|r_Counter[4]~36_combout\,
	cout => \Memo_Control_inst|r_Counter[4]~37\);

-- Location: FF_X51_Y51_N15
\Memo_Control_inst|r_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[4]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(4));

-- Location: LCCOMB_X51_Y51_N16
\Memo_Control_inst|r_Counter[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[5]~38_combout\ = (\Memo_Control_inst|r_Counter\(5) & (!\Memo_Control_inst|r_Counter[4]~37\)) # (!\Memo_Control_inst|r_Counter\(5) & ((\Memo_Control_inst|r_Counter[4]~37\) # (GND)))
-- \Memo_Control_inst|r_Counter[5]~39\ = CARRY((!\Memo_Control_inst|r_Counter[4]~37\) # (!\Memo_Control_inst|r_Counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(5),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[4]~37\,
	combout => \Memo_Control_inst|r_Counter[5]~38_combout\,
	cout => \Memo_Control_inst|r_Counter[5]~39\);

-- Location: FF_X51_Y51_N17
\Memo_Control_inst|r_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[5]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(5));

-- Location: LCCOMB_X51_Y51_N18
\Memo_Control_inst|r_Counter[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[6]~40_combout\ = (\Memo_Control_inst|r_Counter\(6) & (\Memo_Control_inst|r_Counter[5]~39\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(6) & (!\Memo_Control_inst|r_Counter[5]~39\ & VCC))
-- \Memo_Control_inst|r_Counter[6]~41\ = CARRY((\Memo_Control_inst|r_Counter\(6) & !\Memo_Control_inst|r_Counter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(6),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[5]~39\,
	combout => \Memo_Control_inst|r_Counter[6]~40_combout\,
	cout => \Memo_Control_inst|r_Counter[6]~41\);

-- Location: FF_X51_Y51_N19
\Memo_Control_inst|r_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[6]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(6));

-- Location: LCCOMB_X51_Y51_N20
\Memo_Control_inst|r_Counter[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[7]~42_combout\ = (\Memo_Control_inst|r_Counter\(7) & (!\Memo_Control_inst|r_Counter[6]~41\)) # (!\Memo_Control_inst|r_Counter\(7) & ((\Memo_Control_inst|r_Counter[6]~41\) # (GND)))
-- \Memo_Control_inst|r_Counter[7]~43\ = CARRY((!\Memo_Control_inst|r_Counter[6]~41\) # (!\Memo_Control_inst|r_Counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(7),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[6]~41\,
	combout => \Memo_Control_inst|r_Counter[7]~42_combout\,
	cout => \Memo_Control_inst|r_Counter[7]~43\);

-- Location: FF_X51_Y51_N21
\Memo_Control_inst|r_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[7]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(7));

-- Location: LCCOMB_X51_Y51_N22
\Memo_Control_inst|r_Counter[8]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[8]~44_combout\ = (\Memo_Control_inst|r_Counter\(8) & (\Memo_Control_inst|r_Counter[7]~43\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(8) & (!\Memo_Control_inst|r_Counter[7]~43\ & VCC))
-- \Memo_Control_inst|r_Counter[8]~45\ = CARRY((\Memo_Control_inst|r_Counter\(8) & !\Memo_Control_inst|r_Counter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(8),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[7]~43\,
	combout => \Memo_Control_inst|r_Counter[8]~44_combout\,
	cout => \Memo_Control_inst|r_Counter[8]~45\);

-- Location: FF_X51_Y51_N23
\Memo_Control_inst|r_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[8]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(8));

-- Location: LCCOMB_X51_Y51_N24
\Memo_Control_inst|r_Counter[9]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[9]~46_combout\ = (\Memo_Control_inst|r_Counter\(9) & (!\Memo_Control_inst|r_Counter[8]~45\)) # (!\Memo_Control_inst|r_Counter\(9) & ((\Memo_Control_inst|r_Counter[8]~45\) # (GND)))
-- \Memo_Control_inst|r_Counter[9]~47\ = CARRY((!\Memo_Control_inst|r_Counter[8]~45\) # (!\Memo_Control_inst|r_Counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(9),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[8]~45\,
	combout => \Memo_Control_inst|r_Counter[9]~46_combout\,
	cout => \Memo_Control_inst|r_Counter[9]~47\);

-- Location: FF_X51_Y51_N25
\Memo_Control_inst|r_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[9]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(9));

-- Location: LCCOMB_X51_Y51_N26
\Memo_Control_inst|r_Counter[10]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[10]~48_combout\ = (\Memo_Control_inst|r_Counter\(10) & (\Memo_Control_inst|r_Counter[9]~47\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(10) & (!\Memo_Control_inst|r_Counter[9]~47\ & VCC))
-- \Memo_Control_inst|r_Counter[10]~49\ = CARRY((\Memo_Control_inst|r_Counter\(10) & !\Memo_Control_inst|r_Counter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(10),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[9]~47\,
	combout => \Memo_Control_inst|r_Counter[10]~48_combout\,
	cout => \Memo_Control_inst|r_Counter[10]~49\);

-- Location: FF_X51_Y51_N27
\Memo_Control_inst|r_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[10]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(10));

-- Location: LCCOMB_X51_Y51_N28
\Memo_Control_inst|r_Counter[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[11]~50_combout\ = (\Memo_Control_inst|r_Counter\(11) & (!\Memo_Control_inst|r_Counter[10]~49\)) # (!\Memo_Control_inst|r_Counter\(11) & ((\Memo_Control_inst|r_Counter[10]~49\) # (GND)))
-- \Memo_Control_inst|r_Counter[11]~51\ = CARRY((!\Memo_Control_inst|r_Counter[10]~49\) # (!\Memo_Control_inst|r_Counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(11),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[10]~49\,
	combout => \Memo_Control_inst|r_Counter[11]~50_combout\,
	cout => \Memo_Control_inst|r_Counter[11]~51\);

-- Location: FF_X51_Y51_N29
\Memo_Control_inst|r_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[11]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(11));

-- Location: LCCOMB_X51_Y51_N30
\Memo_Control_inst|r_Counter[12]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[12]~52_combout\ = (\Memo_Control_inst|r_Counter\(12) & (\Memo_Control_inst|r_Counter[11]~51\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(12) & (!\Memo_Control_inst|r_Counter[11]~51\ & VCC))
-- \Memo_Control_inst|r_Counter[12]~53\ = CARRY((\Memo_Control_inst|r_Counter\(12) & !\Memo_Control_inst|r_Counter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(12),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[11]~51\,
	combout => \Memo_Control_inst|r_Counter[12]~52_combout\,
	cout => \Memo_Control_inst|r_Counter[12]~53\);

-- Location: FF_X51_Y51_N31
\Memo_Control_inst|r_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[12]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(12));

-- Location: LCCOMB_X51_Y50_N0
\Memo_Control_inst|r_Counter[13]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[13]~54_combout\ = (\Memo_Control_inst|r_Counter\(13) & (!\Memo_Control_inst|r_Counter[12]~53\)) # (!\Memo_Control_inst|r_Counter\(13) & ((\Memo_Control_inst|r_Counter[12]~53\) # (GND)))
-- \Memo_Control_inst|r_Counter[13]~55\ = CARRY((!\Memo_Control_inst|r_Counter[12]~53\) # (!\Memo_Control_inst|r_Counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(13),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[12]~53\,
	combout => \Memo_Control_inst|r_Counter[13]~54_combout\,
	cout => \Memo_Control_inst|r_Counter[13]~55\);

-- Location: FF_X51_Y50_N1
\Memo_Control_inst|r_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[13]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(13));

-- Location: LCCOMB_X51_Y50_N2
\Memo_Control_inst|r_Counter[14]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[14]~56_combout\ = (\Memo_Control_inst|r_Counter\(14) & (\Memo_Control_inst|r_Counter[13]~55\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(14) & (!\Memo_Control_inst|r_Counter[13]~55\ & VCC))
-- \Memo_Control_inst|r_Counter[14]~57\ = CARRY((\Memo_Control_inst|r_Counter\(14) & !\Memo_Control_inst|r_Counter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(14),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[13]~55\,
	combout => \Memo_Control_inst|r_Counter[14]~56_combout\,
	cout => \Memo_Control_inst|r_Counter[14]~57\);

-- Location: FF_X51_Y50_N3
\Memo_Control_inst|r_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[14]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(14));

-- Location: LCCOMB_X51_Y50_N4
\Memo_Control_inst|r_Counter[15]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[15]~58_combout\ = (\Memo_Control_inst|r_Counter\(15) & (!\Memo_Control_inst|r_Counter[14]~57\)) # (!\Memo_Control_inst|r_Counter\(15) & ((\Memo_Control_inst|r_Counter[14]~57\) # (GND)))
-- \Memo_Control_inst|r_Counter[15]~59\ = CARRY((!\Memo_Control_inst|r_Counter[14]~57\) # (!\Memo_Control_inst|r_Counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(15),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[14]~57\,
	combout => \Memo_Control_inst|r_Counter[15]~58_combout\,
	cout => \Memo_Control_inst|r_Counter[15]~59\);

-- Location: FF_X51_Y50_N5
\Memo_Control_inst|r_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[15]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(15));

-- Location: LCCOMB_X51_Y50_N6
\Memo_Control_inst|r_Counter[16]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[16]~60_combout\ = (\Memo_Control_inst|r_Counter\(16) & (\Memo_Control_inst|r_Counter[15]~59\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(16) & (!\Memo_Control_inst|r_Counter[15]~59\ & VCC))
-- \Memo_Control_inst|r_Counter[16]~61\ = CARRY((\Memo_Control_inst|r_Counter\(16) & !\Memo_Control_inst|r_Counter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(16),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[15]~59\,
	combout => \Memo_Control_inst|r_Counter[16]~60_combout\,
	cout => \Memo_Control_inst|r_Counter[16]~61\);

-- Location: FF_X51_Y50_N7
\Memo_Control_inst|r_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[16]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(16));

-- Location: LCCOMB_X51_Y50_N8
\Memo_Control_inst|r_Counter[17]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[17]~62_combout\ = (\Memo_Control_inst|r_Counter\(17) & (!\Memo_Control_inst|r_Counter[16]~61\)) # (!\Memo_Control_inst|r_Counter\(17) & ((\Memo_Control_inst|r_Counter[16]~61\) # (GND)))
-- \Memo_Control_inst|r_Counter[17]~63\ = CARRY((!\Memo_Control_inst|r_Counter[16]~61\) # (!\Memo_Control_inst|r_Counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(17),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[16]~61\,
	combout => \Memo_Control_inst|r_Counter[17]~62_combout\,
	cout => \Memo_Control_inst|r_Counter[17]~63\);

-- Location: FF_X51_Y50_N9
\Memo_Control_inst|r_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[17]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(17));

-- Location: LCCOMB_X51_Y50_N10
\Memo_Control_inst|r_Counter[18]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[18]~64_combout\ = (\Memo_Control_inst|r_Counter\(18) & (\Memo_Control_inst|r_Counter[17]~63\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(18) & (!\Memo_Control_inst|r_Counter[17]~63\ & VCC))
-- \Memo_Control_inst|r_Counter[18]~65\ = CARRY((\Memo_Control_inst|r_Counter\(18) & !\Memo_Control_inst|r_Counter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(18),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[17]~63\,
	combout => \Memo_Control_inst|r_Counter[18]~64_combout\,
	cout => \Memo_Control_inst|r_Counter[18]~65\);

-- Location: FF_X51_Y50_N11
\Memo_Control_inst|r_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[18]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(18));

-- Location: LCCOMB_X51_Y50_N12
\Memo_Control_inst|r_Counter[19]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[19]~66_combout\ = (\Memo_Control_inst|r_Counter\(19) & (!\Memo_Control_inst|r_Counter[18]~65\)) # (!\Memo_Control_inst|r_Counter\(19) & ((\Memo_Control_inst|r_Counter[18]~65\) # (GND)))
-- \Memo_Control_inst|r_Counter[19]~67\ = CARRY((!\Memo_Control_inst|r_Counter[18]~65\) # (!\Memo_Control_inst|r_Counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Counter\(19),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[18]~65\,
	combout => \Memo_Control_inst|r_Counter[19]~66_combout\,
	cout => \Memo_Control_inst|r_Counter[19]~67\);

-- Location: FF_X51_Y50_N13
\Memo_Control_inst|r_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[19]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(19));

-- Location: LCCOMB_X51_Y50_N14
\Memo_Control_inst|r_Counter[20]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[20]~68_combout\ = (\Memo_Control_inst|r_Counter\(20) & (\Memo_Control_inst|r_Counter[19]~67\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(20) & (!\Memo_Control_inst|r_Counter[19]~67\ & VCC))
-- \Memo_Control_inst|r_Counter[20]~69\ = CARRY((\Memo_Control_inst|r_Counter\(20) & !\Memo_Control_inst|r_Counter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(20),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[19]~67\,
	combout => \Memo_Control_inst|r_Counter[20]~68_combout\,
	cout => \Memo_Control_inst|r_Counter[20]~69\);

-- Location: FF_X51_Y50_N15
\Memo_Control_inst|r_Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[20]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(20));

-- Location: LCCOMB_X51_Y50_N16
\Memo_Control_inst|r_Counter[21]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[21]~70_combout\ = (\Memo_Control_inst|r_Counter\(21) & (!\Memo_Control_inst|r_Counter[20]~69\)) # (!\Memo_Control_inst|r_Counter\(21) & ((\Memo_Control_inst|r_Counter[20]~69\) # (GND)))
-- \Memo_Control_inst|r_Counter[21]~71\ = CARRY((!\Memo_Control_inst|r_Counter[20]~69\) # (!\Memo_Control_inst|r_Counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(21),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[20]~69\,
	combout => \Memo_Control_inst|r_Counter[21]~70_combout\,
	cout => \Memo_Control_inst|r_Counter[21]~71\);

-- Location: FF_X51_Y50_N17
\Memo_Control_inst|r_Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[21]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(21));

-- Location: LCCOMB_X51_Y50_N18
\Memo_Control_inst|r_Counter[22]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Counter[22]~72_combout\ = (\Memo_Control_inst|r_Counter\(22) & (\Memo_Control_inst|r_Counter[21]~71\ $ (GND))) # (!\Memo_Control_inst|r_Counter\(22) & (!\Memo_Control_inst|r_Counter[21]~71\ & VCC))
-- \Memo_Control_inst|r_Counter[22]~73\ = CARRY((\Memo_Control_inst|r_Counter\(22) & !\Memo_Control_inst|r_Counter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Counter\(22),
	datad => VCC,
	cin => \Memo_Control_inst|r_Counter[21]~71\,
	combout => \Memo_Control_inst|r_Counter[22]~72_combout\,
	cout => \Memo_Control_inst|r_Counter[22]~73\);

-- Location: FF_X51_Y50_N19
\Memo_Control_inst|r_Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[22]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(22));

-- Location: FF_X51_Y50_N21
\Memo_Control_inst|r_Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Counter[23]~77_combout\,
	clrn => \reset~input_o\,
	sclr => \Memo_Control_inst|r_Counter[3]~74_combout\,
	ena => \Memo_Control_inst|r_Counter[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Counter\(23));

-- Location: LCCOMB_X50_Y50_N12
\Memo_Control_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Equal1~0_combout\ = (\Memo_Control_inst|r_Counter\(23) & \Memo_Control_inst|r_Counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memo_Control_inst|r_Counter\(23),
	datad => \Memo_Control_inst|r_Counter\(22),
	combout => \Memo_Control_inst|Equal1~0_combout\);

-- Location: LCCOMB_X52_Y46_N0
\Memo_Control_inst|r_Show_Index[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Show_Index[0]~3_combout\ = !\Memo_Control_inst|r_Show_Index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|r_Show_Index[0]~3_combout\);

-- Location: LCCOMB_X50_Y47_N4
\Memo_Control_inst|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~2_combout\ = (!\Memo_Control_inst|Selector37~1_combout\ & ((\Memo_Control_inst|r_State.RECEIVING~q\) # (!\Memo_Control_inst|r_Counter~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_State.RECEIVING~q\,
	datac => \Memo_Control_inst|r_Counter~27_combout\,
	datad => \Memo_Control_inst|Selector37~1_combout\,
	combout => \Memo_Control_inst|Selector37~2_combout\);

-- Location: LCCOMB_X50_Y47_N6
\Memo_Control_inst|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector36~0_combout\ = (!\Memo_Control_inst|Selector37~4_combout\ & ((\Memo_Control_inst|Selector37~2_combout\ & ((\Memo_Control_inst|r_State.SHOWING_LEDS~q\))) # (!\Memo_Control_inst|Selector37~2_combout\ & 
-- (!\Memo_Control_inst|Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector37~1_combout\,
	datab => \Memo_Control_inst|Selector37~2_combout\,
	datac => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datad => \Memo_Control_inst|Selector37~4_combout\,
	combout => \Memo_Control_inst|Selector36~0_combout\);

-- Location: FF_X50_Y47_N7
\Memo_Control_inst|r_State.SHOWING_LEDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector36~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_State.SHOWING_LEDS~q\);

-- Location: LCCOMB_X50_Y50_N22
\Memo_Control_inst|r_Show_Index[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Show_Index[3]~0_combout\ = (\Memo_Control_inst|Equal1~0_combout\ & (\Memo_Control_inst|r_State.SHOWING_LEDS~q\ & (\Memo_Control_inst|Equal1~5_combout\ & \Memo_Control_inst|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Equal1~0_combout\,
	datab => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datac => \Memo_Control_inst|Equal1~5_combout\,
	datad => \Memo_Control_inst|Equal1~8_combout\,
	combout => \Memo_Control_inst|r_Show_Index[3]~0_combout\);

-- Location: FF_X52_Y46_N1
\Memo_Control_inst|r_Show_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Show_Index[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Show_Index\(0));

-- Location: LCCOMB_X50_Y48_N6
\Memo_Control_inst|r_Show_Index[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Show_Index[1]~1_combout\ = \Memo_Control_inst|r_Show_Index\(1) $ (((\Memo_Control_inst|r_State.SHOWING_LEDS~q\ & (\Memo_Control_inst|r_Show_Index\(0) & \Memo_Control_inst|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datab => \Memo_Control_inst|r_Show_Index\(0),
	datac => \Memo_Control_inst|r_Show_Index\(1),
	datad => \Memo_Control_inst|Equal1~9_combout\,
	combout => \Memo_Control_inst|r_Show_Index[1]~1_combout\);

-- Location: FF_X50_Y48_N7
\Memo_Control_inst|r_Show_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Show_Index[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Show_Index\(1));

-- Location: LCCOMB_X50_Y47_N16
\Memo_Control_inst|r_Show_Index[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Show_Index[2]~2_combout\ = \Memo_Control_inst|r_Show_Index\(2) $ (((\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Show_Index\(1) & \Memo_Control_inst|r_Show_Index[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(0),
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Show_Index\(2),
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|r_Show_Index[2]~2_combout\);

-- Location: FF_X50_Y47_N17
\Memo_Control_inst|r_Show_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Show_Index[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Show_Index\(2));

-- Location: LCCOMB_X51_Y47_N8
\Memo_Control_inst|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~0_combout\ = (\Memo_Control_inst|r_Show_Index\(2) & (\Memo_Control_inst|r_State.SHOWING_LEDS~q\ & (\Memo_Control_inst|r_Show_Index\(1) & \Memo_Control_inst|r_Show_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(2),
	datab => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datac => \Memo_Control_inst|r_Show_Index\(1),
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|Selector37~0_combout\);

-- Location: LCCOMB_X50_Y50_N10
\Memo_Control_inst|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~1_combout\ = (\Memo_Control_inst|Equal1~0_combout\ & (\Memo_Control_inst|Selector37~0_combout\ & (\Memo_Control_inst|Equal1~5_combout\ & \Memo_Control_inst|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Equal1~0_combout\,
	datab => \Memo_Control_inst|Selector37~0_combout\,
	datac => \Memo_Control_inst|Equal1~5_combout\,
	datad => \Memo_Control_inst|Equal1~8_combout\,
	combout => \Memo_Control_inst|Selector37~1_combout\);

-- Location: LCCOMB_X50_Y47_N20
\Memo_Control_inst|Selector37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector37~5_combout\ = (!\Memo_Control_inst|Selector37~4_combout\ & ((\Memo_Control_inst|Selector37~2_combout\ & ((\Memo_Control_inst|r_State.SENDING_TX~q\))) # (!\Memo_Control_inst|Selector37~2_combout\ & 
-- (\Memo_Control_inst|Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector37~1_combout\,
	datab => \Memo_Control_inst|Selector37~2_combout\,
	datac => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datad => \Memo_Control_inst|Selector37~4_combout\,
	combout => \Memo_Control_inst|Selector37~5_combout\);

-- Location: FF_X50_Y47_N21
\Memo_Control_inst|r_State.SENDING_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector37~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_State.SENDING_TX~q\);

-- Location: LCCOMB_X50_Y47_N14
\Memo_Control_inst|r_Waiting_For_Next_Byte~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Waiting_For_Next_Byte~1_combout\ = (\Memo_Control_inst|r_Waiting_For_Next_Byte~q\ & (((\Memo_Control_inst|r_TX_DV~q\) # (!\Memo_Control_inst|Equal3~3_combout\)) # (!\Memo_Control_inst|r_State.SENDING_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \Memo_Control_inst|r_TX_DV~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datad => \Memo_Control_inst|Equal3~3_combout\,
	combout => \Memo_Control_inst|r_Waiting_For_Next_Byte~1_combout\);

-- Location: LCCOMB_X50_Y47_N22
\Memo_Control_inst|r_Waiting_For_Next_Byte~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Waiting_For_Next_Byte~2_combout\ = (\Memo_Control_inst|r_Waiting_For_Next_Byte~1_combout\) # ((\Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\ & \Memo_Control_inst|r_State.SENDING_TX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~1_combout\,
	combout => \Memo_Control_inst|r_Waiting_For_Next_Byte~2_combout\);

-- Location: FF_X50_Y47_N23
\Memo_Control_inst|r_Waiting_For_Next_Byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Waiting_For_Next_Byte~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\);

-- Location: LCCOMB_X50_Y49_N28
\Memo_Control_inst|r_Waiting_For_Next_Byte~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\ = (!\Memo_Control_inst|r_TX_DV~q\ & (!\Memo_Control_inst|r_Waiting_For_Next_Byte~q\ & !\UART_TX_inst|o_TX_Active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_TX_DV~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datad => \UART_TX_inst|o_TX_Active~q\,
	combout => \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\);

-- Location: LCCOMB_X50_Y49_N10
\Memo_Control_inst|r_TX_DV~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_TX_DV~feeder_combout\ = \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\,
	combout => \Memo_Control_inst|r_TX_DV~feeder_combout\);

-- Location: FF_X50_Y49_N11
\Memo_Control_inst|r_TX_DV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_TX_DV~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|r_State.SENDING_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_TX_DV~q\);

-- Location: LCCOMB_X47_Y49_N26
\UART_TX_inst|Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector20~1_combout\ = (\UART_TX_inst|r_SM_Main.s_Idle~q\ & (((\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\ & \UART_TX_inst|LessThan1~4_combout\)))) # (!\UART_TX_inst|r_SM_Main.s_Idle~q\ & ((\Memo_Control_inst|r_TX_DV~q\) # 
-- ((\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\ & \UART_TX_inst|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datab => \Memo_Control_inst|r_TX_DV~q\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datad => \UART_TX_inst|LessThan1~4_combout\,
	combout => \UART_TX_inst|Selector20~1_combout\);

-- Location: FF_X47_Y49_N27
\UART_TX_inst|r_SM_Main.s_TX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\);

-- Location: LCCOMB_X46_Y49_N6
\UART_TX_inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector18~0_combout\ = (\UART_TX_inst|r_Clk_Count\(12) & (!\UART_TX_inst|LessThan1~0_combout\ & ((!\UART_TX_inst|LessThan1~2_combout\) # (!\UART_TX_inst|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|LessThan1~3_combout\,
	datab => \UART_TX_inst|r_Clk_Count\(12),
	datac => \UART_TX_inst|LessThan1~0_combout\,
	datad => \UART_TX_inst|LessThan1~2_combout\,
	combout => \UART_TX_inst|Selector18~0_combout\);

-- Location: LCCOMB_X47_Y47_N10
\UART_TX_inst|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector18~1_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & ((\UART_TX_inst|r_Bit_Index\(0) $ (\UART_TX_inst|Selector18~0_combout\)))) # (!\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\UART_TX_inst|r_SM_Main.s_Idle~q\ & 
-- (\UART_TX_inst|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datab => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datac => \UART_TX_inst|r_Bit_Index\(0),
	datad => \UART_TX_inst|Selector18~0_combout\,
	combout => \UART_TX_inst|Selector18~1_combout\);

-- Location: FF_X47_Y47_N11
\UART_TX_inst|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Bit_Index\(0));

-- Location: LCCOMB_X47_Y47_N28
\UART_TX_inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector17~0_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\UART_TX_inst|r_Bit_Index\(0))) # (!\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & ((\UART_TX_inst|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(0),
	datac => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	combout => \UART_TX_inst|Selector17~0_combout\);

-- Location: LCCOMB_X47_Y47_N16
\UART_TX_inst|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector17~1_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\UART_TX_inst|r_Bit_Index\(1) $ (((!\UART_TX_inst|LessThan1~4_combout\ & \UART_TX_inst|Selector17~0_combout\))))) # (!\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & 
-- (((\UART_TX_inst|r_Bit_Index\(1) & \UART_TX_inst|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datab => \UART_TX_inst|LessThan1~4_combout\,
	datac => \UART_TX_inst|r_Bit_Index\(1),
	datad => \UART_TX_inst|Selector17~0_combout\,
	combout => \UART_TX_inst|Selector17~1_combout\);

-- Location: FF_X47_Y47_N17
\UART_TX_inst|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Bit_Index\(1));

-- Location: LCCOMB_X47_Y49_N24
\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\ = (\UART_TX_inst|r_Bit_Index\(2) & (!\UART_TX_inst|LessThan1~4_combout\ & (\UART_TX_inst|r_Bit_Index\(1) & \UART_TX_inst|r_Bit_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(2),
	datab => \UART_TX_inst|LessThan1~4_combout\,
	datac => \UART_TX_inst|r_Bit_Index\(1),
	datad => \UART_TX_inst|r_Bit_Index\(0),
	combout => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X47_Y49_N8
\UART_TX_inst|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector21~0_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\ & (((\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & !\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\)) # (!\UART_TX_inst|LessThan1~4_combout\))) # 
-- (!\UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\ & (((\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & !\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Start_Bit~q\,
	datab => \UART_TX_inst|LessThan1~4_combout\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\,
	combout => \UART_TX_inst|Selector21~0_combout\);

-- Location: FF_X47_Y49_N9
\UART_TX_inst|r_SM_Main.s_TX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\);

-- Location: LCCOMB_X47_Y49_N16
\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~1_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & ((\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\) # ((\UART_TX_inst|LessThan1~4_combout\ & \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\)))) # 
-- (!\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\UART_TX_inst|LessThan1~4_combout\ & (\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datab => \UART_TX_inst|LessThan1~4_combout\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~0_combout\,
	combout => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~1_combout\);

-- Location: FF_X47_Y49_N17
\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\);

-- Location: LCCOMB_X47_Y49_N4
\UART_TX_inst|r_SM_Main~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_SM_Main~7_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\ & !\UART_TX_inst|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \UART_TX_inst|LessThan1~4_combout\,
	combout => \UART_TX_inst|r_SM_Main~7_combout\);

-- Location: FF_X47_Y49_N5
\UART_TX_inst|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X49_Y49_N20
\UART_TX_inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector19~0_combout\ = (!\UART_TX_inst|r_SM_Main.s_Cleanup~q\ & ((\UART_TX_inst|r_SM_Main.s_Idle~q\) # (\Memo_Control_inst|r_TX_DV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_SM_Main.s_Cleanup~q\,
	datac => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datad => \Memo_Control_inst|r_TX_DV~q\,
	combout => \UART_TX_inst|Selector19~0_combout\);

-- Location: FF_X49_Y49_N21
\UART_TX_inst|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X47_Y49_N12
\UART_TX_inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector16~0_combout\ = (\UART_TX_inst|r_Bit_Index\(0) & (\UART_TX_inst|r_Bit_Index\(1) & !\UART_TX_inst|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(0),
	datac => \UART_TX_inst|r_Bit_Index\(1),
	datad => \UART_TX_inst|LessThan1~4_combout\,
	combout => \UART_TX_inst|Selector16~0_combout\);

-- Location: LCCOMB_X47_Y49_N10
\UART_TX_inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector16~1_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & ((\UART_TX_inst|r_Bit_Index\(2) $ (\UART_TX_inst|Selector16~0_combout\)))) # (!\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & (\UART_TX_inst|r_SM_Main.s_Idle~q\ & 
-- (\UART_TX_inst|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datab => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \UART_TX_inst|r_Bit_Index\(2),
	datad => \UART_TX_inst|Selector16~0_combout\,
	combout => \UART_TX_inst|Selector16~1_combout\);

-- Location: FF_X47_Y49_N11
\UART_TX_inst|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_Bit_Index\(2));

-- Location: LCCOMB_X50_Y45_N24
\UART_RX_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~3_combout\ = (!\UART_RX_inst|r_Bit_Index\(0) & (\UART_RX_inst|r_Bit_Index\(1) & (!\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X50_Y45_N16
\UART_RX_inst|r_RX_Byte[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[2]~2_combout\ = (\UART_RX_inst|Decoder0~3_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~3_combout\ & ((\UART_RX_inst|r_RX_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(2),
	datad => \UART_RX_inst|Decoder0~3_combout\,
	combout => \UART_RX_inst|r_RX_Byte[2]~2_combout\);

-- Location: FF_X50_Y45_N17
\UART_RX_inst|r_RX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(2));

-- Location: LCCOMB_X50_Y48_N8
\Memo_Control_inst|r_Mem[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[1][2]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(2),
	combout => \Memo_Control_inst|r_Mem[1][2]~feeder_combout\);

-- Location: LCCOMB_X47_Y48_N24
\Memo_Control_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~5_combout\ = (!\Memo_Control_inst|r_Recv_Index\(1) & (\Memo_Control_inst|r_Recv_Index\(0) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & !\Memo_Control_inst|r_Recv_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(1),
	datab => \Memo_Control_inst|r_Recv_Index\(0),
	datac => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datad => \Memo_Control_inst|r_Recv_Index\(2),
	combout => \Memo_Control_inst|Decoder0~5_combout\);

-- Location: FF_X50_Y48_N9
\Memo_Control_inst|r_Mem[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[1][2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][2]~q\);

-- Location: LCCOMB_X51_Y48_N24
\Memo_Control_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~4_combout\ = (!\Memo_Control_inst|r_Recv_Index\(0) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & (\Memo_Control_inst|r_Recv_Index\(1) & !\Memo_Control_inst|r_Recv_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(0),
	datab => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datac => \Memo_Control_inst|r_Recv_Index\(1),
	datad => \Memo_Control_inst|r_Recv_Index\(2),
	combout => \Memo_Control_inst|Decoder0~4_combout\);

-- Location: FF_X51_Y48_N21
\Memo_Control_inst|r_Mem[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][2]~q\);

-- Location: LCCOMB_X47_Y48_N18
\Memo_Control_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~6_combout\ = (!\Memo_Control_inst|r_Recv_Index\(1) & (!\Memo_Control_inst|r_Recv_Index\(0) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & !\Memo_Control_inst|r_Recv_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(1),
	datab => \Memo_Control_inst|r_Recv_Index\(0),
	datac => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datad => \Memo_Control_inst|r_Recv_Index\(2),
	combout => \Memo_Control_inst|Decoder0~6_combout\);

-- Location: FF_X52_Y48_N5
\Memo_Control_inst|r_Mem[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][2]~q\);

-- Location: LCCOMB_X52_Y48_N4
\Memo_Control_inst|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux13~2_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Send_Index\(1) & (\Memo_Control_inst|r_Mem[2][2]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[2][2]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[0][2]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux13~2_combout\);

-- Location: LCCOMB_X51_Y48_N14
\Memo_Control_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~7_combout\ = (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & (\Memo_Control_inst|r_Recv_Index\(1) & (\Memo_Control_inst|r_Recv_Index\(0) & !\Memo_Control_inst|r_Recv_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datab => \Memo_Control_inst|r_Recv_Index\(1),
	datac => \Memo_Control_inst|r_Recv_Index\(0),
	datad => \Memo_Control_inst|r_Recv_Index\(2),
	combout => \Memo_Control_inst|Decoder0~7_combout\);

-- Location: FF_X52_Y48_N27
\Memo_Control_inst|r_Mem[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][2]~q\);

-- Location: LCCOMB_X52_Y48_N26
\Memo_Control_inst|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux13~3_combout\ = (\Memo_Control_inst|Mux13~2_combout\ & (((\Memo_Control_inst|r_Mem[3][2]~q\) # (!\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|Mux13~2_combout\ & (\Memo_Control_inst|r_Mem[1][2]~q\ & 
-- ((\Memo_Control_inst|r_Send_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][2]~q\,
	datab => \Memo_Control_inst|Mux13~2_combout\,
	datac => \Memo_Control_inst|r_Mem[3][2]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux13~3_combout\);

-- Location: LCCOMB_X50_Y47_N0
\Memo_Control_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~0_combout\ = (\Memo_Control_inst|r_Recv_Index\(2) & (!\Memo_Control_inst|r_Recv_Index\(0) & (\Memo_Control_inst|r_Recv_Index\(1) & \Memo_Control_inst|r_Recv_Index[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(2),
	datab => \Memo_Control_inst|r_Recv_Index\(0),
	datac => \Memo_Control_inst|r_Recv_Index\(1),
	datad => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Decoder0~0_combout\);

-- Location: FF_X49_Y46_N13
\Memo_Control_inst|r_Mem[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][2]~q\);

-- Location: LCCOMB_X49_Y47_N20
\Memo_Control_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~3_combout\ = (\Memo_Control_inst|r_Recv_Index\(0) & (\Memo_Control_inst|r_Recv_Index\(2) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & \Memo_Control_inst|r_Recv_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(0),
	datab => \Memo_Control_inst|r_Recv_Index\(2),
	datac => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datad => \Memo_Control_inst|r_Recv_Index\(1),
	combout => \Memo_Control_inst|Decoder0~3_combout\);

-- Location: FF_X49_Y46_N31
\Memo_Control_inst|r_Mem[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][2]~q\);

-- Location: LCCOMB_X50_Y46_N0
\Memo_Control_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~1_combout\ = (!\Memo_Control_inst|r_Recv_Index\(1) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & (\Memo_Control_inst|r_Recv_Index\(2) & \Memo_Control_inst|r_Recv_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(1),
	datab => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datac => \Memo_Control_inst|r_Recv_Index\(2),
	datad => \Memo_Control_inst|r_Recv_Index\(0),
	combout => \Memo_Control_inst|Decoder0~1_combout\);

-- Location: FF_X50_Y46_N13
\Memo_Control_inst|r_Mem[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][2]~q\);

-- Location: LCCOMB_X50_Y46_N10
\Memo_Control_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Decoder0~2_combout\ = (!\Memo_Control_inst|r_Recv_Index\(1) & (\Memo_Control_inst|r_Recv_Index[3]~0_combout\ & (\Memo_Control_inst|r_Recv_Index\(2) & !\Memo_Control_inst|r_Recv_Index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Recv_Index\(1),
	datab => \Memo_Control_inst|r_Recv_Index[3]~0_combout\,
	datac => \Memo_Control_inst|r_Recv_Index\(2),
	datad => \Memo_Control_inst|r_Recv_Index\(0),
	combout => \Memo_Control_inst|Decoder0~2_combout\);

-- Location: FF_X50_Y46_N19
\Memo_Control_inst|r_Mem[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][2]~q\);

-- Location: LCCOMB_X50_Y46_N18
\Memo_Control_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux13~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[5][2]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][2]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[4][2]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux13~0_combout\);

-- Location: LCCOMB_X49_Y46_N30
\Memo_Control_inst|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux13~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux13~0_combout\ & ((\Memo_Control_inst|r_Mem[7][2]~q\))) # (!\Memo_Control_inst|Mux13~0_combout\ & (\Memo_Control_inst|r_Mem[6][2]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[6][2]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[7][2]~q\,
	datad => \Memo_Control_inst|Mux13~0_combout\,
	combout => \Memo_Control_inst|Mux13~1_combout\);

-- Location: LCCOMB_X49_Y48_N10
\Memo_Control_inst|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux13~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux13~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux13~3_combout\,
	datad => \Memo_Control_inst|Mux13~1_combout\,
	combout => \Memo_Control_inst|Mux13~4_combout\);

-- Location: LCCOMB_X50_Y49_N30
\Memo_Control_inst|o_TX_Byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_TX_Byte[7]~0_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & (!\UART_TX_inst|o_TX_Active~q\ & (!\Memo_Control_inst|r_Waiting_For_Next_Byte~q\ & !\Memo_Control_inst|r_TX_DV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \UART_TX_inst|o_TX_Active~q\,
	datac => \Memo_Control_inst|r_Waiting_For_Next_Byte~q\,
	datad => \Memo_Control_inst|r_TX_DV~q\,
	combout => \Memo_Control_inst|o_TX_Byte[7]~0_combout\);

-- Location: FF_X49_Y48_N11
\Memo_Control_inst|o_TX_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux13~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(2));

-- Location: LCCOMB_X51_Y47_N16
\UART_TX_inst|r_TX_Data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_TX_Data[2]~feeder_combout\ = \Memo_Control_inst|o_TX_Byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memo_Control_inst|o_TX_Byte\(2),
	combout => \UART_TX_inst|r_TX_Data[2]~feeder_combout\);

-- Location: LCCOMB_X51_Y47_N22
\UART_TX_inst|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector20~0_combout\ = (!\UART_TX_inst|r_SM_Main.s_Idle~q\ & \Memo_Control_inst|r_TX_DV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datad => \Memo_Control_inst|r_TX_DV~q\,
	combout => \UART_TX_inst|Selector20~0_combout\);

-- Location: FF_X51_Y47_N17
\UART_TX_inst|r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_TX_Data[2]~feeder_combout\,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(2));

-- Location: LCCOMB_X50_Y45_N26
\UART_RX_inst|r_RX_Byte[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[3]~3_combout\ = ((\UART_RX_inst|r_Bit_Index\(2)) # (!\UART_RX_inst|r_Bit_Index\(1))) # (!\UART_RX_inst|r_Bit_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datad => \UART_RX_inst|r_Bit_Index\(2),
	combout => \UART_RX_inst|r_RX_Byte[3]~3_combout\);

-- Location: LCCOMB_X50_Y45_N6
\UART_RX_inst|r_RX_Byte[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[3]~4_combout\ = (\UART_RX_inst|r_RX_Byte[3]~3_combout\ & (((\UART_RX_inst|r_RX_Byte\(3))))) # (!\UART_RX_inst|r_RX_Byte[3]~3_combout\ & ((\UART_RX_inst|Decoder0~0_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # 
-- (!\UART_RX_inst|Decoder0~0_combout\ & ((\UART_RX_inst|r_RX_Byte\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_RX_Byte[3]~3_combout\,
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(3),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|r_RX_Byte[3]~4_combout\);

-- Location: FF_X50_Y45_N7
\UART_RX_inst|r_RX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(3));

-- Location: LCCOMB_X50_Y48_N2
\Memo_Control_inst|r_Mem[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[1][3]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(3),
	combout => \Memo_Control_inst|r_Mem[1][3]~feeder_combout\);

-- Location: FF_X50_Y48_N3
\Memo_Control_inst|r_Mem[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[1][3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][3]~q\);

-- Location: FF_X52_Y48_N23
\Memo_Control_inst|r_Mem[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][3]~q\);

-- Location: FF_X51_Y48_N11
\Memo_Control_inst|r_Mem[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][3]~q\);

-- Location: FF_X52_Y48_N17
\Memo_Control_inst|r_Mem[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][3]~q\);

-- Location: LCCOMB_X52_Y48_N16
\Memo_Control_inst|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux12~2_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Send_Index\(1) & (\Memo_Control_inst|r_Mem[2][3]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[2][3]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[0][3]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux12~2_combout\);

-- Location: LCCOMB_X52_Y48_N22
\Memo_Control_inst|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux12~3_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|Mux12~2_combout\ & ((\Memo_Control_inst|r_Mem[3][3]~q\))) # (!\Memo_Control_inst|Mux12~2_combout\ & (\Memo_Control_inst|r_Mem[1][3]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][3]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[3][3]~q\,
	datad => \Memo_Control_inst|Mux12~2_combout\,
	combout => \Memo_Control_inst|Mux12~3_combout\);

-- Location: LCCOMB_X49_Y46_N10
\Memo_Control_inst|r_Mem[7][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[7][3]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(3),
	combout => \Memo_Control_inst|r_Mem[7][3]~feeder_combout\);

-- Location: FF_X49_Y46_N11
\Memo_Control_inst|r_Mem[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[7][3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][3]~q\);

-- Location: LCCOMB_X51_Y46_N26
\Memo_Control_inst|r_Mem[4][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[4][3]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(3),
	combout => \Memo_Control_inst|r_Mem[4][3]~feeder_combout\);

-- Location: FF_X51_Y46_N27
\Memo_Control_inst|r_Mem[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[4][3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][3]~q\);

-- Location: FF_X50_Y46_N9
\Memo_Control_inst|r_Mem[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][3]~q\);

-- Location: LCCOMB_X50_Y46_N8
\Memo_Control_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux12~0_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Mem[5][3]~q\) # (\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[4][3]~q\ & 
-- ((!\Memo_Control_inst|r_Send_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(0),
	datab => \Memo_Control_inst|r_Mem[4][3]~q\,
	datac => \Memo_Control_inst|r_Mem[5][3]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux12~0_combout\);

-- Location: LCCOMB_X49_Y46_N24
\Memo_Control_inst|r_Mem[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[6][3]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(3),
	combout => \Memo_Control_inst|r_Mem[6][3]~feeder_combout\);

-- Location: FF_X49_Y46_N25
\Memo_Control_inst|r_Mem[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[6][3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][3]~q\);

-- Location: LCCOMB_X49_Y46_N8
\Memo_Control_inst|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux12~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux12~0_combout\ & (\Memo_Control_inst|r_Mem[7][3]~q\)) # (!\Memo_Control_inst|Mux12~0_combout\ & ((\Memo_Control_inst|r_Mem[6][3]~q\))))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[7][3]~q\,
	datac => \Memo_Control_inst|Mux12~0_combout\,
	datad => \Memo_Control_inst|r_Mem[6][3]~q\,
	combout => \Memo_Control_inst|Mux12~1_combout\);

-- Location: LCCOMB_X49_Y49_N24
\Memo_Control_inst|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux12~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux12~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux12~3_combout\,
	datad => \Memo_Control_inst|Mux12~1_combout\,
	combout => \Memo_Control_inst|Mux12~4_combout\);

-- Location: FF_X49_Y49_N25
\Memo_Control_inst|o_TX_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux12~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(3));

-- Location: FF_X51_Y47_N31
\UART_TX_inst|r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Memo_Control_inst|o_TX_Byte\(3),
	sload => VCC,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(3));

-- Location: LCCOMB_X50_Y45_N2
\UART_RX_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~2_combout\ = (\UART_RX_inst|r_Bit_Index\(0) & (!\UART_RX_inst|r_Bit_Index\(1) & (!\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X50_Y45_N14
\UART_RX_inst|r_RX_Byte[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[1]~1_combout\ = (\UART_RX_inst|Decoder0~2_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~2_combout\ & ((\UART_RX_inst|r_RX_Byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(1),
	datad => \UART_RX_inst|Decoder0~2_combout\,
	combout => \UART_RX_inst|r_RX_Byte[1]~1_combout\);

-- Location: FF_X50_Y45_N15
\UART_RX_inst|r_RX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(1));

-- Location: FF_X52_Y48_N19
\Memo_Control_inst|r_Mem[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][1]~q\);

-- Location: FF_X50_Y48_N23
\Memo_Control_inst|r_Mem[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][1]~q\);

-- Location: FF_X52_Y48_N9
\Memo_Control_inst|r_Mem[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][1]~q\);

-- Location: FF_X51_Y48_N19
\Memo_Control_inst|r_Mem[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][1]~q\);

-- Location: LCCOMB_X51_Y48_N18
\Memo_Control_inst|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux14~2_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[2][1]~q\))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (\Memo_Control_inst|r_Mem[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(0),
	datab => \Memo_Control_inst|r_Mem[0][1]~q\,
	datac => \Memo_Control_inst|r_Mem[2][1]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux14~2_combout\);

-- Location: LCCOMB_X50_Y48_N22
\Memo_Control_inst|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux14~3_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|Mux14~2_combout\ & (\Memo_Control_inst|r_Mem[3][1]~q\)) # (!\Memo_Control_inst|Mux14~2_combout\ & ((\Memo_Control_inst|r_Mem[1][1]~q\))))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(0),
	datab => \Memo_Control_inst|r_Mem[3][1]~q\,
	datac => \Memo_Control_inst|r_Mem[1][1]~q\,
	datad => \Memo_Control_inst|Mux14~2_combout\,
	combout => \Memo_Control_inst|Mux14~3_combout\);

-- Location: LCCOMB_X50_Y46_N26
\Memo_Control_inst|r_Mem[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[5][1]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(1),
	combout => \Memo_Control_inst|r_Mem[5][1]~feeder_combout\);

-- Location: FF_X50_Y46_N27
\Memo_Control_inst|r_Mem[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[5][1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][1]~q\);

-- Location: LCCOMB_X51_Y46_N16
\Memo_Control_inst|r_Mem[4][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[4][1]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(1),
	combout => \Memo_Control_inst|r_Mem[4][1]~feeder_combout\);

-- Location: FF_X51_Y46_N17
\Memo_Control_inst|r_Mem[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[4][1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][1]~q\);

-- Location: LCCOMB_X51_Y46_N10
\Memo_Control_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux14~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[5][1]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][1]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[4][1]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux14~0_combout\);

-- Location: FF_X51_Y46_N5
\Memo_Control_inst|r_Mem[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][1]~q\);

-- Location: LCCOMB_X49_Y46_N18
\Memo_Control_inst|r_Mem[6][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[6][1]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(1),
	combout => \Memo_Control_inst|r_Mem[6][1]~feeder_combout\);

-- Location: FF_X49_Y46_N19
\Memo_Control_inst|r_Mem[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[6][1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][1]~q\);

-- Location: LCCOMB_X51_Y46_N6
\Memo_Control_inst|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux14~1_combout\ = (\Memo_Control_inst|Mux14~0_combout\ & (((\Memo_Control_inst|r_Mem[7][1]~q\)) # (!\Memo_Control_inst|r_Send_Index\(1)))) # (!\Memo_Control_inst|Mux14~0_combout\ & (\Memo_Control_inst|r_Send_Index\(1) & 
-- ((\Memo_Control_inst|r_Mem[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Mux14~0_combout\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[7][1]~q\,
	datad => \Memo_Control_inst|r_Mem[6][1]~q\,
	combout => \Memo_Control_inst|Mux14~1_combout\);

-- Location: LCCOMB_X51_Y49_N18
\Memo_Control_inst|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux14~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux14~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux14~3_combout\,
	datad => \Memo_Control_inst|Mux14~1_combout\,
	combout => \Memo_Control_inst|Mux14~4_combout\);

-- Location: FF_X51_Y49_N19
\Memo_Control_inst|o_TX_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux14~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(1));

-- Location: LCCOMB_X51_Y47_N10
\UART_TX_inst|r_TX_Data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_TX_Data[1]~feeder_combout\ = \Memo_Control_inst|o_TX_Byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memo_Control_inst|o_TX_Byte\(1),
	combout => \UART_TX_inst|r_TX_Data[1]~feeder_combout\);

-- Location: FF_X51_Y47_N11
\UART_TX_inst|r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_TX_Data[1]~feeder_combout\,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(1));

-- Location: LCCOMB_X50_Y45_N0
\UART_RX_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~1_combout\ = (!\UART_RX_inst|r_Bit_Index\(0) & (!\UART_RX_inst|r_Bit_Index\(1) & (!\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X50_Y45_N4
\UART_RX_inst|r_RX_Byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[0]~0_combout\ = (\UART_RX_inst|Decoder0~1_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~1_combout\ & ((\UART_RX_inst|r_RX_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(0),
	datad => \UART_RX_inst|Decoder0~1_combout\,
	combout => \UART_RX_inst|r_RX_Byte[0]~0_combout\);

-- Location: FF_X50_Y45_N5
\UART_RX_inst|r_RX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(0));

-- Location: LCCOMB_X51_Y46_N8
\Memo_Control_inst|r_Mem[7][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[7][0]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_RX_Byte\(0),
	combout => \Memo_Control_inst|r_Mem[7][0]~feeder_combout\);

-- Location: FF_X51_Y46_N9
\Memo_Control_inst|r_Mem[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[7][0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][0]~q\);

-- Location: LCCOMB_X49_Y46_N4
\Memo_Control_inst|r_Mem[6][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[6][0]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(0),
	combout => \Memo_Control_inst|r_Mem[6][0]~feeder_combout\);

-- Location: FF_X49_Y46_N5
\Memo_Control_inst|r_Mem[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[6][0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][0]~q\);

-- Location: LCCOMB_X51_Y46_N12
\Memo_Control_inst|r_Mem[4][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[4][0]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_RX_Byte\(0),
	combout => \Memo_Control_inst|r_Mem[4][0]~feeder_combout\);

-- Location: FF_X51_Y46_N13
\Memo_Control_inst|r_Mem[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[4][0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][0]~q\);

-- Location: FF_X50_Y46_N21
\Memo_Control_inst|r_Mem[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][0]~q\);

-- Location: LCCOMB_X51_Y46_N20
\Memo_Control_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux15~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[5][0]~q\))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[4][0]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[5][0]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux15~0_combout\);

-- Location: LCCOMB_X51_Y46_N22
\Memo_Control_inst|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux15~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux15~0_combout\ & (\Memo_Control_inst|r_Mem[7][0]~q\)) # (!\Memo_Control_inst|Mux15~0_combout\ & ((\Memo_Control_inst|r_Mem[6][0]~q\))))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[7][0]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[6][0]~q\,
	datad => \Memo_Control_inst|Mux15~0_combout\,
	combout => \Memo_Control_inst|Mux15~1_combout\);

-- Location: FF_X51_Y48_N17
\Memo_Control_inst|r_Mem[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][0]~q\);

-- Location: FF_X52_Y48_N7
\Memo_Control_inst|r_Mem[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][0]~q\);

-- Location: LCCOMB_X50_Y48_N20
\Memo_Control_inst|r_Mem[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[1][0]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_inst|r_RX_Byte\(0),
	combout => \Memo_Control_inst|r_Mem[1][0]~feeder_combout\);

-- Location: FF_X50_Y48_N21
\Memo_Control_inst|r_Mem[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[1][0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][0]~q\);

-- Location: FF_X52_Y48_N1
\Memo_Control_inst|r_Mem[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][0]~q\);

-- Location: LCCOMB_X52_Y48_N0
\Memo_Control_inst|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux15~2_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[1][0]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[1][0]~q\,
	datac => \Memo_Control_inst|r_Mem[0][0]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux15~2_combout\);

-- Location: LCCOMB_X52_Y48_N6
\Memo_Control_inst|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux15~3_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux15~2_combout\ & ((\Memo_Control_inst|r_Mem[3][0]~q\))) # (!\Memo_Control_inst|Mux15~2_combout\ & (\Memo_Control_inst|r_Mem[2][0]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[2][0]~q\,
	datac => \Memo_Control_inst|r_Mem[3][0]~q\,
	datad => \Memo_Control_inst|Mux15~2_combout\,
	combout => \Memo_Control_inst|Mux15~3_combout\);

-- Location: LCCOMB_X51_Y47_N4
\Memo_Control_inst|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux15~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux15~1_combout\)) # (!\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux15~1_combout\,
	datad => \Memo_Control_inst|Mux15~3_combout\,
	combout => \Memo_Control_inst|Mux15~4_combout\);

-- Location: FF_X51_Y47_N5
\Memo_Control_inst|o_TX_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux15~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(0));

-- Location: FF_X51_Y47_N21
\UART_TX_inst|r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Memo_Control_inst|o_TX_Byte\(0),
	sload => VCC,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(0));

-- Location: LCCOMB_X51_Y47_N20
\UART_TX_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Mux0~2_combout\ = (\UART_TX_inst|r_Bit_Index\(1) & (((\UART_TX_inst|r_Bit_Index\(0))))) # (!\UART_TX_inst|r_Bit_Index\(1) & ((\UART_TX_inst|r_Bit_Index\(0) & (\UART_TX_inst|r_TX_Data\(1))) # (!\UART_TX_inst|r_Bit_Index\(0) & 
-- ((\UART_TX_inst|r_TX_Data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_TX_Data\(1),
	datab => \UART_TX_inst|r_Bit_Index\(1),
	datac => \UART_TX_inst|r_TX_Data\(0),
	datad => \UART_TX_inst|r_Bit_Index\(0),
	combout => \UART_TX_inst|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y47_N30
\UART_TX_inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Mux0~3_combout\ = (\UART_TX_inst|r_Bit_Index\(1) & ((\UART_TX_inst|Mux0~2_combout\ & ((\UART_TX_inst|r_TX_Data\(3)))) # (!\UART_TX_inst|Mux0~2_combout\ & (\UART_TX_inst|r_TX_Data\(2))))) # (!\UART_TX_inst|r_Bit_Index\(1) & 
-- (((\UART_TX_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(1),
	datab => \UART_TX_inst|r_TX_Data\(2),
	datac => \UART_TX_inst|r_TX_Data\(3),
	datad => \UART_TX_inst|Mux0~2_combout\,
	combout => \UART_TX_inst|Mux0~3_combout\);

-- Location: LCCOMB_X47_Y49_N6
\UART_TX_inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector1~1_combout\ = (\UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\) # ((!\UART_TX_inst|r_Bit_Index\(2) & (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & \UART_TX_inst|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(2),
	datab => \UART_TX_inst|r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \UART_TX_inst|Mux0~3_combout\,
	combout => \UART_TX_inst|Selector1~1_combout\);

-- Location: LCCOMB_X50_Y45_N28
\UART_RX_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~6_combout\ = (!\UART_RX_inst|r_Bit_Index\(0) & (\UART_RX_inst|r_Bit_Index\(1) & (\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X50_Y45_N8
\UART_RX_inst|r_RX_Byte[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[6]~7_combout\ = (\UART_RX_inst|Decoder0~6_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~6_combout\ & ((\UART_RX_inst|r_RX_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(6),
	datad => \UART_RX_inst|Decoder0~6_combout\,
	combout => \UART_RX_inst|r_RX_Byte[6]~7_combout\);

-- Location: FF_X50_Y45_N9
\UART_RX_inst|r_RX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(6));

-- Location: FF_X50_Y48_N17
\Memo_Control_inst|r_Mem[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][6]~q\);

-- Location: FF_X52_Y48_N15
\Memo_Control_inst|r_Mem[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][6]~q\);

-- Location: FF_X51_Y48_N1
\Memo_Control_inst|r_Mem[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][6]~q\);

-- Location: FF_X52_Y48_N29
\Memo_Control_inst|r_Mem[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][6]~q\);

-- Location: LCCOMB_X52_Y48_N28
\Memo_Control_inst|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux9~2_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Send_Index\(1) & (\Memo_Control_inst|r_Mem[2][6]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[2][6]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[0][6]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux9~2_combout\);

-- Location: LCCOMB_X52_Y48_N14
\Memo_Control_inst|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux9~3_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|Mux9~2_combout\ & ((\Memo_Control_inst|r_Mem[3][6]~q\))) # (!\Memo_Control_inst|Mux9~2_combout\ & (\Memo_Control_inst|r_Mem[1][6]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][6]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[3][6]~q\,
	datad => \Memo_Control_inst|Mux9~2_combout\,
	combout => \Memo_Control_inst|Mux9~3_combout\);

-- Location: FF_X49_Y46_N23
\Memo_Control_inst|r_Mem[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][6]~q\);

-- Location: FF_X49_Y46_N17
\Memo_Control_inst|r_Mem[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][6]~q\);

-- Location: FF_X50_Y46_N23
\Memo_Control_inst|r_Mem[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][6]~q\);

-- Location: FF_X50_Y46_N29
\Memo_Control_inst|r_Mem[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][6]~q\);

-- Location: LCCOMB_X50_Y46_N28
\Memo_Control_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux9~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[5][6]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][6]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[4][6]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux9~0_combout\);

-- Location: LCCOMB_X49_Y46_N16
\Memo_Control_inst|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux9~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux9~0_combout\ & ((\Memo_Control_inst|r_Mem[7][6]~q\))) # (!\Memo_Control_inst|Mux9~0_combout\ & (\Memo_Control_inst|r_Mem[6][6]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[6][6]~q\,
	datac => \Memo_Control_inst|r_Mem[7][6]~q\,
	datad => \Memo_Control_inst|Mux9~0_combout\,
	combout => \Memo_Control_inst|Mux9~1_combout\);

-- Location: LCCOMB_X49_Y48_N24
\Memo_Control_inst|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux9~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux9~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux9~3_combout\,
	datad => \Memo_Control_inst|Mux9~1_combout\,
	combout => \Memo_Control_inst|Mux9~4_combout\);

-- Location: FF_X49_Y48_N25
\Memo_Control_inst|o_TX_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux9~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(6));

-- Location: LCCOMB_X51_Y47_N12
\UART_TX_inst|r_TX_Data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_TX_Data[6]~feeder_combout\ = \Memo_Control_inst|o_TX_Byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memo_Control_inst|o_TX_Byte\(6),
	combout => \UART_TX_inst|r_TX_Data[6]~feeder_combout\);

-- Location: FF_X51_Y47_N13
\UART_TX_inst|r_TX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_TX_Data[6]~feeder_combout\,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(6));

-- Location: LCCOMB_X50_Y45_N22
\UART_RX_inst|r_RX_Byte[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[7]~8_combout\ = ((!\UART_RX_inst|r_Bit_Index\(2)) # (!\UART_RX_inst|r_Bit_Index\(1))) # (!\UART_RX_inst|r_Bit_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datad => \UART_RX_inst|r_Bit_Index\(2),
	combout => \UART_RX_inst|r_RX_Byte[7]~8_combout\);

-- Location: LCCOMB_X50_Y45_N18
\UART_RX_inst|r_RX_Byte[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[7]~9_combout\ = (\UART_RX_inst|r_RX_Byte[7]~8_combout\ & (((\UART_RX_inst|r_RX_Byte\(7))))) # (!\UART_RX_inst|r_RX_Byte[7]~8_combout\ & ((\UART_RX_inst|Decoder0~0_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # 
-- (!\UART_RX_inst|Decoder0~0_combout\ & ((\UART_RX_inst|r_RX_Byte\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_RX_Byte[7]~8_combout\,
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(7),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|r_RX_Byte[7]~9_combout\);

-- Location: FF_X50_Y45_N19
\UART_RX_inst|r_RX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(7));

-- Location: FF_X50_Y48_N31
\Memo_Control_inst|r_Mem[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][7]~q\);

-- Location: FF_X52_Y48_N31
\Memo_Control_inst|r_Mem[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][7]~q\);

-- Location: FF_X51_Y48_N7
\Memo_Control_inst|r_Mem[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][7]~q\);

-- Location: FF_X52_Y48_N25
\Memo_Control_inst|r_Mem[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][7]~q\);

-- Location: LCCOMB_X52_Y48_N24
\Memo_Control_inst|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux8~2_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[2][7]~q\) # ((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Mem[0][7]~q\ & 
-- !\Memo_Control_inst|r_Send_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[2][7]~q\,
	datac => \Memo_Control_inst|r_Mem[0][7]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux8~2_combout\);

-- Location: LCCOMB_X52_Y48_N30
\Memo_Control_inst|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux8~3_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|Mux8~2_combout\ & ((\Memo_Control_inst|r_Mem[3][7]~q\))) # (!\Memo_Control_inst|Mux8~2_combout\ & (\Memo_Control_inst|r_Mem[1][7]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][7]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[3][7]~q\,
	datad => \Memo_Control_inst|Mux8~2_combout\,
	combout => \Memo_Control_inst|Mux8~3_combout\);

-- Location: LCCOMB_X49_Y46_N26
\Memo_Control_inst|r_Mem[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[6][7]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_RX_Byte\(7),
	combout => \Memo_Control_inst|r_Mem[6][7]~feeder_combout\);

-- Location: FF_X49_Y46_N27
\Memo_Control_inst|r_Mem[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[6][7]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][7]~q\);

-- Location: LCCOMB_X49_Y46_N28
\Memo_Control_inst|r_Mem[7][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[7][7]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_RX_Byte\(7),
	combout => \Memo_Control_inst|r_Mem[7][7]~feeder_combout\);

-- Location: FF_X49_Y46_N29
\Memo_Control_inst|r_Mem[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[7][7]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][7]~q\);

-- Location: FF_X50_Y46_N31
\Memo_Control_inst|r_Mem[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][7]~q\);

-- Location: FF_X50_Y46_N25
\Memo_Control_inst|r_Mem[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][7]~q\);

-- Location: LCCOMB_X50_Y46_N24
\Memo_Control_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux8~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[5][7]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][7]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[4][7]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y46_N2
\Memo_Control_inst|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux8~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux8~0_combout\ & ((\Memo_Control_inst|r_Mem[7][7]~q\))) # (!\Memo_Control_inst|Mux8~0_combout\ & (\Memo_Control_inst|r_Mem[6][7]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[6][7]~q\,
	datab => \Memo_Control_inst|r_Mem[7][7]~q\,
	datac => \Memo_Control_inst|r_Send_Index\(1),
	datad => \Memo_Control_inst|Mux8~0_combout\,
	combout => \Memo_Control_inst|Mux8~1_combout\);

-- Location: LCCOMB_X50_Y47_N12
\Memo_Control_inst|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux8~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux8~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Mux8~3_combout\,
	datac => \Memo_Control_inst|r_Send_Index\(2),
	datad => \Memo_Control_inst|Mux8~1_combout\,
	combout => \Memo_Control_inst|Mux8~4_combout\);

-- Location: FF_X50_Y47_N13
\Memo_Control_inst|o_TX_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux8~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(7));

-- Location: FF_X51_Y47_N27
\UART_TX_inst|r_TX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Memo_Control_inst|o_TX_Byte\(7),
	sload => VCC,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(7));

-- Location: LCCOMB_X50_Y45_N10
\UART_RX_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~5_combout\ = (\UART_RX_inst|r_Bit_Index\(0) & (!\UART_RX_inst|r_Bit_Index\(1) & (\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X50_Y45_N30
\UART_RX_inst|r_RX_Byte[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[5]~6_combout\ = (\UART_RX_inst|Decoder0~5_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~5_combout\ & ((\UART_RX_inst|r_RX_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(5),
	datad => \UART_RX_inst|Decoder0~5_combout\,
	combout => \UART_RX_inst|r_RX_Byte[5]~6_combout\);

-- Location: FF_X50_Y45_N31
\UART_RX_inst|r_RX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(5));

-- Location: LCCOMB_X50_Y48_N24
\Memo_Control_inst|r_Mem[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|r_Mem[1][5]~feeder_combout\ = \UART_RX_inst|r_RX_Byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_inst|r_RX_Byte\(5),
	combout => \Memo_Control_inst|r_Mem[1][5]~feeder_combout\);

-- Location: FF_X50_Y48_N25
\Memo_Control_inst|r_Mem[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|r_Mem[1][5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][5]~q\);

-- Location: FF_X52_Y48_N3
\Memo_Control_inst|r_Mem[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][5]~q\);

-- Location: FF_X51_Y48_N27
\Memo_Control_inst|r_Mem[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][5]~q\);

-- Location: FF_X52_Y48_N21
\Memo_Control_inst|r_Mem[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][5]~q\);

-- Location: LCCOMB_X52_Y48_N20
\Memo_Control_inst|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux10~2_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Send_Index\(1) & (\Memo_Control_inst|r_Mem[2][5]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[2][5]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[0][5]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux10~2_combout\);

-- Location: LCCOMB_X52_Y48_N2
\Memo_Control_inst|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux10~3_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|Mux10~2_combout\ & ((\Memo_Control_inst|r_Mem[3][5]~q\))) # (!\Memo_Control_inst|Mux10~2_combout\ & (\Memo_Control_inst|r_Mem[1][5]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][5]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[3][5]~q\,
	datad => \Memo_Control_inst|Mux10~2_combout\,
	combout => \Memo_Control_inst|Mux10~3_combout\);

-- Location: FF_X49_Y46_N7
\Memo_Control_inst|r_Mem[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][5]~q\);

-- Location: FF_X49_Y46_N1
\Memo_Control_inst|r_Mem[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][5]~q\);

-- Location: FF_X50_Y46_N7
\Memo_Control_inst|r_Mem[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][5]~q\);

-- Location: FF_X50_Y46_N5
\Memo_Control_inst|r_Mem[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][5]~q\);

-- Location: LCCOMB_X50_Y46_N4
\Memo_Control_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux10~0_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Send_Index\(0) & (\Memo_Control_inst|r_Mem[5][5]~q\)) # 
-- (!\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][5]~q\,
	datab => \Memo_Control_inst|r_Send_Index\(1),
	datac => \Memo_Control_inst|r_Mem[4][5]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux10~0_combout\);

-- Location: LCCOMB_X49_Y46_N0
\Memo_Control_inst|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux10~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux10~0_combout\ & ((\Memo_Control_inst|r_Mem[7][5]~q\))) # (!\Memo_Control_inst|Mux10~0_combout\ & (\Memo_Control_inst|r_Mem[6][5]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[6][5]~q\,
	datac => \Memo_Control_inst|r_Mem[7][5]~q\,
	datad => \Memo_Control_inst|Mux10~0_combout\,
	combout => \Memo_Control_inst|Mux10~1_combout\);

-- Location: LCCOMB_X49_Y48_N30
\Memo_Control_inst|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux10~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux10~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(2),
	datac => \Memo_Control_inst|Mux10~3_combout\,
	datad => \Memo_Control_inst|Mux10~1_combout\,
	combout => \Memo_Control_inst|Mux10~4_combout\);

-- Location: FF_X49_Y48_N31
\Memo_Control_inst|o_TX_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux10~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(5));

-- Location: LCCOMB_X51_Y47_N18
\UART_TX_inst|r_TX_Data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|r_TX_Data[5]~feeder_combout\ = \Memo_Control_inst|o_TX_Byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memo_Control_inst|o_TX_Byte\(5),
	combout => \UART_TX_inst|r_TX_Data[5]~feeder_combout\);

-- Location: FF_X51_Y47_N19
\UART_TX_inst|r_TX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|r_TX_Data[5]~feeder_combout\,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(5));

-- Location: LCCOMB_X50_Y45_N12
\UART_RX_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|Decoder0~4_combout\ = (!\UART_RX_inst|r_Bit_Index\(0) & (!\UART_RX_inst|r_Bit_Index\(1) & (\UART_RX_inst|r_Bit_Index\(2) & \UART_RX_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_inst|r_Bit_Index\(0),
	datab => \UART_RX_inst|r_Bit_Index\(1),
	datac => \UART_RX_inst|r_Bit_Index\(2),
	datad => \UART_RX_inst|Decoder0~0_combout\,
	combout => \UART_RX_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X50_Y45_N20
\UART_RX_inst|r_RX_Byte[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_RX_inst|r_RX_Byte[4]~5_combout\ = (\UART_RX_inst|Decoder0~4_combout\ & (\UART_RX_inst|r_RX_Data~q\)) # (!\UART_RX_inst|Decoder0~4_combout\ & ((\UART_RX_inst|r_RX_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_inst|r_RX_Data~q\,
	datac => \UART_RX_inst|r_RX_Byte\(4),
	datad => \UART_RX_inst|Decoder0~4_combout\,
	combout => \UART_RX_inst|r_RX_Byte[4]~5_combout\);

-- Location: FF_X50_Y45_N21
\UART_RX_inst|r_RX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_RX_inst|r_RX_Byte[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_inst|r_RX_Byte\(4));

-- Location: FF_X51_Y48_N29
\Memo_Control_inst|r_Mem[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[2][4]~q\);

-- Location: FF_X52_Y48_N13
\Memo_Control_inst|r_Mem[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[0][4]~q\);

-- Location: LCCOMB_X52_Y48_N12
\Memo_Control_inst|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux11~2_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|r_Mem[2][4]~q\) # ((\Memo_Control_inst|r_Send_Index\(0))))) # (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|r_Mem[0][4]~q\ & 
-- !\Memo_Control_inst|r_Send_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[2][4]~q\,
	datac => \Memo_Control_inst|r_Mem[0][4]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(0),
	combout => \Memo_Control_inst|Mux11~2_combout\);

-- Location: FF_X52_Y48_N11
\Memo_Control_inst|r_Mem[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[3][4]~q\);

-- Location: FF_X50_Y48_N15
\Memo_Control_inst|r_Mem[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[1][4]~q\);

-- Location: LCCOMB_X52_Y48_N10
\Memo_Control_inst|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux11~3_combout\ = (\Memo_Control_inst|Mux11~2_combout\ & (((\Memo_Control_inst|r_Mem[3][4]~q\)) # (!\Memo_Control_inst|r_Send_Index\(0)))) # (!\Memo_Control_inst|Mux11~2_combout\ & (\Memo_Control_inst|r_Send_Index\(0) & 
-- ((\Memo_Control_inst|r_Mem[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Mux11~2_combout\,
	datab => \Memo_Control_inst|r_Send_Index\(0),
	datac => \Memo_Control_inst|r_Mem[3][4]~q\,
	datad => \Memo_Control_inst|r_Mem[1][4]~q\,
	combout => \Memo_Control_inst|Mux11~3_combout\);

-- Location: FF_X49_Y46_N15
\Memo_Control_inst|r_Mem[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[6][4]~q\);

-- Location: FF_X49_Y46_N21
\Memo_Control_inst|r_Mem[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[7][4]~q\);

-- Location: FF_X50_Y46_N15
\Memo_Control_inst|r_Mem[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[5][4]~q\);

-- Location: FF_X50_Y46_N17
\Memo_Control_inst|r_Mem[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \UART_RX_inst|r_RX_Byte\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Memo_Control_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|r_Mem[4][4]~q\);

-- Location: LCCOMB_X50_Y46_N16
\Memo_Control_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux11~0_combout\ = (\Memo_Control_inst|r_Send_Index\(0) & ((\Memo_Control_inst|r_Mem[5][4]~q\) # ((\Memo_Control_inst|r_Send_Index\(1))))) # (!\Memo_Control_inst|r_Send_Index\(0) & (((\Memo_Control_inst|r_Mem[4][4]~q\ & 
-- !\Memo_Control_inst|r_Send_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(0),
	datab => \Memo_Control_inst|r_Mem[5][4]~q\,
	datac => \Memo_Control_inst|r_Mem[4][4]~q\,
	datad => \Memo_Control_inst|r_Send_Index\(1),
	combout => \Memo_Control_inst|Mux11~0_combout\);

-- Location: LCCOMB_X49_Y46_N20
\Memo_Control_inst|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux11~1_combout\ = (\Memo_Control_inst|r_Send_Index\(1) & ((\Memo_Control_inst|Mux11~0_combout\ & ((\Memo_Control_inst|r_Mem[7][4]~q\))) # (!\Memo_Control_inst|Mux11~0_combout\ & (\Memo_Control_inst|r_Mem[6][4]~q\)))) # 
-- (!\Memo_Control_inst|r_Send_Index\(1) & (((\Memo_Control_inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Send_Index\(1),
	datab => \Memo_Control_inst|r_Mem[6][4]~q\,
	datac => \Memo_Control_inst|r_Mem[7][4]~q\,
	datad => \Memo_Control_inst|Mux11~0_combout\,
	combout => \Memo_Control_inst|Mux11~1_combout\);

-- Location: LCCOMB_X49_Y48_N16
\Memo_Control_inst|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Mux11~4_combout\ = (\Memo_Control_inst|r_Send_Index\(2) & ((\Memo_Control_inst|Mux11~1_combout\))) # (!\Memo_Control_inst|r_Send_Index\(2) & (\Memo_Control_inst|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_Control_inst|Mux11~3_combout\,
	datac => \Memo_Control_inst|r_Send_Index\(2),
	datad => \Memo_Control_inst|Mux11~1_combout\,
	combout => \Memo_Control_inst|Mux11~4_combout\);

-- Location: FF_X49_Y48_N17
\Memo_Control_inst|o_TX_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Mux11~4_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_TX_Byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_TX_Byte\(4));

-- Location: FF_X51_Y47_N25
\UART_TX_inst|r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	asdata => \Memo_Control_inst|o_TX_Byte\(4),
	sload => VCC,
	ena => \UART_TX_inst|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|r_TX_Data\(4));

-- Location: LCCOMB_X51_Y47_N24
\UART_TX_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Mux0~0_combout\ = (\UART_TX_inst|r_Bit_Index\(0) & ((\UART_TX_inst|r_TX_Data\(5)) # ((\UART_TX_inst|r_Bit_Index\(1))))) # (!\UART_TX_inst|r_Bit_Index\(0) & (((\UART_TX_inst|r_TX_Data\(4) & !\UART_TX_inst|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(0),
	datab => \UART_TX_inst|r_TX_Data\(5),
	datac => \UART_TX_inst|r_TX_Data\(4),
	datad => \UART_TX_inst|r_Bit_Index\(1),
	combout => \UART_TX_inst|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y47_N26
\UART_TX_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Mux0~1_combout\ = (\UART_TX_inst|r_Bit_Index\(1) & ((\UART_TX_inst|Mux0~0_combout\ & ((\UART_TX_inst|r_TX_Data\(7)))) # (!\UART_TX_inst|Mux0~0_combout\ & (\UART_TX_inst|r_TX_Data\(6))))) # (!\UART_TX_inst|r_Bit_Index\(1) & 
-- (((\UART_TX_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_TX_Data\(6),
	datab => \UART_TX_inst|r_Bit_Index\(1),
	datac => \UART_TX_inst|r_TX_Data\(7),
	datad => \UART_TX_inst|Mux0~0_combout\,
	combout => \UART_TX_inst|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y49_N18
\UART_TX_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector1~0_combout\ = ((\UART_TX_inst|r_Bit_Index\(2) & (\UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\ & \UART_TX_inst|Mux0~1_combout\))) # (!\UART_TX_inst|r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|r_Bit_Index\(2),
	datab => \UART_TX_inst|r_SM_Main.s_Idle~q\,
	datac => \UART_TX_inst|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \UART_TX_inst|Mux0~1_combout\,
	combout => \UART_TX_inst|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y49_N28
\UART_TX_inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_TX_inst|Selector1~2_combout\ = (\UART_TX_inst|Selector1~1_combout\) # ((\UART_TX_inst|Selector1~0_combout\) # ((\UART_TX_inst|r_SM_Main.s_Cleanup~q\ & \UART_TX_inst|o_TX_Serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_inst|Selector1~1_combout\,
	datab => \UART_TX_inst|r_SM_Main.s_Cleanup~q\,
	datac => \UART_TX_inst|o_TX_Serial~q\,
	datad => \UART_TX_inst|Selector1~0_combout\,
	combout => \UART_TX_inst|Selector1~2_combout\);

-- Location: FF_X47_Y49_N29
\UART_TX_inst|o_TX_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \UART_TX_inst|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_inst|o_TX_Serial~q\);

-- Location: LCCOMB_X51_Y46_N18
\Memo_Control_inst|o_LEDS_Byte~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~0_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & (((\Memo_Control_inst|r_Mem[5][0]~q\) # (\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][0]~q\ & 
-- ((!\Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[4][0]~q\,
	datab => \Memo_Control_inst|r_Mem[5][0]~q\,
	datac => \Memo_Control_inst|r_Show_Index\(0),
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|o_LEDS_Byte~0_combout\);

-- Location: LCCOMB_X51_Y46_N14
\Memo_Control_inst|o_LEDS_Byte~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte~0_combout\ & ((\Memo_Control_inst|r_Mem[7][0]~q\) # ((!\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|o_LEDS_Byte~0_combout\ & (((\Memo_Control_inst|r_Mem[6][0]~q\ 
-- & \Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[7][0]~q\,
	datab => \Memo_Control_inst|o_LEDS_Byte~0_combout\,
	datac => \Memo_Control_inst|r_Mem[6][0]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|o_LEDS_Byte~1_combout\);

-- Location: LCCOMB_X51_Y48_N2
\Memo_Control_inst|o_LEDS_Byte~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~2_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Show_Index\(1)) # ((\Memo_Control_inst|r_Mem[1][0]~q\)))) # (!\Memo_Control_inst|r_Show_Index\(0) & (!\Memo_Control_inst|r_Show_Index\(1) & 
-- (\Memo_Control_inst|r_Mem[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(0),
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[0][0]~q\,
	datad => \Memo_Control_inst|r_Mem[1][0]~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte~2_combout\);

-- Location: LCCOMB_X51_Y48_N16
\Memo_Control_inst|o_LEDS_Byte~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~3_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|o_LEDS_Byte~2_combout\ & (\Memo_Control_inst|r_Mem[3][0]~q\)) # (!\Memo_Control_inst|o_LEDS_Byte~2_combout\ & ((\Memo_Control_inst|r_Mem[2][0]~q\))))) 
-- # (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|o_LEDS_Byte~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[3][0]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][0]~q\,
	datad => \Memo_Control_inst|o_LEDS_Byte~2_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte~3_combout\);

-- Location: LCCOMB_X50_Y47_N10
\Memo_Control_inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector7~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & (\Memo_Control_inst|o_LEDS_Byte~1_combout\)) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- ((\Memo_Control_inst|o_LEDS_Byte~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(2),
	datab => \Memo_Control_inst|o_LEDS_Byte~1_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte~3_combout\,
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Selector7~0_combout\);

-- Location: LCCOMB_X50_Y50_N16
\Memo_Control_inst|o_LEDS_Byte[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte[3]~5_combout\ = (\Memo_Control_inst|r_State.SHOWING_LEDS~q\ & (((!\Memo_Control_inst|Equal1~8_combout\) # (!\Memo_Control_inst|Equal1~5_combout\)) # (!\Memo_Control_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Equal1~0_combout\,
	datab => \Memo_Control_inst|Equal1~5_combout\,
	datac => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datad => \Memo_Control_inst|Equal1~8_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte[3]~5_combout\);

-- Location: LCCOMB_X50_Y47_N24
\Memo_Control_inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector7~1_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & ((\Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\) # ((\Memo_Control_inst|o_LEDS_Byte~4_combout\ & \Memo_Control_inst|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\,
	datab => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datac => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datad => \Memo_Control_inst|Mux15~4_combout\,
	combout => \Memo_Control_inst|Selector7~1_combout\);

-- Location: LCCOMB_X50_Y47_N18
\Memo_Control_inst|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector7~2_combout\ = (\Memo_Control_inst|Selector7~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte~4_combout\ & (\Memo_Control_inst|o_LEDS_Byte\(0) & \Memo_Control_inst|r_State.SENDING_TX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte\(0),
	datac => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datad => \Memo_Control_inst|Selector7~1_combout\,
	combout => \Memo_Control_inst|Selector7~2_combout\);

-- Location: LCCOMB_X50_Y47_N28
\Memo_Control_inst|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector7~3_combout\ = (\Memo_Control_inst|Selector7~0_combout\) # ((\Memo_Control_inst|Selector7~2_combout\) # ((\Memo_Control_inst|o_LEDS_Byte[3]~5_combout\ & \Memo_Control_inst|o_LEDS_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector7~0_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~5_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(0),
	datad => \Memo_Control_inst|Selector7~2_combout\,
	combout => \Memo_Control_inst|Selector7~3_combout\);

-- Location: FF_X50_Y47_N29
\Memo_Control_inst|o_LEDS_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector7~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(0));

-- Location: LCCOMB_X51_Y46_N24
\Memo_Control_inst|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~2_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][1]~q\) # ((\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|r_Show_Index\(0) & (((\Memo_Control_inst|r_Mem[4][1]~q\ & 
-- !\Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][1]~q\,
	datab => \Memo_Control_inst|r_Mem[4][1]~q\,
	datac => \Memo_Control_inst|r_Show_Index\(0),
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|Selector6~2_combout\);

-- Location: LCCOMB_X51_Y46_N4
\Memo_Control_inst|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~3_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|Selector6~2_combout\ & ((\Memo_Control_inst|r_Mem[7][1]~q\))) # (!\Memo_Control_inst|Selector6~2_combout\ & (\Memo_Control_inst|r_Mem[6][1]~q\)))) # 
-- (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[6][1]~q\,
	datac => \Memo_Control_inst|r_Mem[7][1]~q\,
	datad => \Memo_Control_inst|Selector6~2_combout\,
	combout => \Memo_Control_inst|Selector6~3_combout\);

-- Location: LCCOMB_X52_Y48_N8
\Memo_Control_inst|Selector6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~4_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Mem[2][1]~q\) # ((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Mem[0][1]~q\ & 
-- !\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[2][1]~q\,
	datac => \Memo_Control_inst|r_Mem[0][1]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|Selector6~4_combout\);

-- Location: LCCOMB_X52_Y48_N18
\Memo_Control_inst|Selector6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~5_combout\ = (\Memo_Control_inst|Selector6~4_combout\ & (((\Memo_Control_inst|r_Mem[3][1]~q\) # (!\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|Selector6~4_combout\ & (\Memo_Control_inst|r_Mem[1][1]~q\ & 
-- ((\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][1]~q\,
	datab => \Memo_Control_inst|Selector6~4_combout\,
	datac => \Memo_Control_inst|r_Mem[3][1]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|Selector6~5_combout\);

-- Location: LCCOMB_X51_Y49_N8
\Memo_Control_inst|Selector6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~6_combout\ = ((\Memo_Control_inst|r_Show_Index\(2) & (\Memo_Control_inst|Selector6~3_combout\)) # (!\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|Selector6~5_combout\)))) # 
-- (!\Memo_Control_inst|r_State.SHOWING_LEDS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datab => \Memo_Control_inst|r_Show_Index\(2),
	datac => \Memo_Control_inst|Selector6~3_combout\,
	datad => \Memo_Control_inst|Selector6~5_combout\,
	combout => \Memo_Control_inst|Selector6~6_combout\);

-- Location: LCCOMB_X51_Y49_N0
\Memo_Control_inst|Selector6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector6~7_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & ((\Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\) # ((\Memo_Control_inst|Mux14~4_combout\)))) # (!\Memo_Control_inst|r_State.SENDING_TX~q\ & 
-- (((\Memo_Control_inst|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \Memo_Control_inst|r_Waiting_For_Next_Byte~0_combout\,
	datac => \Memo_Control_inst|Selector6~6_combout\,
	datad => \Memo_Control_inst|Mux14~4_combout\,
	combout => \Memo_Control_inst|Selector6~7_combout\);

-- Location: LCCOMB_X50_Y50_N20
\Memo_Control_inst|o_LEDS_Byte[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ = (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & (((\Memo_Control_inst|Equal1~9_combout\) # (!\Memo_Control_inst|r_State.SHOWING_LEDS~q\)))) # (!\Memo_Control_inst|o_LEDS_Byte~4_combout\ & 
-- (!\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & ((\Memo_Control_inst|Equal1~9_combout\) # (!\Memo_Control_inst|r_State.SHOWING_LEDS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datac => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datad => \Memo_Control_inst|Equal1~9_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\);

-- Location: FF_X51_Y49_N1
\Memo_Control_inst|o_LEDS_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector6~7_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(1));

-- Location: LCCOMB_X50_Y46_N12
\Memo_Control_inst|o_LEDS_Byte~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~8_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][2]~q\))) # 
-- (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[4][2]~q\,
	datac => \Memo_Control_inst|r_Mem[5][2]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~8_combout\);

-- Location: LCCOMB_X49_Y46_N12
\Memo_Control_inst|o_LEDS_Byte~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~9_combout\ = (\Memo_Control_inst|o_LEDS_Byte~8_combout\ & ((\Memo_Control_inst|r_Mem[7][2]~q\) # ((!\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|o_LEDS_Byte~8_combout\ & (((\Memo_Control_inst|r_Mem[6][2]~q\ 
-- & \Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[7][2]~q\,
	datab => \Memo_Control_inst|o_LEDS_Byte~8_combout\,
	datac => \Memo_Control_inst|r_Mem[6][2]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|o_LEDS_Byte~9_combout\);

-- Location: LCCOMB_X51_Y48_N20
\Memo_Control_inst|o_LEDS_Byte~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~10_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Mem[2][2]~q\) # (\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[0][2]~q\ & 
-- ((!\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[0][2]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][2]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~10_combout\);

-- Location: LCCOMB_X50_Y48_N18
\Memo_Control_inst|o_LEDS_Byte~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~11_combout\ = (\Memo_Control_inst|o_LEDS_Byte~10_combout\ & ((\Memo_Control_inst|r_Mem[3][2]~q\) # ((!\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|o_LEDS_Byte~10_combout\ & 
-- (((\Memo_Control_inst|r_Mem[1][2]~q\ & \Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[3][2]~q\,
	datab => \Memo_Control_inst|r_Mem[1][2]~q\,
	datac => \Memo_Control_inst|o_LEDS_Byte~10_combout\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~11_combout\);

-- Location: LCCOMB_X49_Y48_N8
\Memo_Control_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector5~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & (\Memo_Control_inst|o_LEDS_Byte~9_combout\)) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- ((\Memo_Control_inst|o_LEDS_Byte~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~9_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte~11_combout\,
	datac => \Memo_Control_inst|r_Show_Index\(2),
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Selector5~0_combout\);

-- Location: LCCOMB_X49_Y48_N12
\Memo_Control_inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector5~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & \Memo_Control_inst|Mux13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datad => \Memo_Control_inst|Mux13~4_combout\,
	combout => \Memo_Control_inst|Selector5~1_combout\);

-- Location: LCCOMB_X49_Y48_N28
\Memo_Control_inst|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector5~2_combout\ = (\Memo_Control_inst|Selector5~0_combout\) # ((\Memo_Control_inst|Selector5~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ & \Memo_Control_inst|o_LEDS_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	datab => \Memo_Control_inst|Selector5~0_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(2),
	datad => \Memo_Control_inst|Selector5~1_combout\,
	combout => \Memo_Control_inst|Selector5~2_combout\);

-- Location: FF_X49_Y48_N29
\Memo_Control_inst|o_LEDS_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector5~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(2));

-- Location: LCCOMB_X51_Y46_N28
\Memo_Control_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~0_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][3]~q\) # ((\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|r_Show_Index\(0) & (((\Memo_Control_inst|r_Mem[4][3]~q\ & 
-- !\Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[5][3]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(0),
	datac => \Memo_Control_inst|r_Mem[4][3]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|Selector4~0_combout\);

-- Location: LCCOMB_X50_Y48_N4
\Memo_Control_inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~1_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|Selector4~0_combout\ & (\Memo_Control_inst|r_Mem[7][3]~q\)) # (!\Memo_Control_inst|Selector4~0_combout\ & ((\Memo_Control_inst|r_Mem[6][3]~q\))))) # 
-- (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[7][3]~q\,
	datac => \Memo_Control_inst|Selector4~0_combout\,
	datad => \Memo_Control_inst|r_Mem[6][3]~q\,
	combout => \Memo_Control_inst|Selector4~1_combout\);

-- Location: LCCOMB_X51_Y48_N10
\Memo_Control_inst|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~2_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Show_Index\(1))) # (!\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[2][3]~q\)) # 
-- (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Mem[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(0),
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][3]~q\,
	datad => \Memo_Control_inst|r_Mem[0][3]~q\,
	combout => \Memo_Control_inst|Selector4~2_combout\);

-- Location: LCCOMB_X50_Y48_N28
\Memo_Control_inst|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~3_combout\ = (\Memo_Control_inst|Selector4~2_combout\ & (((\Memo_Control_inst|r_Mem[3][3]~q\) # (!\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|Selector4~2_combout\ & (\Memo_Control_inst|r_Mem[1][3]~q\ & 
-- ((\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[1][3]~q\,
	datab => \Memo_Control_inst|r_Mem[3][3]~q\,
	datac => \Memo_Control_inst|Selector4~2_combout\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|Selector4~3_combout\);

-- Location: LCCOMB_X50_Y48_N26
\Memo_Control_inst|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~4_combout\ = ((\Memo_Control_inst|r_Show_Index\(2) & (\Memo_Control_inst|Selector4~1_combout\)) # (!\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|Selector4~3_combout\)))) # 
-- (!\Memo_Control_inst|r_State.SHOWING_LEDS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SHOWING_LEDS~q\,
	datab => \Memo_Control_inst|r_Show_Index\(2),
	datac => \Memo_Control_inst|Selector4~1_combout\,
	datad => \Memo_Control_inst|Selector4~3_combout\,
	combout => \Memo_Control_inst|Selector4~4_combout\);

-- Location: LCCOMB_X50_Y49_N20
\Memo_Control_inst|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector4~5_combout\ = (\Memo_Control_inst|r_State.SENDING_TX~q\ & (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & ((\Memo_Control_inst|Mux12~4_combout\)))) # (!\Memo_Control_inst|r_State.SENDING_TX~q\ & 
-- ((\Memo_Control_inst|Selector4~4_combout\) # ((\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & \Memo_Control_inst|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_State.SENDING_TX~q\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datac => \Memo_Control_inst|Selector4~4_combout\,
	datad => \Memo_Control_inst|Mux12~4_combout\,
	combout => \Memo_Control_inst|Selector4~5_combout\);

-- Location: FF_X50_Y49_N21
\Memo_Control_inst|o_LEDS_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector4~5_combout\,
	clrn => \reset~input_o\,
	ena => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(3));

-- Location: LCCOMB_X51_Y48_N28
\Memo_Control_inst|o_LEDS_Byte~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~14_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Mem[2][4]~q\) # (\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[0][4]~q\ & 
-- ((!\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[0][4]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][4]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~14_combout\);

-- Location: LCCOMB_X50_Y48_N14
\Memo_Control_inst|o_LEDS_Byte~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~15_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|o_LEDS_Byte~14_combout\ & (\Memo_Control_inst|r_Mem[3][4]~q\)) # (!\Memo_Control_inst|o_LEDS_Byte~14_combout\ & 
-- ((\Memo_Control_inst|r_Mem[1][4]~q\))))) # (!\Memo_Control_inst|r_Show_Index\(0) & (((\Memo_Control_inst|o_LEDS_Byte~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[3][4]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(0),
	datac => \Memo_Control_inst|r_Mem[1][4]~q\,
	datad => \Memo_Control_inst|o_LEDS_Byte~14_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte~15_combout\);

-- Location: LCCOMB_X50_Y46_N14
\Memo_Control_inst|o_LEDS_Byte~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~12_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][4]~q\))) # 
-- (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[4][4]~q\,
	datac => \Memo_Control_inst|r_Mem[5][4]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~12_combout\);

-- Location: LCCOMB_X49_Y46_N14
\Memo_Control_inst|o_LEDS_Byte~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~13_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|o_LEDS_Byte~12_combout\ & ((\Memo_Control_inst|r_Mem[7][4]~q\))) # (!\Memo_Control_inst|o_LEDS_Byte~12_combout\ & 
-- (\Memo_Control_inst|r_Mem[6][4]~q\)))) # (!\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|o_LEDS_Byte~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|o_LEDS_Byte~12_combout\,
	datac => \Memo_Control_inst|r_Mem[6][4]~q\,
	datad => \Memo_Control_inst|r_Mem[7][4]~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte~13_combout\);

-- Location: LCCOMB_X49_Y48_N14
\Memo_Control_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector3~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|o_LEDS_Byte~13_combout\))) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- (\Memo_Control_inst|o_LEDS_Byte~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(2),
	datab => \Memo_Control_inst|o_LEDS_Byte~15_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte~13_combout\,
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Selector3~0_combout\);

-- Location: LCCOMB_X49_Y48_N18
\Memo_Control_inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector3~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & \Memo_Control_inst|Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datad => \Memo_Control_inst|Mux11~4_combout\,
	combout => \Memo_Control_inst|Selector3~1_combout\);

-- Location: LCCOMB_X49_Y48_N22
\Memo_Control_inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector3~2_combout\ = (\Memo_Control_inst|Selector3~0_combout\) # ((\Memo_Control_inst|Selector3~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ & \Memo_Control_inst|o_LEDS_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	datab => \Memo_Control_inst|Selector3~0_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(4),
	datad => \Memo_Control_inst|Selector3~1_combout\,
	combout => \Memo_Control_inst|Selector3~2_combout\);

-- Location: FF_X49_Y48_N23
\Memo_Control_inst|o_LEDS_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(4));

-- Location: LCCOMB_X51_Y48_N26
\Memo_Control_inst|o_LEDS_Byte~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~18_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Mem[2][5]~q\) # (\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[0][5]~q\ & 
-- ((!\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[0][5]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][5]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~18_combout\);

-- Location: LCCOMB_X50_Y48_N10
\Memo_Control_inst|o_LEDS_Byte~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~19_combout\ = (\Memo_Control_inst|o_LEDS_Byte~18_combout\ & (((\Memo_Control_inst|r_Mem[3][5]~q\) # (!\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|o_LEDS_Byte~18_combout\ & 
-- (\Memo_Control_inst|r_Mem[1][5]~q\ & ((\Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~18_combout\,
	datab => \Memo_Control_inst|r_Mem[1][5]~q\,
	datac => \Memo_Control_inst|r_Mem[3][5]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~19_combout\);

-- Location: LCCOMB_X50_Y46_N6
\Memo_Control_inst|o_LEDS_Byte~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~16_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][5]~q\))) # 
-- (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[4][5]~q\,
	datac => \Memo_Control_inst|r_Mem[5][5]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~16_combout\);

-- Location: LCCOMB_X49_Y46_N6
\Memo_Control_inst|o_LEDS_Byte~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~17_combout\ = (\Memo_Control_inst|o_LEDS_Byte~16_combout\ & ((\Memo_Control_inst|r_Mem[7][5]~q\) # ((!\Memo_Control_inst|r_Show_Index\(1))))) # (!\Memo_Control_inst|o_LEDS_Byte~16_combout\ & 
-- (((\Memo_Control_inst|r_Mem[6][5]~q\ & \Memo_Control_inst|r_Show_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~16_combout\,
	datab => \Memo_Control_inst|r_Mem[7][5]~q\,
	datac => \Memo_Control_inst|r_Mem[6][5]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(1),
	combout => \Memo_Control_inst|o_LEDS_Byte~17_combout\);

-- Location: LCCOMB_X49_Y48_N4
\Memo_Control_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector2~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|o_LEDS_Byte~17_combout\))) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- (\Memo_Control_inst|o_LEDS_Byte~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(2),
	datab => \Memo_Control_inst|o_LEDS_Byte~19_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte~17_combout\,
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y48_N20
\Memo_Control_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector2~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & (\Memo_Control_inst|Mux10~4_combout\ & \Memo_Control_inst|o_LEDS_Byte~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datac => \Memo_Control_inst|Mux10~4_combout\,
	datad => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	combout => \Memo_Control_inst|Selector2~1_combout\);

-- Location: LCCOMB_X49_Y48_N0
\Memo_Control_inst|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector2~2_combout\ = (\Memo_Control_inst|Selector2~0_combout\) # ((\Memo_Control_inst|Selector2~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ & \Memo_Control_inst|o_LEDS_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	datab => \Memo_Control_inst|Selector2~0_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(5),
	datad => \Memo_Control_inst|Selector2~1_combout\,
	combout => \Memo_Control_inst|Selector2~2_combout\);

-- Location: FF_X49_Y48_N1
\Memo_Control_inst|o_LEDS_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector2~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(5));

-- Location: LCCOMB_X51_Y48_N0
\Memo_Control_inst|o_LEDS_Byte~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~22_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Show_Index\(1))) # (!\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[2][6]~q\)) # 
-- (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Mem[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(0),
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][6]~q\,
	datad => \Memo_Control_inst|r_Mem[0][6]~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte~22_combout\);

-- Location: LCCOMB_X50_Y48_N16
\Memo_Control_inst|o_LEDS_Byte~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~23_combout\ = (\Memo_Control_inst|o_LEDS_Byte~22_combout\ & ((\Memo_Control_inst|r_Mem[3][6]~q\) # ((!\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|o_LEDS_Byte~22_combout\ & 
-- (((\Memo_Control_inst|r_Mem[1][6]~q\ & \Memo_Control_inst|r_Show_Index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[3][6]~q\,
	datab => \Memo_Control_inst|o_LEDS_Byte~22_combout\,
	datac => \Memo_Control_inst|r_Mem[1][6]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~23_combout\);

-- Location: LCCOMB_X50_Y46_N22
\Memo_Control_inst|o_LEDS_Byte~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~20_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][6]~q\))) # 
-- (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[4][6]~q\,
	datac => \Memo_Control_inst|r_Mem[5][6]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~20_combout\);

-- Location: LCCOMB_X49_Y46_N22
\Memo_Control_inst|o_LEDS_Byte~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~21_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|o_LEDS_Byte~20_combout\ & (\Memo_Control_inst|r_Mem[7][6]~q\)) # (!\Memo_Control_inst|o_LEDS_Byte~20_combout\ & 
-- ((\Memo_Control_inst|r_Mem[6][6]~q\))))) # (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|o_LEDS_Byte~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[7][6]~q\,
	datac => \Memo_Control_inst|r_Mem[6][6]~q\,
	datad => \Memo_Control_inst|o_LEDS_Byte~20_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte~21_combout\);

-- Location: LCCOMB_X49_Y48_N26
\Memo_Control_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector1~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|o_LEDS_Byte~21_combout\))) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- (\Memo_Control_inst|o_LEDS_Byte~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(2),
	datab => \Memo_Control_inst|o_LEDS_Byte~23_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte~21_combout\,
	datad => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	combout => \Memo_Control_inst|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y48_N2
\Memo_Control_inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector1~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & \Memo_Control_inst|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datad => \Memo_Control_inst|Mux9~4_combout\,
	combout => \Memo_Control_inst|Selector1~1_combout\);

-- Location: LCCOMB_X49_Y48_N6
\Memo_Control_inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector1~2_combout\ = (\Memo_Control_inst|Selector1~0_combout\) # ((\Memo_Control_inst|Selector1~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ & \Memo_Control_inst|o_LEDS_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector1~0_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(6),
	datad => \Memo_Control_inst|Selector1~1_combout\,
	combout => \Memo_Control_inst|Selector1~2_combout\);

-- Location: FF_X49_Y48_N7
\Memo_Control_inst|o_LEDS_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector1~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(6));

-- Location: LCCOMB_X51_Y48_N6
\Memo_Control_inst|o_LEDS_Byte~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~26_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Show_Index\(1))) # (!\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Show_Index\(1) & (\Memo_Control_inst|r_Mem[2][7]~q\)) # 
-- (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Mem[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(0),
	datab => \Memo_Control_inst|r_Show_Index\(1),
	datac => \Memo_Control_inst|r_Mem[2][7]~q\,
	datad => \Memo_Control_inst|r_Mem[0][7]~q\,
	combout => \Memo_Control_inst|o_LEDS_Byte~26_combout\);

-- Location: LCCOMB_X50_Y48_N30
\Memo_Control_inst|o_LEDS_Byte~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~27_combout\ = (\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|o_LEDS_Byte~26_combout\ & (\Memo_Control_inst|r_Mem[3][7]~q\)) # (!\Memo_Control_inst|o_LEDS_Byte~26_combout\ & 
-- ((\Memo_Control_inst|r_Mem[1][7]~q\))))) # (!\Memo_Control_inst|r_Show_Index\(0) & (((\Memo_Control_inst|o_LEDS_Byte~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[3][7]~q\,
	datab => \Memo_Control_inst|r_Show_Index\(0),
	datac => \Memo_Control_inst|r_Mem[1][7]~q\,
	datad => \Memo_Control_inst|o_LEDS_Byte~26_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte~27_combout\);

-- Location: LCCOMB_X50_Y46_N30
\Memo_Control_inst|o_LEDS_Byte~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~24_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|r_Show_Index\(0))))) # (!\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|r_Show_Index\(0) & ((\Memo_Control_inst|r_Mem[5][7]~q\))) # 
-- (!\Memo_Control_inst|r_Show_Index\(0) & (\Memo_Control_inst|r_Mem[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Show_Index\(1),
	datab => \Memo_Control_inst|r_Mem[4][7]~q\,
	datac => \Memo_Control_inst|r_Mem[5][7]~q\,
	datad => \Memo_Control_inst|r_Show_Index\(0),
	combout => \Memo_Control_inst|o_LEDS_Byte~24_combout\);

-- Location: LCCOMB_X50_Y46_N2
\Memo_Control_inst|o_LEDS_Byte~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|o_LEDS_Byte~25_combout\ = (\Memo_Control_inst|r_Show_Index\(1) & ((\Memo_Control_inst|o_LEDS_Byte~24_combout\ & ((\Memo_Control_inst|r_Mem[7][7]~q\))) # (!\Memo_Control_inst|o_LEDS_Byte~24_combout\ & 
-- (\Memo_Control_inst|r_Mem[6][7]~q\)))) # (!\Memo_Control_inst|r_Show_Index\(1) & (((\Memo_Control_inst|o_LEDS_Byte~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|r_Mem[6][7]~q\,
	datab => \Memo_Control_inst|r_Mem[7][7]~q\,
	datac => \Memo_Control_inst|r_Show_Index\(1),
	datad => \Memo_Control_inst|o_LEDS_Byte~24_combout\,
	combout => \Memo_Control_inst|o_LEDS_Byte~25_combout\);

-- Location: LCCOMB_X50_Y48_N12
\Memo_Control_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector0~0_combout\ = (\Memo_Control_inst|r_Show_Index[3]~0_combout\ & ((\Memo_Control_inst|r_Show_Index\(2) & ((\Memo_Control_inst|o_LEDS_Byte~25_combout\))) # (!\Memo_Control_inst|r_Show_Index\(2) & 
-- (\Memo_Control_inst|o_LEDS_Byte~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~27_combout\,
	datab => \Memo_Control_inst|r_Show_Index\(2),
	datac => \Memo_Control_inst|r_Show_Index[3]~0_combout\,
	datad => \Memo_Control_inst|o_LEDS_Byte~25_combout\,
	combout => \Memo_Control_inst|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y47_N2
\Memo_Control_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector0~1_combout\ = (\Memo_Control_inst|o_LEDS_Byte~4_combout\ & (\Memo_Control_inst|o_LEDS_Byte[3]~6_combout\ & \Memo_Control_inst|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|o_LEDS_Byte~4_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte[3]~6_combout\,
	datad => \Memo_Control_inst|Mux8~4_combout\,
	combout => \Memo_Control_inst|Selector0~1_combout\);

-- Location: LCCOMB_X50_Y48_N0
\Memo_Control_inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memo_Control_inst|Selector0~2_combout\ = (\Memo_Control_inst|Selector0~0_combout\) # ((\Memo_Control_inst|Selector0~1_combout\) # ((!\Memo_Control_inst|o_LEDS_Byte[3]~7_combout\ & \Memo_Control_inst|o_LEDS_Byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_Control_inst|Selector0~0_combout\,
	datab => \Memo_Control_inst|o_LEDS_Byte[3]~7_combout\,
	datac => \Memo_Control_inst|o_LEDS_Byte\(7),
	datad => \Memo_Control_inst|Selector0~1_combout\,
	combout => \Memo_Control_inst|Selector0~2_combout\);

-- Location: FF_X50_Y48_N1
\Memo_Control_inst|o_LEDS_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Memo_Control_inst|Selector0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memo_Control_inst|o_LEDS_Byte\(7));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_TX_Serial <= \o_TX_Serial~output_o\;

ww_o_LED_0 <= \o_LED_0~output_o\;

ww_o_LED_1 <= \o_LED_1~output_o\;

ww_o_LED_2 <= \o_LED_2~output_o\;

ww_o_LED_3 <= \o_LED_3~output_o\;

ww_o_LED_4 <= \o_LED_4~output_o\;

ww_o_LED_5 <= \o_LED_5~output_o\;

ww_o_LED_6 <= \o_LED_6~output_o\;

ww_o_LED_7 <= \o_LED_7~output_o\;
END structure;


