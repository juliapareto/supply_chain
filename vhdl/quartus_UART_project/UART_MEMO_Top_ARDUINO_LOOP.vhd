library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_MEMO_Top_ARDUINO_LOOP is
    port (
        i_Clk       : in  std_logic;
		  reset		  : in  std_logic;
        
--		  i_SW_0       : in std_logic;
--		  i_SW_1       : in std_logic;
--		  i_SW_2       : in std_logic;
--		  i_SW_3       : in std_logic;
--		  i_SW_4       : in std_logic;
--		  i_SW_5       : in std_logic;
--		  i_SW_6       : in std_logic;
--		  i_SW_7       : in std_logic;
--		  i_SW_DV      : in std_logic;
		  
		  i_RX_Serial	 : in  std_logic;
		  o_TX_Serial	 : out std_logic;
		  
		  o_LED_0       : out std_logic;
		  o_LED_1       : out std_logic;
		  o_LED_2       : out std_logic;
		  o_LED_3       : out std_logic;
		  o_LED_4       : out std_logic;
		  o_LED_5       : out std_logic;
		  o_LED_6       : out std_logic;
		  o_LED_7       : out std_logic
		  
    );
end UART_MEMO_Top_ARDUINO_LOOP;

architecture Structural of UART_MEMO_Top_ARDUINO_LOOP is

    signal s_RX_DV      : std_logic;
    signal s_RX_Byte    : std_logic_vector(7 downto 0);

    signal s_TX_DV      : std_logic;
    signal s_TX_Byte    : std_logic_vector(7 downto 0);
    signal s_TX_Done    : std_logic;
    signal s_TX_Active  : std_logic;
	 
	 
	 signal s_SW_vector	: std_logic_vector(7 downto 0);
	 
	 
	 signal s_LED_vector	: std_logic_vector(7 downto 0);
	 
	 
	 signal s_o_TX_Serial : std_logic;
	 

begin


--    -- SWITCH INPUT
--    UART_SWITCHES_INPUT_inst : entity work.UART_SWITCHES_INPUT
--        generic map (
--            g_NUM_BYTES => 8
--        )
--        port map (
--            i_Clk        => i_Clk,
--            i_SW_0      => s_SW_vector(0),
--				i_SW_1      => s_SW_vector(1),
--				i_SW_2      => s_SW_vector(2),
--				i_SW_3      => s_SW_vector(3),
--				i_SW_4      => s_SW_vector(4),
--				i_SW_5      => s_SW_vector(5),
--				i_SW_6      => s_SW_vector(6),
--				i_SW_7      => s_SW_vector(7),
--				i_SW_DV     => i_SW_DV,
--				
--            
--            o_SW_DV      => s_TX_DV,
--            o_TX_Byte_in => s_TX_Byte
--        );
--		  
--		  s_SW_vector(0) <= i_SW_0;  
--		  s_SW_vector(1) <= i_SW_1;
--		  s_SW_vector(2) <= i_SW_2;
--		  s_SW_vector(3) <= i_SW_3;
--		  s_SW_vector(4) <= i_SW_4;
--		  s_SW_vector(5) <= i_SW_5;
--		  s_SW_vector(6) <= i_SW_6;
--		  s_SW_vector(7) <= i_SW_7;
		  

		  
		  
		      -- UART Transmitter
    UART_TX_inst : entity work.UART_TX
        generic map (
            g_CLKS_PER_BIT => 5208
        )
        port map (
            i_Clk       => i_Clk,
            i_TX_DV     => s_TX_DV,
            i_TX_Byte   => s_TX_Byte,
            o_TX_Active => s_TX_Active,
            o_TX_Serial => o_TX_Serial,
            o_TX_Done   => s_TX_Done
        );
		  


    -- UART Receiver
    UART_RX_inst : entity work.UART_RX
        generic map (
            g_CLKS_PER_BIT => 5208
        )
        port map (
            i_Clk       => i_Clk,
            i_RX_Serial => i_RX_Serial,
            o_RX_DV     => s_RX_DV,
            o_RX_Byte   => s_RX_Byte
        );


    -- MEMORY BLOCK
    Memo_Control_inst : entity work.Memo_Control_Ard
        generic map (
            g_NUM_BYTES => 8
				
        )
        port map (
            i_Clk       => i_Clk,
				reset			=> reset,
            i_RX_DV 		=> s_RX_DV,
            i_RX_Byte   => s_RX_Byte,
				
				i_TX_Active => s_TX_Active,
				i_TX_Done   => s_TX_Done,
				
				o_TX_DV  	=> s_TX_DV,
				o_TX_Byte	=> s_TX_Byte,
				o_LEDS_Byte => s_LED_vector
				
				
        );


		  
		  
		  
		  		      -- LED OUTPUT
    UART_LED_OUTPUT_inst : entity work.UART_LED_OUTPUT
        generic map (
            g_NUM_BYTES => 8
        )
        port map (
            i_Clk        => i_Clk,
				i_RX_Byte_LED => s_LED_vector,
				--i_RX_Byte_LED => s_RX_Byte,
            o_LED_0      => o_LED_0,
				o_LED_1      => o_LED_1,
				o_LED_2      => o_LED_2,
				o_LED_3      => o_LED_3,
				o_LED_4      => o_LED_4,
				o_LED_5      => o_LED_5,
				o_LED_6      => o_LED_6,
				o_LED_7      => o_LED_7
				
            
            
        );

end Structural;
