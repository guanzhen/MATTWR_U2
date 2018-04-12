LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
 
-- Frqeunce 2-100kHz
-- duty 0-100%
entity PWM_Module is

PORT 
    ( 
	nReset  : IN  STD_LOGIC;
	CLK     : IN  STD_LOGIC;
   Wr      : IN  STD_LOGIC;
	ctrl    : IN  STD_LOGIC;
   Duty    : IN  STD_LOGIC_VECTOR (13 downto 0);
	Frq     : IN  STD_LOGIC_VECTOR (13 downto 0);
	
	PWM     : OUT STD_LOGIC := '0'
    );
end entity PWM_Module;
 
architecture a_PWM_Module of PWM_Module is

signal P        : STD_LOGIC            := '0';
signal DutyVal  : SIGNED(13 downto 0)   := ( others=> '0');
signal FrqVal   : SIGNED(13 downto 0)   := ( others=> '0');
signal WrPrev   : STD_LOGIC            := '0';
--temp coutner
signal T_Frq    : SIGNED(13 downto 0)   := ( others=> '0'); 
signal T_Duty   : SIGNED(13 downto 0)   := ( others=> '0'); 

begin

PWM <= P and ctrl;

PWM_G : process (Wr,nReset, CLK, WrPrev,DutyVal,FrqVal,Duty,Frq) is 
begin 
if (nReset = '0') then
		DutyVal <= "01111101000000";  
		FrqVal  <= "11111010000000";  
		T_Frq   <= "11111010000000";
		T_Duty  <= "01111101000000";
		p       <= '0';
else
	if( WrPrev /= Wr) then
		DutyVal <= signed(Duty);
		FrqVal  <= signed(Frq);
		T_Frq   <= signed(Frq);
		T_Duty  <= signed(Duty);
		p       <= '0';
	else
		DutyVal <= DutyVal;
		FrqVal  <= FrqVal;
		--PWM
		if rising_edge(CLK) then
			--duty & pulse
		   if T_Frq >= 1 then
			   T_Frq <= T_Frq -1;
				--duty
				if T_Duty >= 1 then
					T_Duty <= T_Duty -1;
					p <= '1';
				else
				   T_Duty <= "00000000000000";
					p <= '0';
				end if;
			else
			  T_Frq  <= FrqVal;
			  T_Duty <= DutyVal;
			  p      <= '0';
			end if;
		end if;
	end if;
end if;
end process PWM_G;

Wrsig : process (CLK) is 
begin 
if rising_edge(CLK) then
	 WrPrev      <= Wr;
end if;
end process Wrsig;

end architecture a_PWM_Module;
