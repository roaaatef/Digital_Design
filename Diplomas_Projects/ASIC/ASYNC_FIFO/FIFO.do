vlib work
vlog *.v
vsim -voptargs=+acc work.FIFO_TB
do wave.do
run -all
