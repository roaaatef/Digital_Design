vlib work
vlog -f src_files.list.txt +cover -covercells
vsim   -voptargs=+acc work.alsu_top -classdebug -uvmcontrol=all -cover
add wave /alsu_top/a_if/*
add wave /alsu_top/shiftregif/*
coverage save alsu_top.ucdb -onexit 
run -all
coverage exclude -du ALSU -togglenode {cin_reg[1]}