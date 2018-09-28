LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use std.standard;

entity QEMODULE is
GENERIC
  (
  BUSWIDTH : natural := 16;
  ENCWIDTH : natural := 32
  );
PORT 
  (
	iCLK    : IN STD_LOGIC;
	inRESET : IN STD_LOGIC;   
  iData   : IN STD_LOGIC_VECTOR(BUSWIDTH-1 downto 0);
	iWrQEMCONFIG  : IN STD_LOGIC;
  iWrQEMCOUNTERL : IN STD_LOGIC;
  iWrQEMCOUNTERH : IN STD_LOGIC;
	iA      : IN STD_LOGIC;
	iB      : IN STD_LOGIC;
	iIndex  : IN STD_LOGIC;
  oPulse  : OUT STD_LOGIC;
  oDir    : OUT STD_LOGIC;
  oIndex  : OUT STD_LOGIC;
  --Register Ouputs  
  oQEMCONFIG  : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oQEMCOUNTER : OUT std_logic_vector(ENCWIDTH-1 downto 0):= (others => '0')
  );
end QEMODULE;

architecture LOGIC of QEMODULE is
type encstate is (Q1,Q2,Q3,Q4);
type dirstate is (CW,CCW);
signal Ar,Br,Af,Bf : STD_LOGIC := '0';
signal A_p,B_p : STD_LOGIC := '0';
signal sDir : STD_LOGIC := '0';
signal sPulse : STD_LOGIC := '0';
signal sQEMCONFIG : STD_LOGIC := '0';
signal sWrCounter : STD_LOGIC:= '0';
signal sBUFFER : STD_LOGIC_VECTOR (ENCWIDTH-1 downto 0) := (others=>'0');
signal sQEMCOUNTER : SIGNED(ENCWIDTH-1 downto 0) := ( others=> '0');
signal sQEMState : encstate := Q1;
signal sQEMDir : dirstate := CW;
begin

oDir <= sDir when sQEMCONFIG = '1' else '0';
oPulse <= sPulse when sQEMCONFIG = '1' else '0';
oIndex <= iIndex;
oQEMCONFIG <= X"000" & B"000" & sQEMCONFIG;

DIR_OUTPUT : sDir <= '0' when (sQEMDir = CW) else '1';
oQEMCOUNTER <= STD_LOGIC_VECTOR(sQEMCOUNTER);
sWrCounter <= iWrQEMCOUNTERH;
QEM_CTRL : process (iCLK,inRESET,iWrQEMCONFIG,iWrQEMCOUNTERL,iWrQEMCOUNTERH)
begin
  if (inRESET = '0') then
    sQEMCONFIG <= '0';
  elsif rising_edge(iWrQEMCONFIG) then
    sQEMCONFIG <= iData(0);
  end if;  
  
  if (inRESET = '0') then
    sBUFFER(15 downto 0) <= (others => '0');
  elsif rising_edge(iWrQEMCOUNTERL) then
    sBUFFER(15 downto 0) <= iData;
  end if;
  
  if (inRESET = '0') then
    sBUFFER(31 downto 16) <= (others => '0');
  elsif rising_edge(iWrQEMCOUNTERH) then
    sBUFFER(31 downto 16) <= iData;
  end if;  
end process;

QuadDecProcess : process (inRESET,iCLK,iA,iB) is 
begin
  if (inRESET = '0') then
    A_p <= '0';
    B_p <= '0';
  elsif rising_edge(iCLK) then
    A_p <= iA;
    B_p <= iB;
  end if;
end process;

EDGE_GEN : process (inRESET,iCLK,iA,iB,A_p,B_p) is 
variable Arise,Afall,Brise,Bfall : STD_LOGIC := '0';
begin
  if (inRESET = '0') then
    Arise := '0';
    Afall := '0';
    Brise := '0';
    Bfall := '0';
    sQEMDir <= CW;
    sPulse <= '0';
  elsif rising_edge(iCLK) then
    sPulse <= '0';
    Arise := '0';
    Afall := '0';
    Brise := '0';
    Bfall := '0';
    if (A_p = '0' AND iA = '1') then 
      Arise := '1';
    end if;
    if (A_p = '1' AND iA = '0') then 
      Afall := '1';
    end if;
    if (B_p = '0' AND iB = '1') then 
      Brise := '1';
    end if;
    if (B_p = '1' AND iB = '0') then 
      Bfall := '1';
    end if; 
    case sQEMDir is
    when CW =>
      if (Afall = '1' AND iB = '1') OR (Brise = '1' AND iA = '1') then
        sQEMDir <= CCW;
      end if;
    when CCW =>
      if (Bfall = '1' AND iA = '1') OR (Arise = '1' AND iB = '1') then
        sQEMDir <= CW;
      end if;
    end case;    
  end if;
  if (Arise = '1' or Afall = '1' or Brise = '1' or Bfall = '1') then
    sPulse <= '1';
  end if;
end process;

enc_count : process (iCLK,inRESET,sPulse,sDir,sQEMCONFIG,sWrCounter,sBUFFER) is
begin 
  if (sWrCounter = '1') then      
    sQEMCOUNTER <= SIGNED(sBUFFER);
  elsif rising_edge(iCLK) and (sPulse = '1' and sQEMCONFIG = '1') then
    if (sDir = '1') then
      sQEMCOUNTER <= sQEMCOUNTER - 1;
    else
      sQEMCOUNTER <= sQEMCOUNTER + 1;
    end if;		
  end if;		
end process enc_count;

end architecture LOGIC;