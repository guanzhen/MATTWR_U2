LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY work;
USE work.constants.all;

ENTITY SERIALMUX IS

GENERIC (
DATAWIDTH   : integer := 16
);
PORT 
(
  iCLK : IN STD_LOGIC;
  inReset : IN STD_LOGIC; 
  iWrSERIALMUXCONFIG : IN STD_LOGIC;
  iMUXSEL : IN STD_LOGIC;
  iTX_IN : IN STD_LOGIC;
  oRX_OUT : OUT STD_LOGIC;
  iRX1_IN : IN STD_LOGIC;
  iRX2_IN : IN STD_LOGIC;
  oTX1_OUT : OUT STD_LOGIC;
  oTX2_OUT : OUT STD_LOGIC;  
  iData : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);  
  oSERIALMUXCONFIG : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')
); 
END;

ARCHITECTURE LOGIC OF SERIALMUX IS 
signal sSERIALMUXCONFIG : std_logic_vector(2 downto 0);
signal sEN : STD_LOGIC:= '0';
--signal soTX2_OUT,soTX2_OUT,oRX_OUT: STD_LOGIC:= '0';
signal sDeFop : std_logic_vector(1 downto 0) := "00";

BEGIN

sEN <= sSERIALMUXCONFIG(0);
sDeFop <= sSERIALMUXCONFIG(2 downto 1);
oSERIALMUXCONFIG <= X"000" & B"0" & sSERIALMUXCONFIG;

WRCTRL : PROCESS (iCLK,inReset,iWrSERIALMUXCONFIG) is 
begin 
  if (inReset = '0') then
      sSERIALMUXCONFIG <= (others => '0');
  else
    if rising_edge(iWrSERIALMUXCONFIG) then
      sSERIALMUXCONFIG <= iData(2 downto 0);
    end if;
  end if;
END PROCESS;

SERMUX : PROCESS (iMUXSEL,inReset,iCLK,sDeFop,sEN,iTX_IN,iRX1_IN,iRX2_IN) IS
begin
  if inReset = '0' then
    oTX2_OUT <= '0';
    oTX1_OUT <= '0';
    oRX_OUT <= '0';
  elsif rising_edge(iCLK) and (sEN = '1') then
    if (iMUXSEL = '0') then
      oTX1_OUT <= iTX_IN;
      oRX_OUT <= iRX1_IN;
      case sDeFop is
      when "00" => oTX2_OUT <= '0';
      when "01" => oTX2_OUT <= '1';
      when "10" => oTX2_OUT <= 'Z';
      when others => oTX2_OUT <= 'Z';
      end case;
    else
      oTX2_OUT <= iTX_IN;
      oRX_OUT <= iRX2_IN;
      case sDeFop is
      when "00" => oTX1_OUT <= '0';
      when "01" => oTX1_OUT <= '1';
      when "10" => oTX1_OUT <= 'Z';
      when others => oTX1_OUT <= 'Z';
      end case;
    end if;
  end if;
END PROCESS;

END ARCHITECTURE LOGIC;
