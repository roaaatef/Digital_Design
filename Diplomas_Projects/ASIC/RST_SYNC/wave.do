onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Blue -radix binary /RST_SYNC_tb/CLK_tb
add wave -noupdate -color Violet -radix binary /RST_SYNC_tb/RST_tb
add wave -noupdate -color Red -radix binary /RST_SYNC_tb/RST_SYNC_tb
add wave -noupdate -color {Yellow Green} -radix binary /RST_SYNC_tb/rst_sync/SYNC_REG
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16125 ps} 0}
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
WaveRestoreZoom {0 ps} {39679 ps}
