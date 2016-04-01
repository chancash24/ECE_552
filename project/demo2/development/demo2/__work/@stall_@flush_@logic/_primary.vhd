library verilog;
use verilog.vl_types.all;
entity stall_flush_logic is
    port(
        pc_sel          : in     vl_logic;
        halt_dec        : in     vl_logic;
        halt_exe        : in     vl_logic;
        halt_mem        : in     vl_logic;
        halt_wb         : in     vl_logic;
        forward_mem     : in     vl_logic;
        mem_read_mem    : in     vl_logic;
        flush_ifde      : out    vl_logic;
        flush_deex      : out    vl_logic;
        flush_exme      : out    vl_logic;
        flush_mewb      : out    vl_logic;
        stall_fetch     : out    vl_logic;
        stall_ifde      : out    vl_logic;
        stall_deex      : out    vl_logic;
        stall_exme      : out    vl_logic;
        stall_mewb      : out    vl_logic
    );
end stall_flush_logic;