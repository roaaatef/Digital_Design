onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/CLK
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/RST_n
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/PAR_EN
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/PAR_TYP
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/RX_IN
add wave -noupdate -group rx -radix unsigned /SYSTEM_TB/DUT/uart/rx/prescale
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/fsm_2/cs
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/fsm_2/ns
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/str_chk/strt_glitch
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/data_valid
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/P_DATA
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/stp_err
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/par_err
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/par_chk_en
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/strt_chk_en
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/stp_chk_en
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/strt_glitch
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/deser_en
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/dat_samp_en
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/enable_edge
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/enable_bit
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/bit_cnt
add wave -noupdate -group rx /SYSTEM_TB/DUT/uart/rx/sampled_bit
add wave -noupdate -group rx -radix unsigned /SYSTEM_TB/DUT/uart/rx/edge_cnt
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/CLK
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/RST
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/FIFO_EMPTY
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/PAR_EN
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/PAR_TYP
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/fsm_1/DATA_VALID
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/P_DATA
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/TX_OUT
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/busy
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/ser_en
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/fsm_1/cs
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/fsm_1/ns
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/ser_done
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/ser_data
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/mux_sel
add wave -noupdate -expand -group tx /SYSTEM_TB/DUT/uart/tx/par_bit
add wave -noupdate -group busy_pulse /SYSTEM_TB/DUT/busy_pulse_gen/sync_en
add wave -noupdate -group busy_pulse /SYSTEM_TB/DUT/busy_pulse_gen/CLK_DESTINATION
add wave -noupdate -group busy_pulse /SYSTEM_TB/DUT/busy_pulse_gen/RST_DESTINATION
add wave -noupdate -group busy_pulse /SYSTEM_TB/DUT/busy_pulse_gen/enable_pulse
add wave -noupdate -group busy_pulse /SYSTEM_TB/DUT/busy_pulse_gen/PULSE_FLOP
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/CLK_DESTINATION
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/RST_DESTINATION
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/bus_enable
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/unsync_bus
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/sync_bus
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/enable_pulse
add wave -noupdate -group data_sync /SYSTEM_TB/DUT/data_sync/sync_en
add wave -noupdate -group clk_div_2 /SYSTEM_TB/DUT/clk_div_2/i_ref_clk
add wave -noupdate -group clk_div_2 /SYSTEM_TB/DUT/clk_div_2/i_rst_n
add wave -noupdate -group clk_div_2 /SYSTEM_TB/DUT/clk_div_2/i_clk_en
add wave -noupdate -group clk_div_2 /SYSTEM_TB/DUT/clk_div_2/i_div_ratio
add wave -noupdate -group clk_div_2 /SYSTEM_TB/DUT/clk_div_2/o_div_clk
add wave -noupdate -group clk_div_1 /SYSTEM_TB/DUT/clk_div_1/i_ref_clk
add wave -noupdate -group clk_div_1 /SYSTEM_TB/DUT/clk_div_1/i_rst_n
add wave -noupdate -group clk_div_1 /SYSTEM_TB/DUT/clk_div_1/i_clk_en
add wave -noupdate -group clk_div_1 /SYSTEM_TB/DUT/clk_div_1/i_div_ratio
add wave -noupdate -group clk_div_1 /SYSTEM_TB/DUT/clk_div_1/o_div_clk
add wave -noupdate -group div /SYSTEM_TB/DUT/div/prescale
add wave -noupdate -group div /SYSTEM_TB/DUT/div/in_div_ratio
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WINC
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WR_CLK
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WR_RST
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/RD_SYNC
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WADDR
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WR_PTR
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/FULL
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WR_PTR_bin
add wave -noupdate -group fifo_Wr /SYSTEM_TB/DUT/fifo/wr/WR_GRAY_PTR_COMB
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RINC
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RD_CLK
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RD_RST
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/WR_SYNC
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RADDR
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RD_PTR
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/EMPTY
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RD_PTR_bin
add wave -noupdate -group fifo_rd /SYSTEM_TB/DUT/fifo/rd/RD_GRAY_PTR_COMB
add wave -noupdate -group fifo_rd_sync /SYSTEM_TB/DUT/fifo/sync_write/RD_CLK
add wave -noupdate -group fifo_rd_sync /SYSTEM_TB/DUT/fifo/sync_write/GRAY_WPTR
add wave -noupdate -group fifo_rd_sync /SYSTEM_TB/DUT/fifo/sync_write/RD_RST
add wave -noupdate -group fifo_rd_sync /SYSTEM_TB/DUT/fifo/sync_write/WR_PTR_SYNC
add wave -noupdate -group fifo_rd_sync /SYSTEM_TB/DUT/fifo/sync_write/SYNC_REG
add wave -noupdate -group fifo_wr_sync /SYSTEM_TB/DUT/fifo/sync_read/WR_CLK
add wave -noupdate -group fifo_wr_sync /SYSTEM_TB/DUT/fifo/sync_read/GRAY_RPTR
add wave -noupdate -group fifo_wr_sync /SYSTEM_TB/DUT/fifo/sync_read/WR_RST
add wave -noupdate -group fifo_wr_sync /SYSTEM_TB/DUT/fifo/sync_read/RD_PTR_SYNC
add wave -noupdate -group fifo_wr_sync /SYSTEM_TB/DUT/fifo/sync_read/SYNC_REG
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/WADDR
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/RADDR
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/WDATA
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/WR_CLK
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/RST
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/WINC
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/WFULL
add wave -noupdate -group fifo_mem /SYSTEM_TB/DUT/fifo/fifo_mem/RDATA
add wave -noupdate -group fifo_mem -expand /SYSTEM_TB/DUT/fifo/fifo_mem/FIFO
add wave -noupdate -group rst_sync_d2 /SYSTEM_TB/DUT/rst_sync_d2/RST
add wave -noupdate -group rst_sync_d2 /SYSTEM_TB/DUT/rst_sync_d2/CLK
add wave -noupdate -group rst_sync_d2 /SYSTEM_TB/DUT/rst_sync_d2/RST_SYNC
add wave -noupdate -group rst_sync_d2 /SYSTEM_TB/DUT/rst_sync_d2/SYNC_REG
add wave -noupdate -group rst_sync_d1 /SYSTEM_TB/DUT/rst_sync_d1/RST
add wave -noupdate -group rst_sync_d1 /SYSTEM_TB/DUT/rst_sync_d1/CLK
add wave -noupdate -group rst_sync_d1 /SYSTEM_TB/DUT/rst_sync_d1/RST_SYNC
add wave -noupdate -group rst_sync_d1 /SYSTEM_TB/DUT/rst_sync_d1/SYNC_REG
add wave -noupdate -group TB /SYSTEM_TB/RX_IN
add wave -noupdate -group TB /SYSTEM_TB/TX_OUT
add wave -noupdate -group TB /SYSTEM_TB/REF_CLK
add wave -noupdate -group TB /SYSTEM_TB/UART_CLK
add wave -noupdate -group TB /SYSTEM_TB/RST
add wave -noupdate -group TB /SYSTEM_TB/STP_ERR
add wave -noupdate -group TB /SYSTEM_TB/PAR_ERR
add wave -noupdate -group TB /SYSTEM_TB/DATA_STORE
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/WrData
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/REF_CLK
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/RST
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/WrEn
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/RdEn
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/Address
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/RdData
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/RdData_Valid
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/REG0
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/REG1
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/REG2
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/DUT/reg_file/REG3
add wave -noupdate -expand -group REG_FILE -expand /SYSTEM_TB/DUT/reg_file/Reg_File
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/ALU_out_valid
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RX_D_VLD
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_RdData_Valid
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/CLK
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RST
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/FIFO_FULL
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/ALU_OUT
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RX_P_Data
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_RD_DATA
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/ALU_EN
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/WR_INC_FIFO
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/ALU_FUNC
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/CLK_GATE_EN
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_Address
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_WrEN
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_RdEn
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/RF_WrData
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/FIFO_WR_Data
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/clk_div_en
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/cs
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/ns
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/address_stored
add wave -noupdate -expand -group CTRL /SYSTEM_TB/DUT/control_unit/reg_alu_storing_value
add wave -noupdate -group GATE /SYSTEM_TB/DUT/clk_gate/GATED_CLK
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/FUNC
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/A
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/B
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/ALU_OUT
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/ALU_FUN
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/REF_CLK
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/EN
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/RST
add wave -noupdate -expand -group ALU /SYSTEM_TB/DUT/alu/ALU_OUT_VALID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {639049768 ps} 0} {{Cursor 2} {456750000 ps} 0} {{Cursor 3} {860771260 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {638719103 ps} {639348014 ps}
