-- Binary to Octal Conversion
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_to_Octal is
    Port ( binary_in : in  STD_LOGIC_VECTOR (7 downto 0);
           octal_out : out STD_LOGIC_VECTOR (7 downto 0));
end Binary_to_Octal;

architecture Behavioral of Binary_to_Octal is
begin
    process(binary_in)
    begin
        octal_out <= "000" & binary_in(7 downto 6) & "000" & binary_in(5 downto 3) & "000" & binary_in(2 downto 0);
    end process;
end Behavioral;
