library verilog;
use verilog.vl_types.all;
entity parite is
    port(
        REG             : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic
    );
end parite;
