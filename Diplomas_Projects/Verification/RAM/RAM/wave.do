onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Cyan -radix unsigned /RAM_TB/clk
add wave -noupdate -color Red /RAM_TB/error_count
add wave -noupdate -color Red /RAM_TB/correct_count
add wave -noupdate -color Gold /RAM_TB/value
add wave -noupdate -color Plum /RAM_TB/write
add wave -noupdate -color Plum /RAM_TB/read
add wave -noupdate -color {Medium Orchid} -radix unsigned /RAM_TB/data_in
add wave -noupdate -color {Medium Blue} -radix unsigned /RAM_TB/address
add wave -noupdate -color {Medium Orchid} -radix unsigned /RAM_TB/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2 ns} 0}
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
WaveRestoreZoom {0 ns} {19 ns}
