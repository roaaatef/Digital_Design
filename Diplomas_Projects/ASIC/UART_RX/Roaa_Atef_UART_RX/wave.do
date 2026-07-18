onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/CLK_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/CLK_TX
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/RST_n_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/PAR_EN_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/PAR_TYP_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/RX_IN_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/prescale_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/data_valid_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/P_DATA_tb
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/TX_frame_P
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/TX_frame_NP
add wave -noupdate -group TB -color {Medium Violet Red} /UART_RX_TB/RX_DATA
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/par_err
add wave -noupdate -expand -group FSM -color Firebrick /UART_RX_TB/rx_dut/fsm/stp_err
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/strt_glitch
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/par_chk_en
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/strt_chk_en
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/stp_chk_en
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/deser_en
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/data_valid
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/enable_edge
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/enable_bit
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/dat_samp_en
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/cs
add wave -noupdate -expand -group FSM -color {Medium Blue} /UART_RX_TB/rx_dut/fsm/ns
add wave -noupdate -expand -group DATA_SAM -color {Orange Red} /UART_RX_TB/rx_dut/dt_sam/sampled_bit
add wave -noupdate -expand -group DATA_SAM -color {Orange Red} /UART_RX_TB/rx_dut/dt_sam/sampling_done
add wave -noupdate -expand -group DATA_SAM -color {Orange Red} /UART_RX_TB/rx_dut/dt_sam/bit1
add wave -noupdate -expand -group DATA_SAM -color {Orange Red} /UART_RX_TB/rx_dut/dt_sam/bit2
add wave -noupdate -expand -group DATA_SAM -color {Orange Red} /UART_RX_TB/rx_dut/dt_sam/bit3
add wave -noupdate -group DESER /UART_RX_TB/rx_dut/de_ser/P_DATA
add wave -noupdate -expand -group EDGE_BIT -radix unsigned /UART_RX_TB/rx_dut/edge_bit/edge_cnt
add wave -noupdate -expand -group EDGE_BIT -radix unsigned /UART_RX_TB/rx_dut/edge_bit/bit_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {1082279 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 258
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
configure wave -timelineunits ns
update
WaveRestoreZoom {1167538 ns} {1173293 ns}
