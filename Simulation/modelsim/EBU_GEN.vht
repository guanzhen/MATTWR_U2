----------------------------------------------------------------
----------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MOD_EBU is
generic (
  addrc : integer := 1; -- number of cycles in address phase
  cmd_delay : integer := 1; -- programmed command delay cycles
  waitrdc : integer := 1; -- programmed wait states for read acceses;
  waitwrd : integer := 1; -- programmed wait states for write acceses;
  datac : integer := 1 ; --data hold cycels
  datawidth : integer := 8 ; 
  addwidth : integer := 8
);
port (
  iclk : in std_logic;
  reset : in std_logic;
  iRd_nWr : in std_logic;
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
type ebu_state is ( cmd_phase,add_phase,recover_phase );
BEGIN

MULTIPLEXED_EBU: PROCESS
variable phase : ebu_state := add_phase;
variable cnt_cmd_delay : integer := addrc;
variable cnt_waitrdc : integer := 0;
variable cnt_waitrd: integer := 0;
variable cnt_datac: integer := 0;

BEGIN  
  if (reset = '0') then
		oAddress <= (others => 'Z');
    oData <= (others => '0');
    oRD <= '1';
    oWR <= '1';
    oCS <= '1';
    oADV <= '1';    
    
  elsif rising_edge(iclk) then
    if (iRd_nWr = '0') then -- write
      case phase is 
      when add_phase =>
      when cmd_phase =>
      when recover_phase =>
      end case;
    else
    
    end if;
	end if;
  
  wait on reset,iclk;
END PROCESS MULTIPLEXED_EBU;

end architecture logic;
