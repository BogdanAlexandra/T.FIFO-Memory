
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debouncer is
Port(
    clk:in STD_LOGIC;
    btn:in STD_LOGIC;
    Enable:out STD_LOGIC
    
);
end debouncer;

architecture Behavioral of debouncer is
signal Q:STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');
signal Q1:STD_LOGIC;
signal Q2:STD_LOGIC;
signal Q3:STD_LOGIC;

begin
CNTER: process(clk)
begin
    if(rising_edge(clk)) then
        Q<=Q+1;
    end if;

end process;


DFF1:process(clk)
begin
    if(rising_edge(clk)) then
        if(Q=x"FFFF") then
            Q1<=btn;
        end if;
     end if;
end process;

DFF2:process(clk)
begin
    if(rising_edge(clk)) then
        Q2<=Q1;
        end if;
end process;

DFF3:process(clk)
begin
    if(rising_edge(clk)) then
        Q3<=Q2;
        end if;
end process;

Enable<=Q2 AND NOT Q3;
end Behavioral;
