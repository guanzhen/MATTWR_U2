library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use std.standard;

entity PWMMODULE is
GENERIC
  (
  BUSWIDTH : integer := 16;
  PWMBITWIDTH : integer := 16
  );
PORT 
  (
	iCLK         : IN STD_LOGIC;
	inRESET      : IN STD_LOGIC;   
	iWrPWMCONFIG : IN STD_LOGIC;
	iWrPWMPERIOD : IN STD_LOGIC;
	iWrPWMDUTY   : IN STD_LOGIC;
  iData        : IN STD_LOGIC_VECTOR(BUSWIDTH-1 downto 0);
  --Register Ouputs  
  oPWMCONFIG   : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0');
  oPWMPERIOD   : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0');
  oPWMDUTY     : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0')
  );
end PWMMODULE;

architecture LOGIC of PWMMODULE is
signal sPWMCONFIG : STD_LOGIC_VECTOR(15 downto 0):= (others=> '0');
signal sPWMPERIOD : SIGNED(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sDUTY      : SIGNED(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sIntPWMPERIOD : SIGNED(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sIntDUTY      : SIGNED(PWMBITWIDTH-1 downto 0):= (others=> '0');

begin

oPWMCONFIG <= sPWMCONFIG;
oPWMPERIOD <= std_logic_vector(sPWMPERIOD);
oPWMDUTY <= std_logic_vector(sDUTY);

PWM_CTRL : process(iData,inRESET,iCLK,iWrPWMCONFIG,iWrPWMDUTY,iWrPWMPERIOD) is
begin
if (inRESET = '0')then
  sPWMCONFIG <= (others=> '0');
  sPWMPERIOD <= (others=> '0');
  sDUTY      <= (others=> '0');
else
  if rising_edge(iWrPWMCONFIG) then
    sPWMCONFIG <= iData;
  end if;
  if rising_edge(iWrPWMPERIOD) then
    sPWMPERIOD <= SIGNED(iData);
  end if;
  if rising_edge(iWrPWMDUTY) then
    sDUTY <= SIGNED(iData);
  end if;
end if;

end process;

end architecture LOGIC;