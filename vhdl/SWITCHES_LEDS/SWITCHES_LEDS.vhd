library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SWITCHES_LEDS is
    port (
        i_Clk       : in  std_logic;
        
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
		  o_LED_7       : out std_logic;
		  o_LED_8       : out std_logic
		  
    );
end SWITCHES_LEDS;

architecture Structural of SWITCHES_LEDS is

    signal s_RX_DV      : std_logic;
    signal s_RX_Byte    : std_logic_vector(7 downto 0);

    signal s_TX_DV      : std_logic;
    signal s_TX_Byte    : std_logic_vector(7 downto 0);
    signal s_TX_Done    : std_logic;
    signal s_TX_Active  : std_logic;
	 
	 
	 signal s_SW_vector	: std_logic_vector(8 downto 0);
	 
	 
	 signal s_LED_vector	: std_logic_vector(8 downto 0);
	 
	 
	 signal s_o_TX_Serial : std_logic;
	 

begin


    o_LED_0 <= i_SW_0;
	 o_LED_1 <= i_SW_1;
	 o_LED_2 <= i_SW_2;
	 o_LED_3 <= i_SW_3;
	 o_LED_4 <= i_SW_4;
	 o_LED_5 <= i_SW_5;
	 o_LED_6 <= i_SW_6;
	 o_LED_7 <= i_SW_7;
	 o_LED_8 <= i_SW_DV;

end Structural;