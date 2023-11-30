library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        enable          : in     vl_logic;
        sel             : in     vl_logic_vector(4 downto 0);
        write_reg       : out    vl_logic_vector(31 downto 0)
    );
end decoder;
