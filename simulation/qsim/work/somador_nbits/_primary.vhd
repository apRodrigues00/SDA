library verilog;
use verilog.vl_types.all;
entity somador_nbits is
    port(
        c0              : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(31 downto 0);
        c4              : out    vl_logic;
        overflow        : out    vl_logic
    );
end somador_nbits;
