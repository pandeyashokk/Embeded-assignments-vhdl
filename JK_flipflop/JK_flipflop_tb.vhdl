library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_flipflop_tb is
end JK_flipflop_tb;

architecture Behavioral of JK_flipflop_tb is
    -- Component declaration for the flip-flop under test
    component JK_flipflop
        Port ( J, K, CLK, CLR : in  STD_LOGIC;
               Q, Qn           : out STD_LOGIC);
    end component;
    
    -- Signals for testbench
    signal J_tb, K_tb, CLK_tb, CLR_tb : STD_LOGIC;
    signal Q_tb, Qn_tb                 : STD_LOGIC;
    
    -- Clock period constants
    constant CLK_PERIOD : time := 10 ns;
    
begin
    
    -- Instantiate the flip-flop
    UUT: JK_FlipFlop port map (J => J_tb, K => K_tb, CLK => CLK_tb, CLR => CLR_tb, Q => Q_tb, Qn => Qn_tb);
    
    -- Stimulus process
    stimulus_process: process
    begin
        -- Initialize inputs
        J_tb <= '0';
        K_tb <= '0';
        CLR_tb <= '1'; -- Reset initially
        CLK_tb <= '0';
        wait for CLK_PERIOD;
        
        -- Release reset
        CLR_tb <= '0';
        wait for CLK_PERIOD;
        
        -- Test various input combinations
        J_tb <= '0'; K_tb <= '0'; wait for CLK_PERIOD;
        J_tb <= '0'; K_tb <= '1'; wait for CLK_PERIOD;
        J_tb <= '1'; K_tb <= '0'; wait for CLK_PERIOD;
        J_tb <= '1'; K_tb <= '1'; wait for CLK_PERIOD;
        
        -- Test CLR operation
        CLR_tb <= '1'; wait for CLK_PERIOD;
        CLR_tb <= '0'; wait for CLK_PERIOD;
        
        -- End simulation
        wait;
    end process stimulus_process;
    
end Behavioral;
