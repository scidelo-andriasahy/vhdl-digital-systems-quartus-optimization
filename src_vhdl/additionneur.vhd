library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity additionneur is
  port (
    a, b : in  unsigned(3 downto 0);
    s    : out unsigned(3 downto 0);
    cout : out std_logic
    );
end entity;

architecture arc of additionneur is
 
  signal resultat : unsigned(4 downto 0);

begin

  resultat <= ('0' & a) + ('0' & b);
  s        <= resultat(3 downto 0);
  cout     <= resultat(4);
 
end arc;