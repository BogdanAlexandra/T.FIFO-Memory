library ieee ;
use ieee.std_logic_1164.all;

entity CONTROL is
	port(PUSH, POP, FULL, EMPTY: in std_logic ;	   
	CE_WR, CE_RD: out std_logic) ;
end ;

architecture Arch_CONTROL of CONTROL is	 

component AND2_gate is
	port (x1, x2: in std_logic ;
	y: out std_logic);
end component;

component INV is
	port(x: in std_logic ;
	y: out std_logic) ;
end component;

signal N_EMPTY, N_FULL: std_logic := '0' ;
begin 			 
	T1: INV port map(EMPTY, N_EMPTY) ;
	T2: INV port map(FULL, N_FULL) ;
	T3: AND2_gate port map(POP, N_EMPTY, CE_RD) ;
	T4: AND2_gate port map(PUSH, N_FULL, CE_WR) ;
end ;
	