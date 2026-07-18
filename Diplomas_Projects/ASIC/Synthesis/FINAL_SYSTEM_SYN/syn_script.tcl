
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
lappend search_path /home/IC/SYSTEM/std_cells
lappend search_path /home/IC/SYSTEM/rtl
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog
analyze -format $file_format ALU.v
analyze -format $file_format BUSY_PULSE_GENERATOR.v
analyze -format $file_format CLK_GATE.v
analyze -format $file_format CLOCK_DIV.v
analyze -format $file_format DATA_SAMPLING.v
analyze -format $file_format DATA_SYNC.v
analyze -format $file_format DE_SERIALIZER.v
analyze -format $file_format D_SYNC_RD.v
analyze -format $file_format D_SYNC_WR.v
analyze -format $file_format EDGE_BIT_COUNTER.v
analyze -format $file_format enable_sync.v
analyze -format $file_format FIFO_MEM.v
analyze -format $file_format FIFO_RD.v
analyze -format $file_format FIFO_TOP.v
analyze -format $file_format FIFO_WR.v
analyze -format $file_format FSM.v
analyze -format $file_format FSM_TX.v
analyze -format $file_format input_division_rx_ratio.v
analyze -format $file_format MUX.v
analyze -format $file_format PARITY_CALC.v
analyze -format $file_format PARITY_CHECK.v
analyze -format $file_format pulse_generator.v
analyze -format $file_format Register_file.v
analyze -format $file_format RST_SYNC.v
analyze -format $file_format SERIALIZER.v
analyze -format $file_format STOP_CHECK.v
analyze -format $file_format STR_CHECK.v
analyze -format $file_format sync_bus.v
analyze -format $file_format SYS_CTRL.v
analyze -format $file_format UART_RX_TOP.v
analyze -format $file_format UART_SYS_TOP.v
analyze -format $file_format UART_TX_TOP.v
analyze -format $file_format SYS_TOP.v
elaborate -lib work SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"


#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 
set_svf -off
#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min > reports/hold.rpt
report_timing -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start

#exit
