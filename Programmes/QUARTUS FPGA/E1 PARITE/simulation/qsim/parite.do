onerror {quit -f}
vlib work
vlog -work work parite.vo
vlog -work work parite.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parite_vlg_vec_tst
vcd file -direction parite.msim.vcd
vcd add -internal parite_vlg_vec_tst/*
vcd add -internal parite_vlg_vec_tst/i1/*
add wave /*
run -all
