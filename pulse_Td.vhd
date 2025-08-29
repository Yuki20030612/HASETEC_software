library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pulse_Td is

port ( clk,rst : in std_logic;
       pulse_SW_Td,pulse_D_Td : out std_logic
     );
end pulse_Td;



architecture RTL of pulse_Td is 

component pulse
port( clk,rst : in std_logic;
       pulse_sw : out std_logic;
		 pulse_D : out std_logic
	  );
end component;

component shift_resister
port (clk,a,rst : in std_logic;
      e     : out std_logic
		);
end component;

signal AF_SW,AF_D,U1_e,U2_e,SW,D : std_logic;

begin

U0 : pulse port map (clk,rst,AF_SW,AF_D);
U1 : shift_resister port map (clk,AF_SW,rst,U1_e);
U2 : shift_resister port map (clk,AF_D,rst,U2_e);

process(clk,rst) begin
if(rst = '1') then
SW <= '0';
D <= '0';

elsif(rising_edge(clk)) then
SW <= AF_SW and U1_e;
D <= AF_D and U2_e;

end if;
end process;
pulse_SW_Td <= SW;
pulse_D_Td <= D;
end RTL;