vlib work
vlog -f src_files.list.txt +define+SIM +cover -covercells
vsim -voptargs=+acc work.SLAVE_top -classdebug -uvmcontrol=all -cover
#add wave /SLAVE_top/s_if/*
do wave.do
coverage save SLAVE_top.ucdb -onexit 
run -all
