library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x1 is
port ( 
	a 			: in STD_LOGIC;
	b 			: in STD_LOGIC;
	sel 		: in STD_LOGIC;
	dataOut 	: out STD_LOGIC);
end mux_2x1;

architecture arc_mux_2x1 of mux_2x1 is
begin
    process (a, b, sel)
    begin
        if sel = '0' then
            dataOut <= a;
        else
            dataOut <= b;
        end if;
    end process;
end architecture;
