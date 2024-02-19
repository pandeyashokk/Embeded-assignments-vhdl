library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_flipflop is
    Port ( J, K, CLK, CLR : in  STD_LOGIC;
           Q, Qn           : out STD_LOGIC);
end JK_flipflop;

architecture Behavioral of JK_flipflop is
    signal Q_temp : std_logic;
begin
    process (CLK, CLR)
    begin
        if CLR = '1' then
            Q_temp <= '0';
        elsif rising_edge(CLK) then
            if J = '1' and K = '1' then
                Q_temp <= not Q_temp;
            elsif J = '1' then
                Q_temp <= '1';
            elsif K = '1' then
                Q_temp <= '0';
            end if;
        end if;
    end process;
    
    Q <= Q_temp;
    Qn <= not Q_temp;

end Behavioral;
