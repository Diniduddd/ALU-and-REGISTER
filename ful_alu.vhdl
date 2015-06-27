-- the full alu with 2 registers

library ieee;   -- import ieee library and use it
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ful_alu is       
        port(
			 a     : in bit;
			 b     : in bit;
			 sl:in std_logic_vector(1 downto 0);
			 cl		:in bit; 
			rst		:in bit; 
			ot           :out bit  ;
			rm :out bit
             );
end ful_alu;

architecture inside of ful_alu is
   component reg -- use 2 registers for give inputs
port (
 i     : in bit;
			 cl		:in bit; 
			rst		:in bit; 
    ot           :out bit         

 );
   end component;
   
   component alu  -- use for proform arthmatic operations
port (
  a0		:in bit; 
			 b0		:in bit; 
			 cl	: in bit;
			 s     : in std_logic_vector(1 downto 0);     
                    
                    
             Cout          :out bit;       
             f0           :out bit             

 );
   end component;
   
   signal Ai,Bi,clk,R,Ao,Bo,outp,rim: bit;
   signal S : std_logic_vector(1 DOWNTO 0);
   
   begin
   reg_A:reg port map (Ai,clk,R,Ao);
   reg_B:reg port map (Bi,clk,R,Bo);
   al:alu port map (Ao,Bo,clk,S,rim,outp);
   
   
   Ai<= a;
   Bi<=b;
   clk<=cl;
   S<=sl;
   r<=rst;
   ot<=outp;
   rm<=rim;
   
   end inside;