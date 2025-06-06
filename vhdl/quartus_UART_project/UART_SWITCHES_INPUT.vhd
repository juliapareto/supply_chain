library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_SWITCHES_INPUT is
    generic (
        g_NUM_BYTES : integer := 8
    );
    port (
        i_Clk        : in std_logic;
        i_SW_0       : in std_logic;
		  i_SW_1       : in std_logic;
		  i_SW_2       : in std_logic;
		  i_SW_3       : in std_logic;
		  i_SW_4       : in std_logic;
		  i_SW_5       : in std_logic;
		  i_SW_6       : in std_logic;
		  i_SW_7       : in std_logic;
		  i_SW_DV      : in std_logic;
        
        o_SW_DV      : out std_logic;
        o_TX_Byte_in : out std_logic_vector(7 downto 0)
    );
end UART_SWITCHES_INPUT;

architecture Behavioral of UART_SWITCHES_INPUT is



begin

    

    o_SW_DV   <= i_SW_DV;
    o_TX_Byte_in(0) <= i_SW_0;
	 o_TX_Byte_in(1) <= i_SW_1;
	 o_TX_Byte_in(2) <= i_SW_2;
	 o_TX_Byte_in(3) <= i_SW_3;
	 o_TX_Byte_in(4) <= i_SW_4;
	 o_TX_Byte_in(5) <= i_SW_5;
	 o_TX_Byte_in(6) <= i_SW_6;
	 o_TX_Byte_in(7) <= i_SW_7;

end Behavioral;
