----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:42 11/08/2017 
-- Design Name: 
-- Module Name:    RandomGenerator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RandomGenerator is
    Port ( LuckyNumber : out  STD_LOGIC_VECTOR (3 downto 0);
			  
			  startGenerate : in STD_LOGIC
	                     );
end RandomGenerator;

architecture Behavioral of RandomGenerator is

signal rand_num : integer := 0;
SIGNAL COUNTER : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; 


begin


process(startGenerate)
    variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;   -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := 10.0;    -- the range of random values created will be 0 to 10. (In case of 0, fix it.)
begin
	if(rising_edge(startGenerate)) then
    uniform(seed1, seed2, rand);   -- generate random number
    rand_num <= integer(rand*range_of_rand);  -- rescale to 0..10, convert integer part 
	
    
	 LuckyNumber <= std_logic_vector(to_unsigned(rand_num, LuckyNumber'length));  --convert randomly generated integer to a 4 bit binary number.
	end if;
end process;

end Behavioral;

