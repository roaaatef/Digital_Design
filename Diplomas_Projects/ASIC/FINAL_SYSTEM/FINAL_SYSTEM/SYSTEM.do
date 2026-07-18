vlib work
vlog *.v
vsim -voptargs=+acc work.SYSTEM_TB
#add wave *
do wave.do
run -all
