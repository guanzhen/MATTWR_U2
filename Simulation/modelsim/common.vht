LIBRARY ieee;
USE ieee.std_logic_1164.all;

package COMMON is

component MOD_CLKGEN
generic (period : time := 62.5 ns);
port (
  reset : in std_logic;
	clk_en : in std_logic;
	clk_o : out std_logic
);
end component;

component MOD_RESET
generic (delay : time := 100 ns);
port(
	reset_o : out std_logic
);
end component;

end package COMMON;

----------------------------------------------------------------
----------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity MOD_CLKGEN is
generic (period : time := 62.5 ns);
port (
  reset : in std_logic;
	clk_en : in std_logic;
	clk_o : out std_logic
);
end MOD_CLKGEN;

----------------------------------------------------------------
architecture logic of MOD_CLKGEN is

BEGIN

MODULE_CLK_GEN : PROCESS
BEGIN
  if (reset = '0') then
		clk_o <= '0';
		wait on reset;    
  elsif (clk_en = '0') then
		clk_o <= '0';
		wait on clk_en;
	else
		clk_o <= '1';
		wait for period/2;
		clk_o <= '0';
		wait for period/2;
	end if;
END PROCESS MODULE_CLK_GEN;

end architecture logic;

----------------------------------------------------------------
----------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MOD_RESET is
generic (delay : time := 100 ns);
port(
	reset_o : out std_logic
);
end MOD_RESET;

----------------------------------------------------------------
architecture logic of MOD_RESET is
BEGIN 

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
    -- code that executes only once
	reset_o <= '0';
	wait for delay;
	reset_o <= '1';                    
WAIT;                                                       
END PROCESS init;  

end architecture logic;

