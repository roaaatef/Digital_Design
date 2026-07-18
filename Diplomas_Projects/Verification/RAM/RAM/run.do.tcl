vlib work
vlog   RAM_P.sv +cover -covercells
vlog    RAM.sv RAM_TB.sv   +cover -covercells
vsim -voptargs=+acc work.RAM_TB  -cover
do wave.do
coverage save RAM_TB.ucdb -onexit 
run -all
