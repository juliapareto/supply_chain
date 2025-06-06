LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE Behavior OF testbench IS

   COMPONENT UART_Memo_Top_LOOP
      PORT ( i_Clk       : in  std_logic;
        
		  i_SW_0       : in std_logic;
		  i_SW_1       : in std_logic;
		  i_SW_2       : in std_logic;
		  i_SW_3       : in std_logic;
		  i_SW_4       : in std_logic;
		  i_SW_5       : in std_logic;
		  i_SW_6       : in std_logic;
		  i_SW_7       : in std_logic;
		  i_SW_DV      : in std_logic;
		  
		  
		  o_LED_0       : out std_logic;
		  o_LED_1       : out std_logic;
		  o_LED_2       : out std_logic;
		  o_LED_3       : out std_logic;
		  o_LED_4       : out std_logic;
		  o_LED_5       : out std_logic;
		  o_LED_6       : out std_logic;
		  o_LED_7       : out std_logic
		  );
   END COMPONENT;

	SIGNAL CLOCK_50 : STD_LOGIC;
	
	SIGNAL S_SWITHCES : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL S_LEDS : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
   U1: UART_Memo_Top_LOOP PORT MAP (CLOCK_50, S_SWITHCES(0),
	S_SWITHCES(1), S_SWITHCES(2), S_SWITHCES(3),
	S_SWITHCES(4), S_SWITHCES(5), S_SWITHCES(6), S_SWITHCES(7),
	S_SWITHCES(8), S_LEDS(0), S_LEDS(1), S_LEDS(2), S_LEDS(3),
	S_LEDS(4), S_LEDS(5), S_LEDS(6), S_LEDS(7));

   clock_process: PROCESS
	BEGIN
	   CLOCK_50 <= '0';
	   WAIT FOR 10 ns;
	   CLOCK_50 <= '1';
	   WAIT FOR 10 ns;
	END PROCESS;

	vectors: PROCESS
	BEGIN
		-- WE SET A BYTE OF INFO
		S_SWITCHES(0) <= '1';
		S_SWITCHES(1) <= '0';
		S_SWITCHES(2) <= '0';
		S_SWITCHES(3) <= '1';
		S_SWITCHES(4) <= '1';
		S_SWITCHES(5) <= '1';
		S_SWITCHES(6) <= '1';
		S_SWITCHES(7) <= '1';
		
		S_SWITCHES(8) <= '1'; -- DATA VALID ONE
		WAIT FOR 20 ns;
		S_SWITCHES(8) <= '0'; -- DATA VALID ZERO
		--WAIT FOR 20*40 ns;
		
		WAIT;
	END PROCESS;
END;
