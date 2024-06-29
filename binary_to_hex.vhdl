-- Binary to Hexadecimal Conversion
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_to_Hex is
    Port ( binary_in : in  STD_LOGIC_VECTOR (7 downto 0);
           hex_out   : out STD_LOGIC_VECTOR (3 downto 0));
end Binary_to_Hex;

architecture Behavioral of Binary_to_Hex is
begin
    process(binary_in)
    begin
        hex_out <= binary_in(7 downto 4);
    end process;
end Behavioral;
