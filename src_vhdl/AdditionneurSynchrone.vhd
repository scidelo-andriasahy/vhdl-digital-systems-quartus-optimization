library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AdditionneurSynchrone is
  port (
    clk  : in std_logic;
    a, b : in  unsigned(3 downto 0);
    s    : out unsigned(3 downto 0);
    cout : out std_logic
    );
end entity;

architecture arc of AdditionneurSynchrone is
  -- 
  signal reg_a, reg_b : unsigned(3 downto 0);
  signal resultat     : unsigned(4 downto 0);
begin

  process(clk)
  begin
    if rising_edge(clk) then
        -- 
        reg_a <= a;
        reg_b <= b;
        
        
        resultat <= ('0' & reg_a) + ('0' & reg_b);
        
        
        s    <= resultat(3 downto 0);
        cout <= resultat(4);
    end if;
  end process;

end arc;