library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Working_mem is
	port(CLK, CE_WR, CE_RD: in std_logic;
	Data_IN: in std_logic_vector(7 downto 0) ;
	Data_OUT: out std_logic_vector(7 downto 0)) ;
end ;

architecture Arch_Working_mem of Working_mem is
component RAM_MEMORY is
	port(Data_IN: in std_logic_vector(7 downto 0) ;	   
	CE_WR, CE_RD: in std_logic ;
	INDEX_RD, INDEX_WR: in std_logic_vector(3 downto 0) ;
	CLK: in std_logic ;
	Data_OUT: out std_logic_vector(7 downto 0)) ;
end component;	

component C4U_WR is
	port(WR, CLK: in std_logic ;
	COUNT: out std_logic_vector(3 downto 0)) ;
end component;	

component C4U_RD is
	port(RD, CLK: in std_logic ;
	COUNT: out std_logic_vector(3 downto 0)) ;
end component;		

Signal S_Read, S_Wright: std_logic ;
signal Write, Read: std_logic_vector(3 downto 0);
begin
	COUNTER_WR: C4U_WR port map(CE_WR, CLK, Write) ;
	COUNTER_RD: C4U_RD port map(CE_RD, CLK, Read) ;
	RAM_MEM: RAM_MEMORY port map(Data_IN, CE_WR, CE_RD, Read, Write, CLK, Data_OUT) ;
end ;