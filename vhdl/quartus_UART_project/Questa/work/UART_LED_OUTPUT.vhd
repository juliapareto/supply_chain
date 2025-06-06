library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_LED_OUTPUT is
    generic (
        g_NUM_BYTES : integer := 8
    );
    port (
        i_Clk         : in std_logic;
		  i_RX_Byte_LED : in std_logic_vector(7 downto 0);
        o_LED_0       : out std_logic;
		  o_LED_1       : out std_logic;
		  o_LED_2       : out std_logic;
		  o_LED_3       : out std_logic;
		  o_LED_4       : out std_logic;
		  o_LED_5       : out std_logic;
		  o_LED_6       : out std_logic;
		  o_LED_7       : out std_logic
        
        
    );
end UART_LED_OUTPUT;

architecture Behavioral of UART_LED_OUTPUT is



begin


	o_LED_0 <= i_RX_Byte_LED(0);
	o_LED_1 <= i_RX_Byte_LED(1);
	o_LED_2 <= i_RX_Byte_LED(2);
	o_LED_3 <= i_RX_Byte_LED(3);
	o_LED_4 <= i_RX_Byte_LED(4);
	o_LED_5 <= i_RX_Byte_LED(5);
	o_LED_6 <= i_RX_Byte_LED(6);
	o_LED_7 <= i_RX_Byte_LED(7);
    


end Behavioral;
