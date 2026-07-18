vlib work
vlog *.v
vsim -voptargs=+acc work.RST_SYNC_tb
#add wave *
do wave.do
run -all
