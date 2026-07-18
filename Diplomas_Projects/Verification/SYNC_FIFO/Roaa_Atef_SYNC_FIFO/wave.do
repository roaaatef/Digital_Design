onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo_top/f_if/clk
add wave -noupdate -radix unsigned /fifo_top/f_if/data_in
add wave -noupdate /fifo_top/f_if/rst_n
add wave -noupdate /fifo_top/f_if/wr_en
add wave -noupdate /fifo_top/f_if/rd_en
add wave -noupdate -radix unsigned /fifo_top/f_if/data_out
add wave -noupdate /fifo_top/f_if/wr_ack
add wave -noupdate /fifo_top/f_if/overflow
add wave -noupdate /fifo_top/f_if/full
add wave -noupdate /fifo_top/f_if/empty
add wave -noupdate /fifo_top/f_if/almostfull
add wave -noupdate /fifo_top/f_if/almostempty
add wave -noupdate /fifo_top/f_if/underflow
add wave -noupdate -childformat {{{/fifo_top/dut/mem[7]} -radix unsigned} {{/fifo_top/dut/mem[6]} -radix unsigned} {{/fifo_top/dut/mem[5]} -radix unsigned} {{/fifo_top/dut/mem[4]} -radix unsigned} {{/fifo_top/dut/mem[3]} -radix unsigned} {{/fifo_top/dut/mem[2]} -radix unsigned} {{/fifo_top/dut/mem[1]} -radix unsigned} {{/fifo_top/dut/mem[0]} -radix unsigned}} -subitemconfig {{/fifo_top/dut/mem[7]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[6]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[5]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[4]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[3]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[2]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[1]} {-height 15 -radix unsigned} {/fifo_top/dut/mem[0]} {-height 15 -radix unsigned}} /fifo_top/dut/mem
add wave -noupdate /fifo_top/dut/wr_ptr
add wave -noupdate /fifo_top/dut/rd_ptr
add wave -noupdate /fifo_top/dut/count
add wave -noupdate /fifo_top/mon/scr_b.data_out_ref
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13481347 ns} 0}
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
WaveRestoreZoom {13481343 ns} {13481367 ns}
