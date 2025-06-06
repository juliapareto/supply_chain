library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memo_Control is
    generic (
        g_NUM_BYTES       : integer := 4;
        g_CLKS_PER_SECOND : integer := 50000000
    );
    port (
        i_Clk         : in std_logic;
        reset         : in std_logic;
        i_RX_DV       : in std_logic;
        i_RX_Byte     : in std_logic_vector(7 downto 0);
        o_LEDS_Byte   : out std_logic_vector(7 downto 0)
    );
end Memo_Control;

architecture Behavioral of Memo_Control is

    type t_State is (RECEIVING, SENDING);
    signal r_State : t_State := RECEIVING;

    type t_Memory is array (0 to g_NUM_BYTES - 1) of std_logic_vector(7 downto 0);
    signal r_Mem : t_Memory := (others => (others => '0'));

    signal r_Recv_Index : integer range 0 to g_NUM_BYTES := 0;
    signal r_Send_Index : integer range 0 to g_NUM_BYTES := 0;

    signal r_Counter : integer range 0 to g_CLKS_PER_SECOND := 0;
	 signal LED_vector_test : std_logic_vector(7 downto 0);

	 
	 

begin

    process(i_Clk, reset)
    begin
        if reset = '0' then
            r_State       <= RECEIVING;
            r_Recv_Index  <= 0;
            r_Send_Index  <= 0;
            r_Counter     <= 0;
            r_Mem         <= (others => (others => '0'));
            --LED_vector_test <= LED_vector_test(6 downto 0) & '1';
				--o_LEDS_Byte <= LED_vector_test(6 downto 0) & '1';
				LED_vector_test <= (others => '0');
				
				o_LEDS_Byte <= "00000000";
				
        elsif rising_edge(i_Clk) then

            case r_State is

                -- Store incoming bytes from UART RX into memory
                when RECEIVING =>
						  
                    if i_RX_DV = '1' then
								--LED_vector_test <= LED_vector_test(6 downto 0) & '1';
								--o_LEDS_Byte <= LED_vector_test(6 downto 0) & '1';
                        o_LEDS_Byte <= "00010000";
								r_Mem(r_Recv_Index) <= i_RX_Byte;
                        if r_Recv_Index = g_NUM_BYTES - 1 then
                            r_Recv_Index <= 0;
                            r_State <= SENDING;
                        else
                            r_Recv_Index <= r_Recv_Index + 1;
                        end if;
						  else
								o_LEDS_Byte <= "10000000";
                    end if;

                -- Periodically (1s) show the stored values on LEDs
                when SENDING =>
						  
                    if r_Counter = g_CLKS_PER_SECOND - 1 then
								--LED_vector_test <= LED_vector_test(6 downto 0) & '1';
								--o_LEDS_Byte <= LED_vector_test(6 downto 0) & '1';
						  
                        r_Counter <= 0;
                        o_LEDS_Byte <= r_Mem(r_Send_Index);
                        if r_Send_Index = g_NUM_BYTES - 1 then
                            r_Send_Index <= 0;
                        else
                            r_Send_Index <= r_Send_Index + 1;
                        end if;
                    else
                        r_Counter <= r_Counter + 1;
								--o_LEDS_Byte <= "00000011";
                    end if;

            end case;
        end if;
    end process;

end Behavioral;