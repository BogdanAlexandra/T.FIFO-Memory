library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity State is
	port(CE_RD, CE_WR, CLK: in std_logic ;
	EMPTY, LAST, FULL: out std_logic) ;
end ;

architecture Arch_State of State is

component C4UD is
	port(CE_WR, CE_RD, CLK: in std_logic ;
	Q: out std_logic_vector(3 downto 0)) ;
end component;	  


signal Q: std_logic_vector(3 downto 0) ;
begin		  
	U1: C4UD port map(CE_WR, CE_RD, CLK, Q) ;
	process(CE_WR, CE_RD, CLK) 	
	variable A, S0, B, C, D, E, S2, X0, X1, X2, X3, X4: std_logic ; 
	variable V_FULL, V_LAST: std_logic := '0' ;	 
	variable V_EMPTY: std_logic := '1' ;
	begin 
		A := Q(0) and (not Q(1)) and (not Q(2)) and (not Q(3)) ;
		C := Q(1) and Q(2) and Q(3) ;
		S0 := CE_RD and A ;	
		X0 := S0 or V_EMPTY ;
		B := (not CE_WR) and X0 ;
		X1 := V_LAST and (not CE_RD) and (not CE_WR) ;
		X2 := CE_WR and C ;
		X3 := (not C) and CE_RD and V_LAST ;
		D := X1 or X2 or X3 ;
		S2 := CE_WR and V_LAST ;
		X4 := S2 or V_FULL ;
		E := (not CE_RD) and X4 ;  
		if CLK = '1' and CLK'EVENT then
			V_EMPTY := B ;
			V_LAST := D ;
			V_FULL := E ;
		end if ;
		EMPTY <= V_EMPTY ;
		LAST <= V_LAST ;
		FULL <= V_FULL ;
	end process ;  
end ;

