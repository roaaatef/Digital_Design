onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SLAVE_top/s_if/clk
add wave -noupdate /SLAVE_top/s_if/MOSI
add wave -noupdate /SLAVE_top/s_if/rst_n
add wave -noupdate /SLAVE_top/s_if/SS_n
add wave -noupdate /SLAVE_top/s_if/tx_valid
add wave -noupdate /SLAVE_top/s_if/tx_data
add wave -noupdate -radix binary /SLAVE_top/s_if/rx_data
add wave -noupdate /SLAVE_top/s_if/rx_valid
add wave -noupdate /SLAVE_top/s_if/MISO
add wave -noupdate /SLAVE_top/s_if/rx_data_exp
add wave -noupdate /SLAVE_top/s_if/rx_valid_exp
add wave -noupdate /SLAVE_top/s_if/MISO_exp
add wave -noupdate /SLAVE_top/dut/received_address
add wave -noupdate /SLAVE_top/dut/cs
add wave -noupdate /SLAVE_top/dut/ns
add wave -noupdate -radix unsigned /shared_pkg::counter
add wave -noupdate -radix binary /shared_pkg::store
add wave -noupdate -radix binary /shared_pkg::old_array
add wave -noupdate /shared_pkg::store_seq_array
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {105 ns} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {102 ns} {111 ns}
