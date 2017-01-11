library verilog;
use verilog.vl_types.all;
entity parite_vlg_sample_tst is
    port(
        REG             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end parite_vlg_sample_tst;
