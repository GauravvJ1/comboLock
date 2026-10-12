onerror {quit -f}
vlib work
vlog -work work CombonationLock.vo
vlog -work work CombonationLock.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CombonationLock_vlg_vec_tst
vcd file -direction CombonationLock.msim.vcd
vcd add -internal CombonationLock_vlg_vec_tst/*
vcd add -internal CombonationLock_vlg_vec_tst/i1/*
add wave /*
run -all
