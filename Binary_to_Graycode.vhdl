-- Binary to Graycode Conversion
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_to_Gray is
    Port ( binary_in : in  STD_LOGIC_VECTOR (3 downto 0);
           gray_out  : out STD_LOGIC_VECTOR (3 downto 0));
end Binary_to_Gray;

architecture Behavioral of Binary_to_Gray is
begin
    process(binary_in)
    begin
        gray_out(3) <= binary_in(3);
        gray_out(2) <= binary_in(3) xor binary_in(2);
        gray_out(1) <= binary_in(2) xor binary_in(1);
        gray_out(0) <= binary_in(1) xor binary_in(0);
    end process;
end Behavioral;
