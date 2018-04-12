LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY clk_sep IS

PORT(
		Clk           : IN    std_logic;
		Clk_Out       : OUT   std_logic := '0'
	 ); 
END;  

ARCHITECTURE A_clk_sep OF clk_sep IS 

signal T_clk    : std_logic := '0';
signal clkVal : std_logic_vector(5 downto 0) := ( others=> '0');

BEGIN     

Clk_Out  <= T_clk;

PROCESS(Clk) 
BEGIN       
if (Clk'event and Clk='1') then
   if clkVal < 16 then
		clkVal <= clkVal + 1;
		T_clk  <= '1';
	elsif clkVal < 31 then
		clkVal <= clkVal + 1;
		T_clk  <= '0';
   else	
		clkVal <= "000000";
		T_clk  <= '0';
	end if;	
end if;
END  PROCESS; 
END architecture A_clk_sep;