library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memo_Control_Ard_SEND is
    generic (
        g_NUM_BYTES       : integer := 4;
        g_CLKS_PER_SECOND : integer := 50000 --000
    );
    port (
        i_Clk         : in std_logic;
        reset         : in std_logic;
        i_RX_DV       : in std_logic;
        i_RX_Byte     : in std_logic_vector(7 downto 0);

        i_TX_Active   : in std_logic; 
        i_TX_Done     : in std_logic;

        o_TX_DV       : out std_logic;
        o_TX_Byte     : out std_logic_vector(7 downto 0);

        o_LEDS_Byte   : out std_logic_vector(7 downto 0)
    );
end Memo_Control_Ard_SEND;

architecture Behavioral of Memo_Control_Ard_SEND is

    type t_State is (SHOWING_LEDS, SENDING_TX);
    signal r_State : t_State := SHOWING_LEDS;

    type t_Memory is array (0 to g_NUM_BYTES - 1) of std_logic_vector(7 downto 0);
    signal r_Mem : t_Memory := (others => (others => '0'));

    signal r_Recv_Index : integer range 0 to g_NUM_BYTES := 0;
    signal r_Show_Index : integer range 0 to g_NUM_BYTES := 0;
    signal r_Send_Index : integer range 0 to g_NUM_BYTES := 0;

    signal r_Counter : integer range 0 to 2*g_CLKS_PER_SECOND := 0; --max 2s

    signal r_TX_DV : std_logic := '0';
    signal r_Waiting_For_Next_Byte : std_logic := '0';
	 signal r_Waiting_1s : std_logic := '0';

begin

    o_TX_DV <= r_TX_DV;

    process(i_Clk, reset)
    begin
        if reset = '0' then
            r_State       <= SHOWING_LEDS;
            r_Recv_Index  <= 0;
            r_Show_Index  <= 0;
            r_Send_Index  <= 0;
            r_Counter     <= 0;
            r_Mem(0)      <= "00000011";
				r_Mem(1)      <= "00000110";
            o_TX_Byte     <= (others => '0');
            r_TX_DV       <= '0';
            o_LEDS_Byte   <= (others => '0');
            r_Waiting_For_Next_Byte <= '0';
				r_Waiting_1s            <= '0';

        elsif rising_edge(i_Clk) then

            case r_State is

                -- Show bytes on LEDs one by one each second
                when SHOWING_LEDS =>
                    if r_Counter = 2*g_CLKS_PER_SECOND - 1 then
                        r_Counter <= 0;
                        o_LEDS_Byte <= r_Mem(r_Show_Index);
                        if r_Show_Index = g_NUM_BYTES - 1 then
                            r_Show_Index <= 0;
                            r_Send_Index <= 0;
                            r_State <= SENDING_TX;
                        else
                            r_Show_Index <= r_Show_Index + 1;
                        end if;
                    else
                        r_Counter <= r_Counter + 1;
                    end if;

                -- Send bytes over UART one by one
                when SENDING_TX =>
						  
                    if r_TX_DV = '0' and i_TX_Active = '0' and r_Waiting_For_Next_Byte = '0' then
                        o_LEDS_Byte<= "00100000";
								-- Start transmission of new byte
                        o_TX_Byte <= r_Mem(r_Send_Index);
                        r_TX_DV <= '1';
                        r_Waiting_For_Next_Byte <= '1';  -- Prevent retriggering until done

                    elsif r_TX_DV = '1' then
                        -- Pulse ends
                        r_TX_DV <= '0';

                    elsif (i_TX_Done = '1' and i_TX_Active = '0' and r_Waiting_For_Next_Byte = '1') or r_Waiting_1s = '1'  then
                        
								o_LEDS_Byte<= "10000000";
								-- Transmission finished, wait 1s before next
								r_Waiting_1s <= '1';
                        if r_Counter = g_CLKS_PER_SECOND - 1 then
                            r_Counter <= 0;
                            r_Waiting_For_Next_Byte <= '0'; -- Ready for next byte
									 r_Waiting_1s <= '0';
                            if r_Send_Index = g_NUM_BYTES - 1 then
                                r_Send_Index <= 0;
                                r_State <= SHOWING_LEDS; -- Loop back to receive again
                            else
                                r_Send_Index <= r_Send_Index + 1;
                            end if;
                        else
                            r_Counter <= r_Counter + 1;
                        end if;
                    end if;

            end case;

        end if;
    end process;

end Behavioral;
