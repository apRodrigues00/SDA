library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use work.my_pack.all;

entity ula is
port
(
	a, b									: in STD_LOGIC_VECTOR(31 downto 0);
	sel 									: in STD_LOGIC_VECTOR(2 downto 0);
	negative, zero, cout, overflow: out STD_LOGIC;
	s										: out STD_LOGIC_VECTOR(31 downto 0)
);
end ula;

architecture arc_ula of ula is

signal resultado : STD_LOGIC_VECTOR(31 downto 0);

begin
	 SOMASUB : somador_nbits port map (sel(0), a, b, resultado, cout, overflow);  
	 
    process (sel)
    begin
        if 	  sel = "000" then s <= a;
        elsif sel = "001" then s <= a or b;
		  elsif sel = "010" then s <= resultado;
		  elsif sel = "011" then s <= resultado;
		  elsif sel = "100" then s <= a xor (not (b));
		  elsif sel = "101" then s <= not (b);
		  elsif sel = "110" then s <= b;
		  elsif sel = "111" then s <= a nand b;
        end if;
    end process;
end architecture;
