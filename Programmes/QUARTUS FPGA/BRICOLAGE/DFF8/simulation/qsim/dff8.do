onerror {quit -f}
vlib work
vlog -work work dff8.vo
vlog -work work dff8.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dff8_vlg_vec_tst
vcd file -direction dff8.msim.vcd
vcd add -internal dff8_vlg_vec_tst/*
vcd add -internal dff8_vlg_vec_tst/i1/*
add wave /*
run -all
