library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity gcd_fsm is
        port (
	reset,clk:in std_logic;
        num1,num2:in integer;
        gcd:out integer
        );        
        
end gcd_fsm;

architecture gcd_arch of gcd_fsm is
	Type state is (START,INPUT,CHECK,UPDATEX,UPDATEY,OUTPUT);
	signal ps,ns:state;
begin
                sl:process(clk,reset)
		begin
			if(reset='1') then
				ps<=start;
			elsif(rising_edge(clk)) then
				ps<=ns;
			end if;
		end process sl;

		cl:process(num1,num2,ps)
			Variable x,y,z:integer;
		begin
			case ps is
				when START=>
					gcd<=10;
					ns<=INPUT;
				when INPUT=>
					x:=num1;
					y:=num2;
					z:=x*y;
					ns<=CHECK;
				when CHECK=>
					if(x>y) then
					ns<=UPDATEX;
						    elsif(x<y) then
							    ns<=UPDATEY;
								else
									ns<=OUTPUT;
					end if;
				when UPDATEX=>
					x:=x-y;
					ns<=CHECK;
				when UPDATEY=>
					y:=y-x;
					ns<=CHECK;
				when OUTPUT=>
					gcd<=z/x;
					ns<=START;
				when OTHERS=>
					ns<=INPUT;
				end case;
			end process cl; 
end gcd_arch;