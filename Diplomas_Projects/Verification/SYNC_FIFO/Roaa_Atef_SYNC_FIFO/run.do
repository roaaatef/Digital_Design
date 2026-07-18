vlib work
vlog -f src_files.list.txt  +define+SIM +cover -covercells 

vsim   -voptargs=+acc work.fifo_top -classdebug -uvmcontrol=all -cover
#add wave /fifo_top/f_if/*
run 0 
do wave.do
coverage save fifo_top.ucdb -onexit 
run -all

