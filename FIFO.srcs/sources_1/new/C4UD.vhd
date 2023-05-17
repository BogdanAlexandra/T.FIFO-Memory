library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity C4UD is
	port(CE_WR, CE_RD, CLK: in std_logic ;
	Q: out std_logic_vector(3 downto 0)) ;
end ;

architecture Arch_C4UD of C4UD is
begin
	process(CE_WR, CE_RD, CLK)
	variable X: std_logic_vector(3 downto 0) := "0000" ;
	begin
		if CLK = '1' and CLK'EVENT then
			if CE_WR = '1' and CE_RD = '0' then
				X := X + '1' ;
			elsif CE_WR = '0' and CE_RD = '1' then
				X := X - '1' ;	  
			end if ;
		end if ;
	Q <= X ;
	end process ;
end ;