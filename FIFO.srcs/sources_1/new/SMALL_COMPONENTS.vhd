library	ieee ;
use ieee.std_logic_1164.all ;	

entity AND2_gate is
	port (x1, x2: in std_logic ;
	y: out std_logic);
end ;
architecture Arch_AND2_gate of AND2_gate is
begin 
	y <= x1 and x2 ;
end ;	 

library	ieee ;
use ieee.std_logic_1164.all ;

entity AND3_gate is
	port (x1, x2, x3: in std_logic ;
	y: out std_logic);
end ;
architecture Arch_AND3_gate of AND3_gate is
begin 
	y <= x1 and x2 and x3 ;
end ;		

library	ieee ;
use ieee.std_logic_1164.all ;

entity AND4_gate is
	port (x1, x2, x3, x4: in std_logic ;
	y: out std_logic);
end ;
architecture Arch_AND4_gate of AND4_gate is
begin 
	y <= x1 and x2 and x3 and x4 ;
end ;


library	ieee ;
use ieee.std_logic_1164.all ;	

entity OR2_gate is
	port(x1, x2: in std_logic ;
	y: out std_logic);
end ;
architecture Arch_OR2_gate of OR2_gate is
begin 
	y <= x1 or x2 ;
end ;	   

library	ieee ;
use ieee.std_logic_1164.all ;	

entity OR3_gate is
	port(x1, x2, x3: in std_logic ;
	y: out std_logic);
end ;
architecture Arch_OR3_gate of OR3_gate is
begin 
	y <= x1 or x2 or x3;
end ;	 

library	ieee ;
use ieee.std_logic_1164.all ;	

entity INV is
	port(x: in std_logic ;
	y: out std_logic) ;
end ;

architecture Arch_INV of INV is
begin 
	y <= not(x);
end ;

library	ieee ;
use ieee.std_logic_1164.all ;	

entity D_flip_flop is
	port(CLK, D, R, S: in std_logic ;
	Q: out std_logic);
end ;

architecture Arch_D_flip_flop of D_flip_flop is
begin
	process(CLK, D, R, S)
	variable aux: std_logic ;
	begin
		if R='1' then aux:='0' ;
		elsif S='1' then aux:='1' ;
		elsif CLK'EVENT and CLK='1' then aux:=D ;
		end if ;
	Q <= aux ;
	end process ;
end ;