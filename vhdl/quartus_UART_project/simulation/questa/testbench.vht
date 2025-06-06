LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE Behavior OF testbench IS

    COMPONENT UART_MEMO_Top_ARDUINO_SEND
        PORT (
            i_Clk       : in  std_logic;
            reset       : in  std_logic;
            i_RX_Serial : in  std_logic;
				o_TX_Serial : out std_logic;

            o_LED_0     : out std_logic;
            o_LED_1     : out std_logic;
            o_LED_2     : out std_logic;
            o_LED_3     : out std_logic;
            o_LED_4     : out std_logic;
            o_LED_5     : out std_logic;
            o_LED_6     : out std_logic;
            o_LED_7     : out std_logic
        );
    END COMPONENT;

    SIGNAL CLOCK_50  : STD_LOGIC := '0';
    SIGNAL s_reset   : STD_LOGIC := '0';
    SIGNAL s_RX_PIN  : STD_LOGIC := '1'; -- default HIGH
	 SIGNAL s_TX_PIN  : STD_LOGIC ;
    SIGNAL S_LEDS    : STD_LOGIC_VECTOR(7 DOWNTO 0);

    CONSTANT c_BIT_PERIOD : TIME := 5208 * 20 ns; -- 1 bit = 5208 clock cycles

    PROCEDURE UART_SEND_BYTE(signal uart_line : OUT std_logic; data : IN std_logic_vector(7 downto 0)) IS
    BEGIN
        uart_line <= '0'; -- start bit
        WAIT FOR c_BIT_PERIOD;
        FOR i IN 0 TO 7 LOOP
            uart_line <= data(i); -- send LSB first
            WAIT FOR c_BIT_PERIOD;
        END LOOP;
        uart_line <= '1'; -- stop bit
        WAIT FOR c_BIT_PERIOD;
    END PROCEDURE;

BEGIN

    -- DUT instantiation
    U1: UART_MEMO_Top_ARDUINO_SEND
        PORT MAP (
            i_Clk     => CLOCK_50,
            reset     => s_reset,
            i_RX_Serial  => s_RX_PIN,
				o_TX_Serial  => s_TX_PIN,
            o_LED_0   => S_LEDS(0),
            o_LED_1   => S_LEDS(1),
            o_LED_2   => S_LEDS(2),
            o_LED_3   => S_LEDS(3),
            o_LED_4   => S_LEDS(4),
            o_LED_5   => S_LEDS(5),
            o_LED_6   => S_LEDS(6),
            o_LED_7   => S_LEDS(7)
        );

    -- Clock generation (50MHz)
    clock_process: PROCESS
    BEGIN
        LOOP
            CLOCK_50 <= '0';
            WAIT FOR 10 ns;
            CLOCK_50 <= '1';
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS;

    -- Stimulus
    vectors: PROCESS
    BEGIN
	s_reset <= '0';
        WAIT FOR 100 ns;
        s_reset <= '1';
        WAIT FOR 100 ns;
        

        -- Send 0x01, 0x02, 0x03, 0x04
        UART_SEND_BYTE(s_RX_PIN, "00000001"); -- 0x01
        UART_SEND_BYTE(s_RX_PIN, "00000010"); -- 0x02
        UART_SEND_BYTE(s_RX_PIN, "00000011"); -- 0x03
        UART_SEND_BYTE(s_RX_PIN, "00000100"); -- 0x04

        WAIT; -- wait forever
    END PROCESS;

END Behavior;
