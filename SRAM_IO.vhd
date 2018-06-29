library IEEE;
use ieee.std_logic_1164.all;
use std.standard;

entity SRAM_IO is
GENERIC
  (
    DATAWIDTH        : integer  :=    16;                                               -- Datenbus 16 Bit
    CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
  );
PORT 
  (
    iCLK          : IN std_logic;
    nRESET        : IN    std_logic;                                                -- 
    DATA          : INOUT std_logic_vector(DATAWIDTH-1 downto 0) := (others => 'Z');    -- Datenbus, Register auslesen
    nRD           : IN    std_logic;                                                -- Read (uP)
    nWR           : IN    std_logic;                                                -- Write (uP)
    nCS           : IN    std_logic;                                                -- CS an CPLD (uP)
    nADV          : IN    std_logic;                                                
    nWAIT         : OUT    std_logic;
    nWrRdy        : OUT std_logic;
    IO_ADDR       : OUT   std_logic_vector(DATAWIDTH-1 downto 0) := (others => '0');   
    IO_DAT_WR     : OUT   std_logic_vector(DATAWIDTH-1 downto 0) := (others => '0');   
    IO_DAT_RD     : IN    std_logic_vector(DATAWIDTH-1 downto 0)                                     
  );
end SRAM_IO;

architecture A_SRAM_IO of SRAM_IO is
type readstate is ( idle,read_start,read_end );
type writestate is ( idle,write_start1,write_start2,write_end );

signal sReadState : readstate:= idle;
signal sWrState : writestate:= idle;

BEGIN

SRAM_WAIT_SIG : nWAIT <= '0' when sReadState = read_start else '1';  

SRAM_ADDR_PROC: process (nRESET, nCS, nADV, DATA) is
begin
  if nRESET = '0' then
    IO_ADDR <= (others => '0');
  elsif falling_edge(nADV) then 
    IO_ADDR <= to_x01(DATA);
  end if ;
end process SRAM_ADDR_PROC;

----------------------
-- READ SIGNALS
----------------------

--DATA <= IO_DAT_RD when sReadState = read_start else (others => 'Z');
SRAM_RD_DATA_PROC: process (nRESET, iCLK,nCS,nRD, IO_DAT_RD) is
begin
  if nRESET = '0' or nCS = '1' then
    DATA <= (others => 'Z');
  elsif falling_edge(iCLK) and nCS = '0' and nRD = '0' then
    DATA <= IO_DAT_RD;
  end if;
end process SRAM_RD_DATA_PROC;

-- nWait state machine
SRAM_RD_STATE_PROC: process (nRESET, nCS, iCLK,nRD,sReadState) is
begin
  if nRESET = '0' or nCS = '1' then
    sReadState <= idle;
  elsif nRD = '0' and sReadState = idle then
    sReadState <= read_start;
  elsif falling_edge(iCLK) and sReadState = read_start then
    sReadState <= read_end;
  end if;
end process SRAM_RD_STATE_PROC;

----------------------
-- WRITE SIGNALS
----------------------
SRAM_WR_DATA_PROC: process (nRESET, nCS, nWR, DATA) is
begin
  if nRESET = '0' then
    IO_DAT_WR <= (others => '0');
  elsif falling_edge(nWR) and nCS = '0' then
    IO_DAT_WR <= DATA;
  end if;   
end process SRAM_WR_DATA_PROC;

-- nWrite state machine
SRAM_WR_STATE_PROC: process (nRESET, nCS, iCLK,nWR,sWrState) is
begin
  if nRESET = '0' or nCS = '1' then
    sWrState <= idle;
  elsif nWR = '0' and sWrState = idle then
    sWrState <= write_start1;
  elsif rising_edge(iCLK) then
    if sWrState = write_start1 then
      sWrState <= write_start2;
	 elsif sWrState = write_start2 then
      sWrState <= write_end;
    end if;
  end if;
end process SRAM_WR_STATE_PROC;

SRAM_WR_SIG : nWrRdy <= '0' when sWrState = write_start2 else '1';

END architecture A_SRAM_IO;