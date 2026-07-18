vlib work
vlog -f src_files.list.txt +cover -covercells
vsim -voptargs=+acc work.SPI_WRAPPER_top -classdebug -uvmcontrol=all -cover
do wave.do
#add wave /SPI_WRAPPER_top/w_if/*
coverage save SPI_WRAPPER_top.ucdb -onexit 
run -all
