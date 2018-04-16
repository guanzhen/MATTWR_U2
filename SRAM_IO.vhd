library IEEE;
use ieee.std_logic_1164.all;
use std.standard;
    

entity SRAM_IO is
GENERIC
    (
        WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
    );
PORT 
    (
       nRESET        : IN    std_logic;                                                -- 
       DATA          : INOUT std_logic_vector(WIDTH-1 downto 0) := (others => 'Z');    -- Datenbus, Register auslesen
       nRD           : IN    std_logic;                                                -- Read (uP)
       nWR           : IN    std_logic;                                                -- Write (uP)
       nCS           : IN    std_logic;                                                -- CS an CPLD (uP)
       nADV          : IN    std_logic;                                                
       nWAIT         : IN    std_logic;                                                
		 
       IO_ADDR       : OUT   std_logic_vector(WIDTH-1 downto 0) := (others => '0');   
       IO_RDY_WR     : OUT   std_logic := '0' ;     
       IO_DAT_WR     : OUT   std_logic_vector(WIDTH-1 downto 0) := (others => '0');   
       IO_RDY_RD     : OUT   std_logic := '0' ;   
		 IO_DAT_RD     : IN    std_logic_vector(WIDTH-1 downto 0) ;                                       
		 i_DAT_RD_rdy	: IN 	  std_logic := '0' 
    );
end SRAM_IO;

architecture A_SRAM_IO of SRAM_IO is

signal oDATA : std_logic_vector(WIDTH-1 downto 0);
signal iDATA : std_logic_vector(WIDTH-1 downto 0);

BEGIN
SRAM_ADDR_PROC: process (nRESET, nCS, nADV, DATA) is
begin
	 if nRESET = '0' then
		  IO_ADDR <= (others => '0');
    elsif falling_edge(nADV) and nCS = '0' then 
        IO_ADDR    <= DATA;
    end if ;
end process SRAM_ADDR_PROC;

SRAM_RD_DATA_PROC: process (nRESET, nCS, nRD, IO_DAT_RD,iDATA,i_DAT_RD_rdy) is
begin
    
	 if nRESET = '0' then
		iDATA      <= (others => '0');
	 elsif falling_edge(i_DAT_RD_rdy) and nCS = '0'then
   	iDATA      <= IO_DAT_RD;
    end if;

	 if nCS = '0' then		
		IO_RDY_RD <= '0';		
		DATA <= iDATA;
	 else 
		IO_RDY_RD <= nRD;
		DATA <= (others => 'Z');
	 end if;
	 
end process SRAM_RD_DATA_PROC;

SRAM_WR_DATA_PROC: process (nRESET, nCS, nWR, DATA) is
begin
    IO_RDY_WR <= '0';	

	 if nRESET = '0' then
        IO_DAT_WR <= (others => '0'); 	
    elsif falling_edge(nWR) and nCS = '0' then 
        IO_DAT_WR <= DATA;
    end if;
	 
	 if nCS = '0' then
		IO_RDY_WR <= '0';
	 else
		IO_RDY_WR <= nWR;
	 end if;

end process SRAM_WR_DATA_PROC;


END architecture A_SRAM_IO;