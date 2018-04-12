LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
LIBRARY ieee;
USE ieee.numeric_std.ALL;

ENTITY SRAMIO_tbv IS
GENERIC  
    (
        WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
    );  
END SRAMIO_tbv;

architecture logic of SRAMIO_tbv is
signal clk           : std_logic;
signal nRESET        : std_logic := '1';                                             
signal DATA          : std_logic_vector(WIDTH-1 downto 0) := (others => 'Z'); 
signal nRD           : std_logic := '1';                                             
signal nWR           : std_logic := '1';                                             
signal nCS           : std_logic := '1';                                             
signal nADV          : std_logic := '1';                                             
signal nWAIT         : std_logic := '1';                                             
signal IO_ADDR       : std_logic_vector(WIDTH-1 downto 0);
signal IO_DATA       : std_logic_vector(WIDTH-1 downto 0);
signal IO_RDY_WR     : std_logic;
signal IO_RDY_RD     : std_logic;
signal IO_RDY_ADR    : std_logic;

signal inpin         : std_logic_vector(3 downto 0) := "1010";
signal outpin        : std_logic_vector(3 downto 0) := "ZZZZ";
signal iopin         : std_logic_vector(3 downto 0) := "ZZZZ";
       
component CPLD_XMC4700_SRAM_U is  
GENERIC
(
    WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
    CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
);
PORT 
( 
    nRESET     : IN    std_logic;                                            
    DATA       : INOUT std_logic_vector(WIDTH-1 downto 0);
    nRD        : IN    std_logic;                                            
    nWR        : IN    std_logic;                                            
    nCS        : IN    std_logic;                                            
    nADV       : IN    std_logic;                                            
    nWAIT      : IN    std_logic;                                            
    IO_ADDR    : OUT   std_logic_vector(WIDTH-1 downto 0);
    IO_DATA    : INOUT std_logic_vector(WIDTH-1 downto 0);
    IO_RDY_WR  : OUT   std_logic;                                    
    IO_RDY_RD  : OUT   std_logic;
    IO_RDY_ADR : OUT   std_logic
);  
end component;

BEGIN

u1: CPLD_XMC4700_SRAM_U
GENERIC MAP 
(
    WIDTH        =>  8,
    CPLD_VERSION =>  "00001101"
)
PORT MAP 
(
    nRESET     =>  nRESET       ,
    DATA       =>  DATA         ,
    nRD        =>  nRD          ,
    nWR        =>  nWR          ,
    nCS        =>  nCS          ,
    nADV       =>  nADV         ,
    nWAIT      =>  nWAIT        ,
    IO_ADDR    =>  IO_ADDR      ,
    IO_DATA    =>  IO_DATA      ,
    IO_RDY_WR  =>  IO_RDY_WR    ,
    IO_RDY_RD  =>  IO_RDY_RD    ,
    IO_RDY_ADR =>  IO_RDY_ADR   
);


clk_gen : PROCESS is                                      
BEGIN                                                        
    loop
    clk <= '0';
    wait for 5 us;
    clk <= '1';
    wait for 5 us;
    end loop;
END PROCESS clk_gen;  

reset_gen : PROCESS is                                          
BEGIN                                                
    nRESET <= '0';
    wait for 10 us;
    nRESET <= '1';
    wait;
END PROCESS reset_gen;     


write_gen : PROCESS (clk) is
variable step    : integer RANGE 0 to 15 := 0;
variable stepidx : integer RANGE 0 to 50 := 0;
BEGIN
    if rising_edge(clk) and nRESET = '1' then
      case step is
      -- read sequence
      when 0 =>
        stepidx := 0;
        step := 1;
      when 1 =>
        nADV <= '1';
        nCS  <= '1';
        nRD  <= '1';
        nWR  <= '1';
        nWAIT <= '1';
        DATA <= "00000000";
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;
     when 2 =>
        nADV <= '0';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= "10101010";
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;
     when 3 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= "10101010";
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;     
     when 4 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= (others => 'Z');
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;     
     when 5 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '0';
        nWR  <= '1';
        DATA <= (others => 'Z');
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;   
     when 6 =>
        nADV <= '1';
        nCS  <= '1';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= (others => 'Z');
        if stepidx = 10 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;   
      -- write sequence;
      when 7 =>
        nADV <= '1';
        nCS  <= '1';
        nRD  <= '1';
        nWR  <= '1';
        nWAIT <= '1';
        DATA <= (others => 'Z');
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;
      when 8 =>
        nADV <= '0';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= "01010101";
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;
      when 9 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= "01010101";
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;     
     when 10 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= (others => 'Z');
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;     
     when 11 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '0';
        if stepidx = 2 then
          DATA <= "00001111";        
        end if;
        if stepidx = 4 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;   
     when 12 =>
        nADV <= '1';
        nCS  <= '0';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= "00001111";
        if stepidx = 10 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if;   
     when 13 =>
        nADV <= '1';
        nCS  <= '1';
        nRD  <= '1';
        nWR  <= '1';
        DATA <= (others => 'Z');
        if stepidx = 10 then 
          step := step + 1;
          stepidx := 0;
        else
          stepidx := stepidx + 1;
        end if; 
      when others => 
          step := 13;
        stepidx := stepidx + 1;
      end case;
  end if;
END PROCESS write_gen;

end architecture logic;
