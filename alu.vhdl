-- the alu with out registers 


library ieee;   -- import ieee library and use it
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is       
        port(
			 a0		:in bit; 
			 b0		:in bit; 
			 cl	: in bit;
			 s     : in std_logic_vector(1 downto 0);     
                    
                    
             Cout          :out bit;       
             f0           :out bit        
             );
end alu;

architecture inside of  alu is    -- Declaring the architecture

signal tmp,c0:bit;
begin
mn: Process (s,a0,b0,cl,c0,tmp)

begin


if (s="00") then
f0<= a0 and b0 ;
Elsif(s="01") then
f0<= a0 or b0 ;
Elsif(s="10") then
f0<= a0 xor b0 ;
Elsif(s="11") then
f0<= a0 xor (c0 xor b0);


tmp<=(a0 and b0) or (a0 and c0) or (b0 and c0);
Cout<=tmp;
if (cl='1') then
c0<=tmp;
end if;

	
	
End if;


end  process mn; 

  
end inside;