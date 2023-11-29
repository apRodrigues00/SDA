library verilog;
use verilog.vl_types.all;
entity somador is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        s               : out    vl_logic;
        cout            : out    vl_logic
    );
end somador;
