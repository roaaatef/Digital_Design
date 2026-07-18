onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {TB signals} -color Magenta /UART_TX_TB/CLK_tb
add wave -noupdate -expand -group {TB signals} -color {Blue Violet} /UART_TX_TB/RST_tb
add wave -noupdate -expand -group {TB signals} -color Red /UART_TX_TB/DATA_VALID_tb
add wave -noupdate -expand -group {TB signals} -color Red /UART_TX_TB/PAR_EN_tb
add wave -noupdate -expand -group {TB signals} -color Red /UART_TX_TB/PAR_TYP_tb
add wave -noupdate -expand -group {TB signals} -color Orange -radix binary /UART_TX_TB/P_DATA_tb
add wave -noupdate -expand -group {TB signals} -color Blue /UART_TX_TB/TX_OUT_tb
add wave -noupdate -expand -group {TB signals} -color Blue /UART_TX_TB/busy_tb
add wave -noupdate -expand -group serializer -color {Blue Violet} -radix binary /UART_TX_TB/DUT/ser/serial_data
add wave -noupdate -expand -group serializer -color {Blue Violet} -radix unsigned /UART_TX_TB/DUT/ser/counter
add wave -noupdate -expand -group serializer -color {Blue Violet} /UART_TX_TB/DUT/ser/ser_done
add wave -noupdate -group fsm -color {Medium Orchid} -radix binary /UART_TX_TB/DUT/fsm/cs
add wave -noupdate -group fsm -color {Medium Orchid} -radix binary /UART_TX_TB/DUT/fsm/ns
add wave -noupdate -group fsm -color {Medium Orchid} /UART_TX_TB/DUT/fsm/ser_en
add wave -noupdate -group fsm -color {Medium Orchid} /UART_TX_TB/DUT/fsm/MUX_SEL
add wave -noupdate -expand -group {parity calc} -color Orange /UART_TX_TB/DUT/par/PAR_BIT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {68228 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 236
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {75610 ps}
