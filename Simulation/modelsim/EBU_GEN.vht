----------------------------------------------------------------
----------------------------------------------------------------
library ieee;
USE ieee.std_logic_1164.all;

entity MOD_EBU is
generic (
  addrc : integer := 1; -- number of cycles in address phase
  addhold : integer := 0; -- number of address hold cycles 
  cmd_delay : integer := 1; -- programmed command delay cycles
  waitrdc : integer := 1; -- programmed wait states for read acceses;
  waitwrd : integer := 1; -- programmed wait states for write acceses;
  datac : integer := 1 ; -- number of data hold cycles 
  rdrecovc : integer := 0; -- number of recovery cycles in recover phase after read access
  wrrecovc : integer := 0; -- number of recovery cycles in recover phase after wr access
  datawidth : integer := 8 ; 
  addwidth : integer := 8
);
port (
  iclk : in std_logic;
  reset : in std_logic;
  iRd_nWr : in std_logic;
  ien_wait : in std_logic := '0'; --enable wait for WAIT signal
  iAddress : in std_logic_vector(addwidth - 1 downto 0);
  oAddress : out std_logic_vector(addwidth - 1 downto 0);
  iData : out std_logic_vector(datawidth - 1 downto 0);
  oData : out std_logic_vector(datawidth - 1 downto 0);
  oADV : out std_logic;
  oCS : out std_logic;
  oRD : out std_logic;
  oWR : out std_logic
);

end MOD_EBU;

----------------------------------------------------------------
architecture logic of MOD_EBU is
type ebu_state is ( AP, AH ,CD ,CP, DH ,RP,IDLE );
BEGIN

MULTIPLEXED_EBU: PROCESS
variable phase : ebu_state := AP;
variable cnt_AP : integer := addrc;
variable cnt_AH: integer := addhold;
variable cnt_CD: integer := cmd_delay;
variable cnt_CP: integer := waitrdc;
variable cnt_DH : integer := datac;
variable cnt_RP: integer := rdrecovc;

BEGIN  
  if (reset = '0') then
		oAddress <= (others => 'Z');
    oData <= (others => '0');
    oRD <= '1';
    oWR <= '1';
    oCS <= '1';
    oADV <= '1';    
    phase := AP;
    if (iRd_nWr = '1') then --set the number of command phase cycles based on the read write signal.
      cnt_CP := waitrdc;
      cnt_RP := rdrecovc;
    else
      cnt_CP := waitwrd;
      cnt_RP := wrrecovc;
    end if;
  elsif rising_edge(iclk) then
    case phase is
    when AP =>
      if (cnt_AP > 0) then
        phase := AP;
        cnt_AP:= cnt_AP - 1;
      else
        if (cnt_AH > 0) then -- go to address hold phase
        phase := AH;
        elsif (cnt_CD > 0) then -- go to command delay phase
        phase := CD;
        else -- go to command phase direct.
        phase := CP;
        end if;          
      end if;
    when AH =>
      if (cnt_AH > 0) then
        phase := AH;
        cnt_AH:= cnt_AH - 1;
      elsif (cnt_CD > 0) then -- go to command delay phase
        phase := CD;
      else -- go to command phase direct.
        phase := CP;
      end if;
    when CD =>
      if (cnt_CD > 0) then
        phase := CD;
        cnt_CD:= cnt_CD - 1;
      else -- go to command phase direct.
        phase := CP;
      end if;
    when CP =>
      if (cnt_CP > 0) then
        phase := CP;
        cnt_CP:= cnt_CP - 1;
      elsif (iRd_nWr = '0') then -- Datahold phase is only for write commands
        if (cnt_DH > 0) then
          phase := DH;
        elsif (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;
      else --WRITE command 
        if (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;        
      end if;
    when DH =>
      if (cnt_DH > 0) then
        phase := DH;
        cnt_DH := cnt_DH - 1;
      else
        if (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;        
      end if;    
    when RP =>
      if (cnt_RP > 0) then
        phase := RP;
        cnt_RP := cnt_RP - 1;
      else
        phase := IDLE;
      end if;
    when IDLE =>
      phase := IDLE; --wait for reset
    end case;

	end if;
  
  wait on reset,iclk;
END PROCESS MULTIPLEXED_EBU;

end architecture logic;
