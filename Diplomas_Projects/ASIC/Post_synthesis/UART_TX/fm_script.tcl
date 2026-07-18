
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/UART_TX/Ass_Formal_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/UART_TX/Ass_Formal_1.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/UART_TX/Ass_Formal_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
 set synopsys_auto_setup true

# Formality Setup File
 set_svf "/home/IC/UART_TX/Ass_Formal_1.0/syn1/UART_TX_TOP.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/rtl/UART_TX_TOP.v"
read_verilog -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/rtl/FSM.v"
read_verilog -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/rtl/MUX.v"
read_verilog -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/rtl/PARITY_CALC.v"
read_verilog -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/rtl/SERIALIZER.v"
# Read Reference technology libraries
read_db -container Ref "/home/IC/UART_TX/Ass_Formal_1.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# set the top Reference Design 
set_reference_design UART_TX_TOP
set_top UART_TX_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp "/home/IC/UART_TX/Ass_Formal_1.0/syn1/UART_TX_TOP.v"

# Read Implementation technology libraries
read_db -container Imp "/home/IC/UART_TX/Ass_Formal_1.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# set the top Implementation Design

set_implementation_design UART_TX_TOP
set_top UART_TX_TOP

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui

