library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity C4U_WR is
	port(WR, CLK: in std_logic ;
	COUNT: out std_logic_vector(3 downto 0)) ;
end ;

architecture Arch_C4U_WR of C4U_WR is
begin
	process(WR, CLK)
	variable X: std_logic_vector(3 downto 0) := "0000" ;
	begin 
		if CLK = '1' and CLK'EVENT and WR = '1' then
			X := X + '1' ;
		end if ;
		COUNT <= X ;
	end process ;
end ;  


library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity C4U_RD is
	port(RD, CLK: in std_logic ;
	COUNT: out std_logic_vector(3 downto 0)) ;
end ;

architecture Arch_C4U_RD of C4U_RD is
begin
	process(RD, CLK)
	variable X: std_logic_vector(3 downto 0) := "0000" ;
	begin 
		if CLK = '1' and CLK'EVENT and RD = '1' then
			X := X + '1' ;
		end if ;
		COUNT <= X ;
	end process ;
end ; 