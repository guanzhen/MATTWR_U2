library IEEE;
use ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY work;
USE work.constants.all;

entity SYNCMODULE is
GENERIC
  (
  BUSWIDTH : integer := 16;
  NUMOFSYNC : natural := NUM_OF_SYNC
  );
PORT 
  (
	iCLK      : IN STD_LOGIC;
	inRESET   : IN STD_LOGIC;   
  inWrSYNCONFIG    : IN STD_LOGIC_VECTOR(NUMOFSYNC-1 downto 0);
	inSyncSel : IN STD_LOGIC_VECTOR(1 downto 0);  
  iData     : IN std_logic_vector(BUSWIDTH-1 downto 0);
  iInputs   : IN std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNDIR : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG1 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG2 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG3 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG4 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG5 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG6 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNCONFIG7 : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  oSYNVALUE : OUT std_logic_vector(BUSWIDTH-1 downto 0);
  ioSync     : INOUT std_logic_vector(NUMOFSYNC-1 downto 0):= (others => '0')
  );
END;
  
ARCHITECTURE LOGIC OF SYNCMODULE IS
SUBTYPE SYNC_REG is std_logic_vector(6 downto 0);
TYPE SYNC_REG_ARRAY is ARRAY(NUMOFSYNC-1 downto 0) of SYNC_REG;
SIGNAL sSYNCDIR : std_logic_vector(NUMOFSYNC-1 downto 0);
SIGNAL sSYNCONFIGARR: SYNC_REG_ARRAY;
SIGNAL sSYNCOUT : std_logic_vector(NUMOFSYNC-1 downto 0);
SIGNAL sInputs : STD_LOGIC_VECTOR(BUSWIDTH downto 0);
CONSTANT PADDING : std_logic_vector(BUSWIDTH-NUMOFSYNC-1 downto 0):=(others =>'0');
BEGIN

oSYNCONFIG1 <= "000000000" & sSYNCONFIGARR(0);
oSYNCONFIG2 <= "000000000" & sSYNCONFIGARR(1);
oSYNCONFIG3 <= "000000000" & sSYNCONFIGARR(2);
oSYNCONFIG4 <= "000000000" & sSYNCONFIGARR(3);
oSYNCONFIG5 <= "000000000" & sSYNCONFIGARR(4);
oSYNCONFIG6 <= "000000000" & sSYNCONFIGARR(5);
oSYNCONFIG7 <= "000000000" & sSYNCONFIGARR(6);
sInputs(BUSWIDTH-1 downto 0) <= iInputs;
sInputs(BUSWIDTH) <= iInputs(12) OR NOT iInputs(8) OR iInputs(14) OR iInputs(15);

oSYNDIR <= PADDING & sSYNCDIR; --output of syn direction register
--oSync <= sSYNCOUT; -- output to sync interfaces
oSYNVALUE <= PADDING & to_x01(ioSync); -- output of synvalue register 

SYNCO_GEN : for I in 0 to NUMOFSYNC-1 generate
begin
  ioSync(I) <= sSYNCOUT(I) when sSYNCDIR(I) = '0' else 'Z' ;
end generate;

WRITECTRL : PROCESS (inRESET,inWrSYNCONFIG,iData)
BEGIN
  if (inRESET = '0') then
	 for I in 0 to NUMOFSYNC-1 loop
		sSYNCONFIGARR(I) <= (others=>'0');
	 end loop;
  else
    for I in 0 to NUMOFSYNC-1 loop
      if rising_edge(inWrSYNCONFIG(I)) then 
        sSYNCONFIGARR(I) <= iData(6 downto 0);
      end if;
    end loop;
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

INPUTSYNCMUX : PROCESS(inRESET,iCLK,sSYNCONFIGARR,sSYNCDIR,sInputs)
subtype IONUM is INTEGER range 0 to 2**4-1;
variable temp : IONUM;
BEGIN
  for I in 0 to NUMOFSYNC-1 loop    
    temp := to_integer(unsigned(sSYNCONFIGARR(I)(3 downto 0))); -- find the input mapped to output pin.
      if sSYNCONFIGARR(I)(5) = '0' then
        sSYNCOUT(I) <= sInputs(temp);
      else
        sSYNCOUT(I) <= NOT sInputs(temp);
      end if;
  end loop;
END PROCESS;

END ARCHITECTURE LOGIC;