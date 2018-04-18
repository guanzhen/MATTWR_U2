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
  iWait: in std_logic;
  iAddress : in std_logic_vector(addwidth - 1 downto 0); --simulation data (address)to EBU_GEN
  iData : in std_logic_vector(datawidth - 1 downto 0); -- simulation data (data) to EBU_GEN
  oData : out std_logic_vector(datawidth - 1 downto 0); -- output data/data read by EBU unit for TB
  ioData : inout std_logic_vector(datawidth - 1 downto 0); -- IO multiplexed address/data bus for EBU unit
  oADV : out std_logic;
  oCS : out std_logic;
  oRD : out std_logic;
  oWR : out std_logic
);

end MOD_EBU;

----------------------------------------------------------------
architecture async_mux of MOD_EBU is
type ebu_state is ( AP, AH ,CD ,CPi, CPe, DH ,RP,IDLE );
signal state : ebu_state := IDLE;
--signal cnt_CPe : integer := 0;
BEGIN

MULTIPLEXED_EBU: PROCESS (iclk,reset)
variable phase : ebu_state := IDLE;
variable cnt_AP : integer := addrc;
variable cnt_AH: integer := addhold;
variable cnt_CD: integer := cmd_delay;
variable cnt_CP: integer := waitrdc;
variable cnt_DH : integer := datac;
variable cnt_RP: integer := rdrecovc;
variable cnt_CPe : integer := 0;

BEGIN  
  if (reset = '0') then
		ioData <= (others => 'Z');
    oData <= (others => 'Z');
    oRD <= '1';
    oWR <= '1';
    oCS <= '1';
    oADV <= '1';    
    phase := AP;
    state <= IDLE;
    cnt_AP := addrc;
    cnt_AH := addhold;
    cnt_CD := cmd_delay;
    cnt_DH := datac;
    cnt_CPe := 0;
    if (iRd_nWr = '1') then --set the number of command phase cycles based on the read write signal.
      cnt_CP := waitrdc;
      cnt_RP := rdrecovc;
    else
      cnt_CP := waitwrd;
      cnt_RP := wrrecovc;
    end if;
  elsif rising_edge(iclk) then
    oADV <= '1';
    oCS <= '1';
    oRD <= '1';
    oWR <= '1';
    ioData <= (others => 'Z');
    case phase is
    when AP =>
      state <= AP;
      -- outputs
      oCS <='0';
      ioData <= iAddress;
      oADV <= '0';
      -- next state logic
        cnt_AP:= cnt_AP - 1;
      if (cnt_AP > 0) then
        phase := AP;
      else
        if (cnt_AH > 0) then -- go to address hold phase
        phase := AH;
        elsif (cnt_CD > 0) then -- go to command delay phase
        phase := CD;
        else -- go to command phase direct.
        phase := CPi;
        end if;          
      end if;
    when AH =>
      state <= AH;
      --outputs
      ioData <= iAddress;
      oCS <= '0';
      --next state logic
      cnt_AH:= cnt_AH - 1;
      if (cnt_AH > 0) then
        phase := AH;
      elsif (cnt_CD > 0) then -- go to command delay phase if configured
        phase := CD;
      else -- go to command phase direct.
        phase := CPi;
      end if;
    when CD =>
      state <= CD;
      -- output logic
      oCS <= '0';
      -- sample wait signal
      if (ien_wait = '1') AND (iWait = '0') then
        cnt_CPe := cnt_CPe + 1;
      end if;      
      -- next state logic
      cnt_CD:= cnt_CD - 1;
      if (cnt_CD > 0) then
        phase := CD;
      else -- go to command phase direct.
        phase := CPi;
      end if;
    when CPi =>    
      state <= CPi;
      oCS <= '0';
      --set outputs for Command Phase
      if (iRd_nWr = '0') then -- Datahold phase is only for write commands
        oWR <= '0';
        ioData <= iData;
      else
        oRD <= '0';
      end if;          
      -- sample wait signal
      if (ien_wait = '1') AND (iWait = '0') then
        cnt_CPe := cnt_CPe + 1;
      end if;      
      -- next state logic
      cnt_CP:= cnt_CP - 1;
      if (cnt_CP > 0) then
        phase := CPi;
      else
        if (cnt_CPe > 0) then
          phase := CPe;
        else
          if (iRd_nWr = '0') then -- Datahold phase is only for write commands
            if (cnt_DH > 0) then
              phase := DH;
            elsif (cnt_RP > 0) then
              phase := RP;
            else
              phase := IDLE;
            end if;
          else --READ command            
            oData <= ioData;
            if (cnt_RP > 0) then
              phase := RP;
            else
              phase := IDLE;
            end if;        
          end if; -- end if (iRd_nWr = '0') then 
        end if; -- end if (cnt_CPe > 0) then
      end if; -- end if (cnt_CP > 1) then      
    when CPe =>
      state <= CPe;
      -- output logic
      oCS <= '0';      
      if (iRd_nWr = '0') then -- Datahold phase is only for write commands
        oWR <= '0';
        ioData <= iData;
      else
        oRD <= '0';
      end if;
      -- sample wait signal /next state logic
      if (ien_wait = '1') AND (iWait = '0') then
        cnt_CPe := cnt_CPe + 1; -- extend by 1 if wait is still active
      else
        cnt_CPe := cnt_CPe - 1;      
      end if;
      if (cnt_CPe > 0) then
        phase := CPe;    
      elsif (iRd_nWr = '0') then -- Datahold phase is only for write commands
        if (cnt_DH > 0) then
          phase := DH;
        elsif (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;
      else --READ command      
        oData <= ioData;
        if (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;        
      end if;    
    when DH =>
      -- output logic
      state <= DH;
      oCS <= '0';
      ioData <= iData;
      -- next state logic
      cnt_DH := cnt_DH - 1;
      if (cnt_DH > 0) then
        phase := DH;
      else
        if (cnt_RP > 0) then
          phase := RP;
        else
          phase := IDLE;
        end if;        
      end if;    
    when RP =>
      state <= RP;
      -- next state logic
      cnt_RP := cnt_RP - 1;
      if (cnt_RP > 0) then
        phase := RP;
      else
        phase := IDLE;
      end if;
    when IDLE =>
      state <= IDLE;
      phase := IDLE; --wait for reset
    end case;

	end if;  
END PROCESS MULTIPLEXED_EBU;

end architecture async_mux;
