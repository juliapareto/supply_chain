library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_uart_top is
end tb_uart_top;

architecture behavior of tb_uart_top is

    -- Component under test
    component UART_Memo_Top
        
        port (
            i_Clk      : in std_logic;
            i_RX_Serial: in std_logic;
            o_TX_Serial: out std_logic
        );
    end component;

    -- Signals
    signal clk        : std_logic := '0';
    signal rx_serial  : std_logic := '1'; -- Idle = HIGH
    signal tx_serial  : std_logic;
    
    -- Clock period for 50 MHz
    constant clk_period : time := 20 ns; -- 1 / 50 MHz

    -- Procedure to simulate UART byte transmission
    procedure uart_send_byte(signal line : out std_logic; byte : std_logic_vector(7 downto 0)) is
        constant clks_per_bit : integer := 5208;
    begin
        -- Start bit
        line <= '0';
        wait for clk_period * clks_per_bit;

        -- Data bits (LSB first)
        for i in 0 to 7 loop
            line <= byte(i);
            wait for clk_period * clks_per_bit;
        end loop;

        -- Stop bit
        line <= '1';
        wait for clk_period * clks_per_bit;
    end procedure;

begin

    -- Clock process
    clk_process : process 
    begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
    end process;
	 
    -- Instantiate DUT
    uut: UART_Memo_Top
        port map (
            i_Clk       => clk,
            i_RX_Serial => rx_serial,
            o_TX_Serial => tx_serial
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Wait for some reset time
        wait for 100 us;

        -- Send 3 bytes
        uart_send_byte(rx_serial, "00000000001"); -- 0x001
		  wait for 100 ms;
        uart_send_byte(rx_serial, "00000000101"); -- 0x005
        wait for 100 ms;
		  uart_send_byte(rx_serial, "00000001001"); -- 0x009

        -- Wait long enough for loopback to occur
        wait for 100 ms;

        assert false report "Simulation finished." severity failure;
    end process;

end behavior;
