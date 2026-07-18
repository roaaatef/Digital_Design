onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /DATA_SYNC_tb/CLK_DESTINATION_tb
add wave -noupdate -expand -group TB /DATA_SYNC_tb/RST_DESTINATION_tb
add wave -noupdate -expand -group TB /DATA_SYNC_tb/bus_enable_tb
add wave -noupdate -expand -group TB -radix unsigned /DATA_SYNC_tb/unsync_bus_tb
add wave -noupdate -expand -group TB /DATA_SYNC_tb/sync_bus_tb
add wave -noupdate -expand -group TB /DATA_SYNC_tb/enable_pulse_tb
add wave -noupdate -radix binary /DATA_SYNC_tb/data_sync/en/SYNC_REG
add wave -noupdate -expand -group PULSE /DATA_SYNC_tb/data_sync/pulse/PULSE_FLOP
add wave -noupdate -expand -group PULSE /DATA_SYNC_tb/data_sync/pulse/enable_pulse_comb
add wave -noupdate /DATA_SYNC_tb/data_sync/en/sync_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {37196 ps} 0}
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
WaveRestoreZoom {0 ps} {114724 ps}
