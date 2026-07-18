vlib work
vlog *.v
vsim -voptargs=+acc work.DATA_SYNC_tb
#add wave *
do wave.do
run -all
