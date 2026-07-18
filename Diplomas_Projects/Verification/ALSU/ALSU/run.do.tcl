vlib work
vlog   ALSU_P.sv +cover -covercells
vlog    ALSU.sv ALSU_TB.sv   +cover -covercells
vsim -voptargs=+acc work.ALSU_TB  -cover
#do wave.do
add wave *
coverage save ALSU_TB.ucdb -onexit 
run -all
coverage exclude -du ALSU -togglenode {cin_reg[1]}