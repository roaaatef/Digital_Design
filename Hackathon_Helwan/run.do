vlib work
vlog clock_selection.v Clock_Divider.v Wishbone_interface.v PWM_Timer.v PWM_Timer_TOP.v PWM_Timer_TOP_tb.v  +cover -covercells
vsim -voptargs=+acc work.PWM_Timer_TOP_tb -cover
add wave *
add wave -position insertpoint  \
sim:/PWM_Timer_TOP_tb/DUT/CTRL_reg \
sim:/PWM_Timer_TOP_tb/DUT/DC_reg \
sim:/PWM_Timer_TOP_tb/DUT/DIVISOR_reg \
sim:/PWM_Timer_TOP_tb/DUT/PERIOD_reg
add wave -position insertpoint  \
sim:/PWM_Timer_TOP_tb/DUT/PWM/main_counter1
run -all



