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
signal sQEMCOUNTER : SIGNED(ENCWIDTH-1 downto 0) := ( others=> '0');
signal sQEMState : encstate := Q1;
signal sQEMDir : dirstate := CW;
begin

oDir <= sDir;
oPulse <= sPulse;
sPulse <= '1' when ((Ar = '1' or Af = '1' or Br = '1' or Bf = '1') AND sQEMCONFIG = '1') else '0';
oIndex <= iIndex;

--PULSE_OUTPUT : sPulse <= '1' when Ar = '1' or Af = '1' or Br = '1' or Bf = '1' else '0';
DIR_OUTPUT : sDir <= '0' when (sQEMDir = CW AND sQEMCONFIG = '1') else '1';
oQEMCOUNTER <= STD_LOGIC_VECTOR(sQEMCOUNTER);

QEM_CTRL : process (inRESET,iWrQEMCONFIG)
begin
  if (inRESET = '0') then
    sQEMCONFIG <= '0';
  elsif rising_edge(iWrQEMCONFIG) then
    sQEMCONFIG <= iData(0);   
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
-- variable 
begin
  if (inRESET = '0') then
    Ar <= '0';
    Af <= '0';
    Br <= '0';
    Bf <= '0';
  elsif rising_edge(iCLK) then
    Ar <= '0';
    Af <= '0';
    Br <= '0';
    Bf <= '0';
    if (A_p = '0' AND iA = '1') then 
      Ar <= '1';
    end if;
    if (A_p = '1' AND iA = '0') then 
      Af <= '1';
    end if;
    if (B_p = '0' AND iB = '1') then 
      Br <= '1';
    end if;
    if (B_p = '1' AND iB = '0') then 
      Bf <= '1';
    end if;
  end if;
end process;

DIR_GEN : process (inRESET,iCLK,iA,iB,Ar,Af,Br,Bf,sQEMDir) is
begin
  if (inRESET = '0') then
    sQEMDir <= CW;
  else
  --elsif rising_edge(iCLK) then
    case sQEMDir is
    when CW =>
      if (Af = '1' AND iB = '1') OR (Br = '1' AND iA = '1') then
        sQEMDir <= CCW;
      end if;
    when CCW =>
      if (Bf = '1' AND iA = '1') OR (Ar = '1' AND iB = '1') then
        sQEMDir <= CW;
      end if;
    end case;
  end if;
end process;

enc_count : process (iCLK,inRESET,sPulse,sDir) is
begin 
  if (inRESET = '0') then
    sQEMCOUNTER <= (others=> '0');
  elsif (rising_edge(iCLK) and sPulse = '1' and sQEMCONFIG = '1') then
    if (sDir = '1') then
      sQEMCOUNTER <= sQEMCOUNTER - 1;
    else
      sQEMCOUNTER <= sQEMCOUNTER + 1;
    end if;		
  end if;
end process enc_count;

end architecture LOGIC;