--flip flop (basic element of register)

library ieee;   -- import ieee library and use it
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity flif is       
        port(
			 d		:in bit; 
			 cl		:in bit; 
			rst		:in bit; -- for reset flip flop
    ot           :out bit        
             );
end flif;

architecture wrk of  flif is    -- Declaring the architecture
begin
Process (d,cl,rst)
variable  temp : bit;
begin
if (rst='0') then
	temp:='0';


Elsif  cl'event and cl='1' then
temp:=d;


End if;
ot<= temp ;
end  process;      
end wrk;