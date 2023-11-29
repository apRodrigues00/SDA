library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x1 is
port ( 
	a 			: in std_logic_vector(31 downto 0);
	b 			: in std_logic_vector(31 downto 0);
	sel 		: in STD_LOGIC;
	dataOut 	: out std_logic_vector(31 downto 0)
	);
end mux_2x1;

architecture arc_mux_2x1 of mux_2x1 is
begin
    process (sel)
    begin
        if sel = '0' then
            dataOut <= a;
        else
            dataOut <= b;
        end if;
    end process;
end architecture;
