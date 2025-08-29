library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity shift_resister is
port (clk,a,rst : in std_logic;
      --n : out std_logic_vector(3 downto 0);
      e     : out std_logic
		);
end shift_resister;

architecture RTL of shift_resister is
signal shift : std_logic_vector(99 downto 0) := (others => '0');

begin
process(clk,rst)begin

if(rst = '1')then
shift <= (others => '0');

elsif(rising_edge(clk))then
shift <= shift(98 downto 0) & a;

end if;
end process;
--n <= shift;
e <= shift(99);
end RTL;
