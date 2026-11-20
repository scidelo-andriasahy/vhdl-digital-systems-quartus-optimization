library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity unitearithmetique is
generic (
W : positive := 8 -- largeur des opérandes
);
port(
A, B : in integer(W - 1 downto 0); -- les operandes de type signé
choix : in std_logic_vector(2 downto 0); -- le sélecteur d'opération
F : out std_logic_vector(W - 1 downto 0) -- le résultat
);
end unitearithmetique;
architecture arch of unitearithmetique is
begin
process(A, B, choix)
variable t : integer range 0 to 2**W-1;
begin
t <= to_integer(A * B);
case to_integer(unsigned(choix)) is
when 4 => F <= std_logic_vector(abs(A));
when 6 => F <= t;
when others => F <= 'X';
end case;
end process;
end arch;