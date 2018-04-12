LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--USE ieee.std_logic_unsigned.all;
--USE ieee.std_logic_signed.all;
--USE ieee.numeric_std.all;
use ieee.std_logic_arith.all;

ENTITY System_reset IS
PORT(
		CLK              : IN  STD_LOGIC;
		
		HW_Reset         : OUT std_logic := '0';--INOUT std_logic :='Z'; 
		SW_Reset         : IN std_logic; 
		
		Wr_timer         : IN std_logic; 
		H_timer          : IN std_logic_vector (7 downto 0);  --count by us
		R_timer          : OUT STD_LOGIC_VECTOR (7 downto 0)  := (others => '0'); --for setting read
		
		Trigger_Reset    : IN std_logic
	);
END;  

ARCHITECTURE A_System_reset OF System_reset IS 

signal CNTVal          : SIGNED(23 downto 0) := ( others=> '0'); --max 16M
signal sR_timer        : STD_LOGIC_VECTOR (7 downto 0)  := (others => '0');
signal WrPrev          : STD_LOGIC := '0';
signal triggerPrev     : STD_LOGIC := '0';
signal TR              : STD_LOGIC := '0';

BEGIN     

R_timer <= sR_timer;

WriteControl : process (CLK, Wr_timer, SW_Reset) is 
begin 
   if SW_Reset = '1' then
		if rising_edge(CLK) then
			 WrPrev      <= Wr_timer;
			 triggerPrev <= Trigger_Reset;
		end if;
	end if;
end process WriteControl;

reset : PROCESS(CLK, SW_Reset, Wr_timer, WrPrev,H_timer, triggerPrev,Trigger_Reset,CNTVal,sR_timer) 
BEGIN  
	 if SW_Reset = '1' then
		--Write
		if( WrPrev /= Wr_timer) then
			CNTVal     <= signed("00" & H_timer(7 downto 0) & "11111010000000");
			sR_timer   <= H_timer;
			HW_Reset   <= '1';
			TR 		  <= '0';
		else
			--keep 
			sR_timer <= sR_timer;
			--Trigger Reset
			if (triggerPrev /= Trigger_Reset) then
				CNTVal     <= signed("00" & sR_timer(7 downto 0) & "11111010000000");
				HW_Reset   <= '1';
				TR <= '1';
			else
				--Trigger Reset
				if rising_edge(CLK) then
					if TR = '1' then
						if CNTVal >= 1 then
							CNTVal     <= CNTVal - 1;
							HW_Reset   <= '0';
							TR         <= '1';
						else 	
							CNTVal     <= signed("00" & sR_timer(7 downto 0) & "11111010000000");
							HW_Reset   <= '1';
							TR         <= '0';
						end if; 
					else
							CNTVal     <= signed("00" & sR_timer(7 downto 0) & "11111010000000");
							HW_Reset   <= '1';
							TR         <= '0';
					end if;	
				end if;
			end if;
	--		--test
	--		if rising_edge(CLK) then
	--			if CNTVal <= 1 then
	--				CNTVal     <= signed("00" & sR_timer(7 downto 0) & "11111010000000");
	--			else 	
	--				CNTVal <= CNTVal - 1;
	--			end if;
	--			if CNTVal >= signed("000" & sR_timer(7 downto 1) & "11111010000000") then
	--				Reset_CPLD <= '0';
	--			else 
	--				Reset_CPLD <= '1';
	--			end if;
	--		end if;
		end if; 
	else
			CNTVal     <= "000000000011111010000000";
			sR_timer   <= "00001010";
			HW_Reset   <= '1';
			TR 		  <= '0';
	end if;
END  PROCESS reset; 
END architecture A_System_reset;