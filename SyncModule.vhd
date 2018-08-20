library IEEE;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY work;
USE work.constants.all;

entity SYNCMODULE is
GENERIC
  (
  BUSWIDTH : integer := 16;
  NUMOFSYNC : natural := 7
  );
PORT 
  (
	iCLK      : IN STD_LOGIC;
	inRESET   : IN STD_LOGIC;   
	inWrSYNCONFIG1   : IN STD_LOGIC;
	inWrSYNCONFIG2   : IN STD_LOGIC;  
	inSyncSel : IN STD_LOGIC_VECTOR(1 downto 0);  
  iData     : IN std_logic_vector(BUSWIDTH-1 downto 0);
  iInputs   : IN std_logic_vector(NUM_OF_INPUTS-1 downto 0);
  oSYNDIR : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG1 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG2 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNVALUE : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  ioSync     : INOUT std_logic_vector(NUMOFSYNC-1 downto 0):= (others => '0')
  );
END;
  
ARCHITECTURE LOGIC OF SYNCMODULE IS
--SIGNAL sSYNVALUE : std_logic_vector(NUMOFSYNC-1 downto 0):=(others => '0');
SIGNAL sSYNCDIR : std_logic_vector(NUMOFSYNC-1 downto 0);
SIGNAL sSYNCONFIG : std_logic_vector(31 downto 0);
SIGNAL sSYNCOUT : std_logic_vector(NUMOFSYNC-1 downto 0);
CONSTANT PADDING : std_logic_vector(BUSWIDTH-NUMOFSYNC-1 downto 0):=(others =>'0');
BEGIN

--sSYNVALUE <= oSync; -- inputs from sync interface
oSYNCONFIG1 <= sSYNCONFIG(15 downto 0) ;
oSYNCONFIG2 <= sSYNCONFIG(31 downto 16);
oSYNDIR <= PADDING & sSYNCDIR; --output of syn direction register
--oSync <= sSYNCOUT; -- output to sync interfaces
oSYNVALUE <= PADDING & to_x01(ioSync); -- output of synvalue register 

SYNCO_GEN : for I in 0 to NUMOFSYNC-1 generate
begin
  ioSync(I) <= sSYNCOUT(I) when sSYNCDIR(I) = '0' else 'Z' ;
end generate;

WRITECTRL : PROCESS (inRESET,inWrSYNCONFIG1,inWrSYNCONFIG2,iData)
BEGIN
  if (inRESET = '0') then
    sSYNCONFIG <= (others => '0');
  else
    if rising_edge(inWrSYNCONFIG1) then
      sSYNCONFIG(15 downto 0) <= iData;
    end if;
    if rising_edge(inWrSYNCONFIG2) then
      sSYNCONFIG(31 downto 16) <= iData;
    end if;    
  end if;
END PROCESS;

SYNCDIR : PROCESS (inRESET,iCLK,inSyncSel) 
BEGIN
  if (inRESET = '0') then
    sSYNCDIR <= (others=>'1');
  elsif rising_edge(iCLK) then
    case inSyncSel is
    when "00" =>  sSYNCDIR <= "0011111"; --Main Board
    when "10" =>  sSYNCDIR <= "1100000"; --Sub Board
    when others =>  sSYNCDIR <= "0000000";
    end case;  
  end if;
END PROCESS;

INPUTSYNCMUX : PROCESS(inRESET,iCLK,sSYNCONFIG,sSYNCDIR,iInputs)
subtype IONUM is INTEGER range 0 to 2**4-1;
variable temp : IONUM;
BEGIN
  for I in 0 to NUMOFSYNC-1 loop    
    temp := to_integer(unsigned(sSYNCONFIG(I*4+3 downto I*4))); -- find the input mapped to output pin.
    sSYNCOUT(I) <= iInputs(temp);
  end loop;
END PROCESS;

END ARCHITECTURE LOGIC;