onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SPI_WRAPPER_top/w_if/clk
add wave -noupdate /SPI_WRAPPER_top/w_if/MOSI
add wave -noupdate /SPI_WRAPPER_top/w_if/SS_n
add wave -noupdate /SPI_WRAPPER_top/w_if/rst_n
add wave -noupdate /SPI_WRAPPER_top/w_if/MISO
add wave -noupdate /SPI_WRAPPER_top/w_if/MISO_exp
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/clk
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/MOSI
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/rst_n
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/SS_n
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/tx_valid
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/tx_data
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/dut_w/SLAVE_instance/cs
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/rx_data
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/dut_w/SLAVE_instance/counter
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/dut_w/SLAVE_instance/received_address
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/dut_w/SLAVE_instance/ns
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/rx_valid
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/MISO
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/rx_data_exp
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/rx_valid_exp
add wave -noupdate -expand -group slave /SPI_WRAPPER_top/s_if/MISO_exp
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/clk
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/din
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/rst_n
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/rx_valid
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/dut_w/RAM_instance/MEM
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/dut_w/RAM_instance/Rd_Addr
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/dut_w/RAM_instance/Wr_Addr
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/dout
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/tx_valid
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/tx_valid_exp
add wave -noupdate -expand -group ram /SPI_WRAPPER_top/r_if/dout_exp
add wave -noupdate -expand -group shared -radix unsigned /shared_pkg::counter
add wave -noupdate -expand -group shared -radix binary /shared_pkg::store
add wave -noupdate -expand -group shared -radix binary /shared_pkg::old_array
add wave -noupdate -expand -group shared -radix binary /shared_pkg::store_seq_array
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {295 ns} 0}
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
WaveRestoreZoom {104 ns} {457 ns}
