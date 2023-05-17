library	ieee ;
use ieee.std_logic_1164.all ;	
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;	 	
use ieee.std_logic_signed.all;	
use ieee.std_logic_arith.all;


entity FIFO is
	port(PUSH, POP, CLK: in std_logic ;
	Data_IN: in std_logic_vector(7 downto 0) ;
	CAT: out std_logic_vector(6 downto 0);
    AN:out std_logic_vector(3 downto 0);
	FULL, EMPTY, LAST: inout std_logic) ;
end ;	 	


architecture Arch_FIFO of FIFO is  
component State is
	port(CE_RD, CE_WR, CLK: in std_logic ;
	EMPTY, LAST, FULL: out std_logic) ;
end component;

component Working_mem is
	port(CLK, CE_WR, CE_RD: in std_logic;
	Data_IN: in std_logic_vector(7 downto 0) ;
	Data_OUT: out std_logic_vector(7 downto 0)) ;
end component; 

component CONTROL is
	port(PUSH, POP, FULL, EMPTY: in std_logic ;	   
	CE_WR, CE_RD: out std_logic) ;
end component;

component DEBOUNCER is 
Port(
    clk:in STD_LOGIC;
    btn:in STD_LOGIC;
    Enable:out STD_LOGIC
    
);
end component;

component SegDisp is
Port ( 
    clk:in std_logic;
   
    CAT: out std_logic_vector(6 downto 0);
    AN:out std_logic_vector(3 downto 0);
    Digit0:in std_logic_vector(3 downto 0);
    Digit1:in std_logic_vector(3 downto 0);
    Digit2:in std_logic_vector(3 downto 0);
    Digit3:in std_logic_vector(3 downto 0)
);
end component;

signal Data_OUT:  std_logic_vector(7 downto 0) ;
signal CE_WR, CE_RD, PUSH_D, POP_D: std_logic ;
begin 
	T1: DEBOUNCER port map(CLK, PUSH, PUSH_D) ;
	T2: DEBOUNCER port map(CLK, POP, POP_D) ;
	T3: CONTROL port map(PUSH_D, POP_D, FULL, EMPTY, CE_WR, CE_RD);
	T4: STATE port map(CE_RD, CE_WR, CLK, EMPTY, LAST, FULL) ;
	T5: Working_mem port map(CLK, CE_WR, CE_RD, Data_IN, Data_OUT);
	T6: SegDisp port map(CLK, CAT, AN, DATA_OUT(3 downto 0), DATA_OUT(7 downto 4), x"0", x"0") ; 

end ;