LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

package Package_PWM_Module is

COMPONENT PWM_Module
	PORT (
	CLK : IN STD_LOGIC;
	Config : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Duty : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Frq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	nReset : IN STD_LOGIC;
	PWM : OUT STD_LOGIC;
	Wr : IN STD_LOGIC
	);
END COMPONENT;

end package Package_PWM_Module;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
 
entity PWM_Module is
GENERIC (
  datawidth : integer := 8
  );
PORT 
  ( 
  nReset  : IN  STD_LOGIC;
  CLK     : IN  STD_LOGIC;
  Wr      : IN  STD_LOGIC;
  Config  : IN  STD_LOGIC_VECTOR(datawidth-1 downto 0);
  Duty    : IN  STD_LOGIC_VECTOR (15 downto 0);
  Frq     : IN  STD_LOGIC_VECTOR (15 downto 0); 
  PWM     : OUT STD_LOGIC := '0'
  );
end entity PWM_Module;
 
architecture a_PWM_Module of PWM_Module is

signal P        : STD_LOGIC            := '0';
signal sConfig  : STD_LOGIC_VECTOR (datawidth-1 downto 0);
signal DutyVal  : SIGNED(15 downto 0)   := ( others=> '0');
signal FrqVal   : SIGNED(15 downto 0)   := ( others=> '0');
--temp coutner
signal T_Frq    : SIGNED(15 downto 0)   := ( others=> '0'); 
signal T_Duty   : SIGNED(15 downto 0)   := ( others=> '0'); 

begin

PWM <= P and sConfig(0);

PWM_CTRL :process (nReset, CLK, Wr) is
begin
  if (nReset = '0') then
    sConfig <= (others => '0');  
    FrqVal  <= "0011111010000000";  
    DutyVal <= "0001111101000000";
  elsif rising_edge(clk) then
    if Wr = '0' then
      sConfig <= Config;
      FrqVal <= signed(Frq);
      DutyVal <= signed(Duty);
    else
      sConfig <= sConfig;
      FrqVal <= FrqVal;
      DutyVal <= DutyVal;
    end if;
  end if;
end process PWM_CTRL;

PWM_G : process (Wr,nReset, CLK, FrqVal,DutyVal) is 
begin 
  if (Wr = '0') then
    p <= '0';
    T_Frq <= FrqVal;
    T_Duty <= DutyVal;
  elsif rising_edge(CLK) then
    --duty & pulse
    if T_Frq >= 1 then
      T_Frq <= T_Frq -1;
      --duty
      if T_Duty >= 1 then
        T_Duty <= T_Duty -1;
        p <= '1';
      else
        T_Duty <= (others => '0');
        p <= '0';
      end if;
    else
      T_Frq  <= FrqVal;
      T_Duty <= DutyVal;
      p      <= '0';
    end if;
  end if;
end process PWM_G;

end architecture a_PWM_Module;
