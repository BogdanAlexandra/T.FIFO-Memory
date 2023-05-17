library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RAM_MEMORY is
	port(Data_IN: in std_logic_vector(7 downto 0) ;	   
	CE_WR, CE_RD: in std_logic ;
	INDEX_RD, INDEX_WR: in std_logic_vector(3 downto 0) ;
	CLK: in std_logic ;
	Data_OUT: out std_logic_vector(7 downto 0)) ;
end ;

architecture Arch_RAM_MEMORY of RAM_MEMORY is  
type mem is array (0 to 15) of std_logic_vector(7 downto 0);
begin 	  
	process(Data_IN, CE_WR, CE_RD, INDEX_RD, INDEX_WR, CLK)	  
	variable RAM: mem :=(x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00");
	begin
		if CLK'EVENT and CLK = '1' then		
			if CE_WR = '1' and CE_RD = '1' then		
				RAM(conv_integer(unsigned(INDEX_WR))) := Data_IN ;
				Data_OUT <= RAM(conv_integer(unsigned(INDEX_RD))) ;
			elsif CE_WR = '1' then		   	    
				RAM(conv_integer(unsigned(INDEX_WR))) := Data_IN ;	
			elsif CE_RD = '1' then
				Data_OUT <= RAM(conv_integer(unsigned(INDEX_RD))) ;
			end if ;
		end if ;		
	end process ;		
end ;
