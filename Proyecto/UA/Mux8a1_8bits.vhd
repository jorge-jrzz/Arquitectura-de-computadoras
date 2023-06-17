library ieee;
use ieee.std_logic_1164.all;

entity Mux8a1_8bits is
    port(
        a1,a2,a3,a4,a5,a6,a7,a8: in std_logic_vector(7 downto 0);
        s: in std_logic_vector(2 downto 0);
        R: out std_logic_vector(7 downto 0)
    );
end Mux8a1_8bits;

architecture arch of Mux8a1_8bits is
    begin
        with s select 
            R <= a1 when "000",
                 a2 when "001",
                 a3 when "010",
                 a4 when "011",
                 a5 when "100",
                 a6 when "101",
                 a7 when "110",
                 a8 when others;
end arch;