-- for test the full alu

library ieee;
use ieee.std_logic_1164.all;

entity TB_falu IS
end TB_falu;

architecture TEST of TB_falu is
   component ful_alu
port (
 a     : in bit;
			 b     : in bit;
			 sl:in std_logic_vector(1 downto 0);
			 cl		:in bit; 
			rst		:in bit; 
			ot           :out bit  ;
			rm :out bit     

 );
   end component; 

signal A,B,CLK,Rset,outp,Rim: bit;
signal S : std_logic_vector(1 DOWNTO 0);   
begin
   DUT:ful_alu port map (A,b,S,CLK,Rset,outp,Rim);  

STIMULUS: process
    begin
	
	 Rset<='1'; -- set to 1 becose input 0 reset all registers
   S<="11";
     A<='1';B<='1';
      wait for 10 ns;
      A<='0';B<='1';
      wait for 10 ns;
      A<='0';B<='0';
      wait for 10 ns;
      A<='1';B<='0';
      wait for 10 ns;
      
	  
   end process STIMULUS;
   
    clock: process
    begin
	
	
   
     CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
       CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
       CLK<='0';
      wait for 5 ns;
     CLK<='1';
     wait for 5 ns;
	  CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
      CLK<='0';
      wait for 5 ns;
      CLK<='1';
      wait for 5 ns;
   end process clock;
end TEST;   