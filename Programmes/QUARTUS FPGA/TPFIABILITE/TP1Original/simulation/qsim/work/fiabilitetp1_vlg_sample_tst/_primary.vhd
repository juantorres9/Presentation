library verilog;
use verilog.vl_types.all;
entity fiabilitetp1_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        iCLK_50         : in     vl_logic;
        iCLK_50_2       : in     vl_logic;
        Rin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fiabilitetp1_vlg_sample_tst;
