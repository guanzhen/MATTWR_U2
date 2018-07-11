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
  oPWM         : OUT STD_LOGIC;
  --Register Ouputs  
  oPWMCONFIG   : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0');
  oPWMPERIOD   : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0');
  oPWMDUTY     : OUT std_logic_vector(PWMBITWIDTH-1 downto 0):= (others => '0')
  );
end PWMMODULE;

architecture LOGIC of PWMMODULE is
type OUTPUTSTATE is (IDLE,HI,LO);
type PWM_STATE is (RESET,IDLE,HI,LO);
signal sPWMCONFIG : STD_LOGIC_VECTOR(15 downto 0):= (others=> '0');
signal sPWMPERIOD : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sDUTY      : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sIntPWMPERIOD : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sIntDUTY   : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sOPState   : OUTPUTSTATE := IDLE;
signal sPWMState  : PWM_STATE   := RESET;
signal sEN        : STD_LOGIC   := '0';
signal sDEFOP     : STD_LOGIC_VECTOR(1 downto 0):= (others => '0');
begin

oPWMCONFIG <= sPWMCONFIG;
oPWMPERIOD <= std_logic_vector(sPWMPERIOD);
oPWMDUTY <= std_logic_vector(sDUTY);
sEN <= sPWMCONFIG(0); -- Enable bit
sDEFOP <= sPWMCONFIG(2 downto 1);
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
    sPWMPERIOD <= iData;
  end if;
  if rising_edge(iWrPWMDUTY) then
    sDUTY <= iData;
  end if;
end if;
end process;

PWM_G : process (iCLK,inRESET,iWrPWMCONFIG,iWrPWMDUTY,iWrPWMPERIOD) is
variable vDutyCnt : integer range 0 to 65535;
variable vPeriodCnt : integer range 0 to 65535;
variable vCounter : integer range 0 to 65535;
begin
if (inRESET = '0')then
  sPWMState <= RESET;
elsif rising_edge(iCLK) then
  case sPWMState is
  when RESET=>
    sPWMState <= IDLE;
  when IDLE=>    
    sOPState <= IDLE;
    vCounter := to_integer(unsigned(sPWMPERIOD(PWMBITWIDTH-1 downto 0)));
    if (sEN = '1') then
      sPWMState <= HI;
    end if;
  when HI=>
    sOPState <= HI;
    vCounter := vCounter - 1;
    vDutyCnt := to_integer(unsigned(sDUTY(PWMBITWIDTH-1 downto 0)));
    if (vCounter <= vDutyCnt) then -- should not happen
      sPWMState <= LO;
    end if;
    if (sEN = '0') or (iWrPWMCONFIG = '1') or (iWrPWMDUTY = '1') then
      sPWMState <= IDLE;
    end if;
  when LO=>
    sOPState <= LO;
    vCounter := vCounter - 1;
    if (vCounter = 0) then -- should not happen
      sPWMState <= HI;
      vCounter := to_integer(unsigned(sPWMPERIOD(PWMBITWIDTH-1 downto 0)));
    end if;
    if (sEN = '0') or (iWrPWMCONFIG = '1') or (iWrPWMDUTY = '1') then
      sPWMState <= IDLE;
    end if;
  end case;
end if;
end process;

PWM_O : process(sOPState,sDEFOP) is
begin
  case sOPState is
  when IDLE =>
    case sDEFOP is
      when b"00" => oPWM <= '0';
      when b"01" => oPWM <= '1';
      when b"10" => oPWM <= 'Z';
      when others => oPWM <= 'Z';
    end case;
  when HI =>
    oPWM <= '1';
  when LO =>
    oPWM <= '0';
  end case;
end process;
end architecture LOGIC;