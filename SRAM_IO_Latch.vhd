library IEEE;
use ieee.std_logic_1164.all;
use std.standard;

entity SRAM_IO_LATCH is
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
end SRAM_IO_LATCH;

architecture A_SRAM_IO of SRAM_IO_LATCH is
type readstate is ( idle,read_start,read_end );
type writestate is ( idle,write_start1,write_start2,write_start3,write_end );

signal sRdState : readstate:= idle;
signal sWrState : writestate:= idle;

BEGIN

SRAM_WAIT_SIG : nWAIT <= '0' when sRdState = read_start else '1';  

SRAM_ADDR_PROC: process (nRESET, nCS, nADV, DATA) is
begin
  if nRESET = '0' then
    IO_ADDR <= (others => '0');
  elsif nCS = '0' and nADV= '0' then 
    IO_ADDR <= to_x01(DATA);
  end if ;
end process SRAM_ADDR_PROC;

----------------------
-- READ SIGNALS
----------------------
SRAM_RD_DATA_PROC: process (nRESET, iCLK,nCS,nRD, IO_DAT_RD) is
begin
  if nRESET = '0' or nCS = '1' then
    DATA <= (others => 'Z');
  elsif nCS = '0' and nRD = '0' then
    DATA <= IO_DAT_RD;
  end if;
end process SRAM_RD_DATA_PROC;

-- nWait state machine
SRAM_RD_STATE_PROC: process (nRESET, nCS, iCLK,nRD,sRdState) is
begin
  if nRESET = '0' or nCS = '1' then
    sRdState <= idle;
  elsif nRD = '0' and sRdState = idle then
    sRdState <= read_start;
  elsif rising_edge(iCLK) and sRdState = read_start then
    sRdState <= read_end;
  end if;
end process SRAM_RD_STATE_PROC;

----------------------
-- WRITE SIGNALS
----------------------

SRAM_WR_DATA_PROC: process (nRESET, nCS, nWR, DATA) is
begin
  if nRESET = '0' then
    IO_DAT_WR <= (others => '0');
  elsif nCS = '0' and nWR = '0' then
    IO_DAT_WR <= DATA;
  end if;  
end process SRAM_WR_DATA_PROC;

SRAM_WR_SIG : nWrRdy <= nWR;

END architecture A_SRAM_IO;