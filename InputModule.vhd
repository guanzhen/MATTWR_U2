LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY work;
USE work.constants.all;

ENTITY INPUTMODULE IS

GENERIC (
DATAWIDTH : natural := 16;
SINGLE_INPUTS : natural := NUM_OF_SE_INPUTS;
FILTER : natural := 5;     -- number of cycles to FILTER Diffential inputs
DIFF_INPUTS : natural := 3
);
PORT 
(
  iCLK        : IN STD_LOGIC;
  inReset     : IN STD_LOGIC;
  iInputs     : IN STD_LOGIC_VECTOR(SINGLE_INPUTS-1 DOWNTO 0);
  iDiffInputs : IN STD_LOGIC_VECTOR(DIFF_INPUTS*2-1 DOWNTO 0);
  oInputStatus: OUT STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);  
  oInputs     : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0)
); 
END;

ARCHITECTURE LOGIC OF INPUTMODULE IS 
subtype DIFFSTATUS is STD_LOGIC_VECTOR(DIFF_INPUTS-1 downto 0);
type ARRAYDIFFSTATUS is array(FILTER-1 downto 0) of DIFFSTATUS;
SIGNAL sDiffFilter : ARRAYDIFFSTATUS;
SIGNAL sDiffStatus : DIFFSTATUS;
SIGNAL DIFF1H, DIFF2H, DIFF3H : STD_LOGIC;
--SIGNAL DIFF1L, DIFF2L, DIFF3L : STD_LOGIC;
BEGIN

--DIFF3H,DIFF3L,DIFF2H,DIFF2L,DIFF1H,DIFF1L) <= iDiffInputs;
DIFF3H <= iDiffInputs(5);
DIFF2H <= iDiffInputs(3);
DIFF1H <= iDiffInputs(1);

oInputs <= DIFF3H & DIFF2H & DIFF1H & iInputs;
oInputStatus <= X"000" & B"0" & sDiffStatus;

-- Monitor the differential inputs, to determine if there is error in status.
-- filter for 5 clock cycles.
PROCPDIFFSTATUS : PROCESS(inReset,iCLK,iDiffInputs,sDiffFilter)
  variable vTemp : STD_LOGIC_VECTOR(DIFF_INPUTS-1 downto 0);
  BEGIN  
  if (inReset = '0') then
    for I in FILTER-1 downto 0 loop
      sDiffFilter(I) <= (others =>'0');    
    end loop;
  elsif rising_edge(iCLK) then 
    -- the input of differential pairs are XORed together to determine if they are valid. '0' = invalid.
    for I in 0 to DIFF_INPUTS-1 loop
      sDiffFilter(0)(I) <= (iDiffInputs(I*2) XOR iDiffInputs(I*2+1));
    end loop;
    -- generate FILTER flipflops
    for I in FILTER-1 downto 1 loop
      sDiffFilter(I) <= sDiffFilter(I-1);    
    end loop;
  end if;
  
  -- status is high if all FILTER registers have the same level.
  for I in 0 to DIFF_INPUTS-1 loop    
    vTemp(I) := sDiffFilter(0)(I);
    for Y in 1 to FILTER-1 loop
      vTemp(I) := vTemp(I) AND sDiffFilter(Y)(I);
    end loop; 
    sDiffStatus(I) <= vTemp(I);
  end loop;
  
END PROCESS;



END ARCHITECTURE LOGIC;