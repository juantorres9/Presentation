library verilog;
use verilog.vl_types.all;
entity fiabilitetp1 is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        Rin             : in     vl_logic;
        iCLK_50         : in     vl_logic;
        iCLK_50_2       : in     vl_logic;
        oHEX0_D         : out    vl_logic_vector(6 downto 0);
        oLEDG           : out    vl_logic_vector(2 downto 0);
        Rout            : out    vl_logic
    );
end fiabilitetp1;
