library IEEE;
use IEEE.std_logic_1164.all;

entity mux_32x1 is
port ( 
  dataIn		: in STD_LOGIC_VECTOR(31 downto 0);
  sel 		: in STD_LOGIC_VECTOR(4 downto 0);
  dataOut 	: out STD_LOGIC);
end mux_32x1;

architecture arc_mux_32x1 of mux_32x1 is
begin
    process (dataIn, sel)
    begin
        case sel is
            when "00000" =>
               dataOut <= dataIn(0);
            when "00001" =>
               dataOut <= dataIn(1);
            when "00010" =>
               dataOut <= dataIn(2);
            when "00011" =>
               dataOut <= dataIn(3);
            when "00100" =>
               dataOut <= dataIn(4);
            when "00101" =>
               dataOut <= dataIn(5);
            when "00110" =>
                dataOut <= dataIn(6);
            when "00111" =>
                dataOut <= dataIn(7);
            when "01000" =>
                dataOut <= dataIn(8);
            when "01001" =>
                dataOut <= dataIn(9);
            when "01010" =>
                dataOut <= dataIn(10);
            when "01011" =>
                dataOut <= dataIn(11);
            when "01100" =>
                dataOut <= dataIn(12);
            when "01101" =>
                dataOut <= dataIn(13);
            when "01110" =>
                dataOut <= dataIn(14);
            when "01111" =>
                dataOut <= dataIn(15);
            when "10000" =>
                dataOut <= dataIn(16);
            when "10001" =>
                dataOut <= dataIn(17);
            when "10010" =>
                dataOut <= dataIn(18);
            when "10011" =>
                dataOut <= dataIn(19);
            when "10100" =>
                dataOut <= dataIn(20);
            when "10101" =>
                dataOut <= dataIn(21);
            when "10110" =>
                dataOut <= dataIn(22);
            when "10111" =>
                dataOut <= dataIn(23);
            when "11000" =>
                dataOut <= dataIn(24);
            when "11001" =>
                dataOut <= dataIn(25);
            when "11010" =>
                dataOut <= dataIn(26);
            when "11011" =>
                dataOut <= dataIn(27);
            when "11100" =>
                dataOut <= dataIn(28);
            when "11101" =>
                dataOut <= dataIn(29);
            when "11110" =>
                dataOut <= dataIn(30);
            when others =>
                dataOut <= dataIn(31);
        end case;
    end process;
end arc_mux_32x1;
