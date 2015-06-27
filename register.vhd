-- full impimentation of register

library ieee;   -- import ieee library and use it
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity reg is       
        port(
			 i     : in bit;
			 cl		:in bit; 
			rst		:in bit; -- for reset register
    ot           :out bit        
             );
end reg;

architecture bhv of reg is
   component flif  -- use 4 flip flops
port (
 d		:in bit; 
			 cl		:in bit; 
			rst		:in bit; 
             ot           :out bit     

 );
   end component;
   signal A1,A2,A3,A4,CLK,R,O1,O2,O3,O4: bit;
   
   begin
   f1:flif port map (A1,CLK,R,O1);
   f2:flif port map (A2,CLK,R,O2);
   f3:flif port map (A3,CLK,R,O3);
   f4:flif port map (A4,CLK,R,O4);
   
   CLK<= cl;
   R<=rst;
   A1<=i;
   A2<=O1;
   A3<=O2;
   A4<=O3;
	ot<=O4;
	end bhv;