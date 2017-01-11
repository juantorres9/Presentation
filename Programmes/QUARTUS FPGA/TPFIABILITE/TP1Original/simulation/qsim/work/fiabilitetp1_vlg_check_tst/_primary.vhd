library verilog;
use verilog.vl_types.all;
entity fiabilitetp1_vlg_check_tst is
    port(
        oHEX0_D         : in     vl_logic_vector(6 downto 0);
        oLEDG           : in     vl_logic_vector(2 downto 0);
        Rout            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fiabilitetp1_vlg_check_tst;
