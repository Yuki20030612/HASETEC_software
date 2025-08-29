library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pulse is

port ( clk,rst : in std_logic;
       pulse_sw : out std_logic;
		 pulse_D : out std_logic
	  );
end pulse;

architecture RTL of pulse is -- CLKは50MHzです
constant Tsw:std_logic_vector(11 downto 0):=x"9c3";--20k(clkを2500回カウントすると1周期)
constant Toff:std_logic_vector(11 downto 0):=x"6a3";--clkを1700回カウントすると

signal cnt_Tsw :std_logic_vector(11 downto 0):=x"000"; 
signal cnt_Toff :std_logic_vector(11 downto 0):=x"000";

signal pul :std_logic:='0';

begin
process(clk,rst)begin
if(rst = '1')then
cnt_Toff <= (others => '0');
cnt_Tsw <= (others => '0');
pul <= '0';

elsif(rising_edge(clk))then
cnt_Toff <= cnt_Toff + '1';
cnt_Tsw <= cnt_Tsw + '1';
 
 if(cnt_Toff = Toff)then 
 pul <= '1';
 end if;
 
 if(cnt_Tsw = Tsw)then 
 pul <= '0';

 cnt_Toff <= (others=>'0');
 cnt_Tsw <= (others=>'0');
 end if;

end if;
end process;
pulse_sw <= pul;
pulse_D <= not pul;
end RTL;