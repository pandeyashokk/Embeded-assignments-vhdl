library ieee;
use ieee.std_logic_1164.all;

entity lcm_tb is
end lcm_tb;

architecture test of lcm_tb is
	signal clk,reset:std_logic;
	signal num1,num2,lcm:integer;
	component lcm_fsm
		port(
		reset,clk:in std_logic;
        	num1,num2:in integer;
        	lcm:out integer
	);
	end component;
begin
	lcm1:lcm_fsm port map(clk=>clk,reset=>reset,num1=>num1,num2=>num2,lcm=>lcm);
	clock:process 
		variable count:integer;
		begin
			count:=0;
			while count<100 loop
			clk<='1';
			wait for 1 sec;
			clk<='0';
			wait for 1 sec;
			count:=count+1;
		end loop;
		wait;
			end process clock;
	process
	begin
		wait for 100 ns;
		reset<='1';
		num1<=6;
		num2<=4;
		wait for 10 sec;
		reset<='0';
		wait;
	end process;

end test;