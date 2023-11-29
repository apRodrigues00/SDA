library verilog;
use verilog.vl_types.all;
entity somador_nbits_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end somador_nbits_vlg_sample_tst;
