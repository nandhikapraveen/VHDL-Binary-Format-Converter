-- Binary to BCD Conversion
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_to_BCD is
    Port ( binary_in : in  STD_LOGIC_VECTOR (7 downto 0);
           bcd_out   : out STD_LOGIC_VECTOR (11 downto 0));
end Binary_to_BCD;

architecture Behavioral of Binary_to_BCD is
begin
    process(binary_in)
    variable bcd : STD_LOGIC_VECTOR (11 downto 0);
    begin
        bcd := "0000" & binary_in(7 downto 4) & "0000" & binary_in(3 downto 0);
        bcd_out <= bcd;
    end process;
end Behavioral;
