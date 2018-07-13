LIBRARY ieee;
USE ieee.std_logic_1164.all; 

package constants is

constant NUM_OF_PWMMOD  : natural :=3;
constant DEFAULT_RESET_PERIOD : integer := 1000; -- 1ms;
constant ENC_WIDTH : natural := 32; -- 1ms;
end package constants;
