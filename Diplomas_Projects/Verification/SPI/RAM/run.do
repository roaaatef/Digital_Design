vlib work
vlog -f src_files.list.txt +cover -covercells
vsim -voptargs=+acc work.RAM_top -classdebug -uvmcontrol=all -cover
add wave /RAM_top/r_if/*
coverage save RAM_top.ucdb -onexit 
run -all
