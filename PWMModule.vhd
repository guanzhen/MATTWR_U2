library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use std.standard;

entity PWMMODULE is
GENERIC
  (
  BUSWIDTH : natural := 16;
  PWMBITWIDTH : natural := 16
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
type PWM_STATE is (IDLE,HI,LO,RESET);
signal sPWMCONFIG : STD_LOGIC_VECTOR(2 downto 0):= (others=> '0');
signal sPWMPERIOD : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sDUTY      : STD_LOGIC_VECTOR(PWMBITWIDTH-1 downto 0):= (others=> '0');
signal sOPState   : OUTPUTSTATE := IDLE;
signal sPWMState  : PWM_STATE   := IDLE;
signal sEN        : STD_LOGIC   := '0';
signal sDEFOP     : STD_LOGIC_VECTOR(1 downto 0):= (others => '0');
begin

oPWMCONFIG <= B"0000_0000_0000_0" & sPWMCONFIG;
oPWMPERIOD <= std_logic_vector(sPWMPERIOD);
oPWMDUTY <= std_logic_vector(sDUTY);
S_EN : sEN <= sPWMCONFIG(0); -- Enable bit
S_DEFOP : sDEFOP <= sPWMCONFIG(2 downto 1);

PWM_CTRL : process(iData,inRESET,iCLK,iWrPWMCONFIG,iWrPWMDUTY,iWrPWMPERIOD) is
begin
if (inRESET = '0')then
  sPWMCONFIG <= (others=> '0');
  sPWMPERIOD <= (others=> '0');
  sDUTY      <= (others=> '0');
else
  if rising_edge(iWrPWMCONFIG) then
    sPWMCONFIG <= iData(2 downto 0);
  end if;
  if rising_edge(iWrPWMPERIOD) then
    sPWMPERIOD <= iData;
  end if;
  if rising_edge(iWrPWMDUTY) then
    sDUTY <= iData;
  end if;
end if;
end process;

PWM_G : process (iCLK,sEN,inRESET,iWrPWMDUTY,iWrPWMPERIOD) is
variable vDutyCnt : natural range 0 to 2**PWMBITWIDTH-1;
variable vCounter : natural range 0 to 2**PWMBITWIDTH-1;
begin
if (inRESET = '0')then
  sPWMState <= IDLE;
elsif rising_edge(iCLK) then
  case sPWMState is
  when IDLE=>    
    sOPState <= IDLE;
    vCounter := to_integer(unsigned(sPWMPERIOD(PWMBITWIDTH-1 downto 0)));
    if (sEN = '1') then
      sPWMState <= HI;
    end if;
  when RESET =>
    vCounter := to_integer(unsigned(sPWMPERIOD(PWMBITWIDTH-1 downto 0)));
    sPWMState <= HI;
  when HI=>
    sOPState <= HI;
    if (vCounter > 1) then
      vCounter := vCounter - 1;
    end if;
    vDutyCnt := to_integer(unsigned(sDUTY(PWMBITWIDTH-1 downto 0)));
    if (vCounter <= vDutyCnt) then
      sPWMState <= LO;
    end if;
    if (sEN = '0') then
      sPWMState <= IDLE;
    elsif (iWrPWMPERIOD = '1') or (iWrPWMDUTY = '1') then
      sPWMState <= RESET;
    end if;
  when LO=>
    sOPState <= LO;
    vCounter := vCounter - 1;
    if (vCounter = 0) then -- should not happen
      sPWMState <= HI;
      vCounter := to_integer(unsigned(sPWMPERIOD(PWMBITWIDTH-1 downto 0)));
    end if;
    if (sEN = '0') then
      sPWMState <= IDLE;
    elsif (iWrPWMPERIOD = '1') or (iWrPWMDUTY = '1') then
      sPWMState <= RESET;
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