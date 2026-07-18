onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/RD_CLK_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/WR_CLK_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/RD_RST_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/WR_RST_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/WINC_TB
add wave -noupdate -expand -group TB -color Cyan -radix binary /FIFO_TB/RINC_TB
add wave -noupdate -expand -group TB -color Cyan -radix unsigned /FIFO_TB/WDATA_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/FULL_TB
add wave -noupdate -expand -group TB -color Cyan /FIFO_TB/EMPTY_TB
add wave -noupdate -expand -group TB -color Cyan -radix unsigned /FIFO_TB/RDATA_TB
add wave -noupdate -expand -group FIFO_MEM -color Plum -radix unsigned /FIFO_TB/DUT/fifo_mem/WADDR
add wave -noupdate -expand -group FIFO_MEM -color Plum -radix unsigned /FIFO_TB/DUT/fifo_mem/RADDR
add wave -noupdate -expand -group FIFO_MEM -color Plum -radix unsigned -childformat {{{/FIFO_TB/DUT/fifo_mem/FIFO[7]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[6]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[5]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[4]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[3]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[2]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[1]} -radix unsigned} {{/FIFO_TB/DUT/fifo_mem/FIFO[0]} -radix unsigned}} -expand -subitemconfig {{/FIFO_TB/DUT/fifo_mem/FIFO[7]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[6]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[5]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[4]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[3]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[2]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[1]} {-color Plum -height 15 -radix unsigned} {/FIFO_TB/DUT/fifo_mem/FIFO[0]} {-color Plum -height 15 -radix unsigned}} /FIFO_TB/DUT/fifo_mem/FIFO
add wave -noupdate -expand -group FIFO_MEM -color Plum -radix unsigned /FIFO_TB/DUT/fifo_mem/WEN
add wave -noupdate -expand -group READ_SYNCHRONIZER -color Cyan -radix binary /FIFO_TB/DUT/sync_read/GRAY_RPTR
add wave -noupdate -expand -group READ_SYNCHRONIZER -color Cyan -radix binary /FIFO_TB/DUT/sync_read/RD_PTR_SYNC
add wave -noupdate -expand -group READ_SYNCHRONIZER -color Cyan -radix binary /FIFO_TB/DUT/sync_read/SYNC_REG
add wave -noupdate -expand -group WRITE_SYNC -color {Medium Orchid} -radix binary /FIFO_TB/DUT/sync_write/GRAY_WPTR
add wave -noupdate -expand -group WRITE_SYNC -color {Medium Orchid} -radix binary /FIFO_TB/DUT/sync_write/WR_PTR_SYNC
add wave -noupdate -expand -group WRITE_SYNC -color {Medium Orchid} -radix binary /FIFO_TB/DUT/sync_write/SYNC_REG
add wave -noupdate -expand -group RD -color Red -radix binary /FIFO_TB/DUT/rd/WR_SYNC
add wave -noupdate -expand -group RD -color Red -radix binary /FIFO_TB/DUT/rd/RADDR
add wave -noupdate -expand -group RD -color Red -radix binary /FIFO_TB/DUT/rd/RD_PTR
add wave -noupdate -expand -group RD -color Red -radix binary /FIFO_TB/DUT/rd/EMPTY
add wave -noupdate -expand -group RD -color Red -radix binary /FIFO_TB/DUT/rd/RD_PTR_bin
add wave -noupdate -expand -group WR -color Salmon -radix binary /FIFO_TB/DUT/wr/RD_SYNC
add wave -noupdate -expand -group WR -color Salmon -radix binary /FIFO_TB/DUT/wr/WADDR
add wave -noupdate -expand -group WR -color Salmon -radix binary /FIFO_TB/DUT/wr/WR_PTR
add wave -noupdate -expand -group WR -color Salmon -radix binary /FIFO_TB/DUT/wr/FULL
add wave -noupdate -expand -group WR -color Salmon -radix binary /FIFO_TB/DUT/wr/WR_PTR_bin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {537500 ps} 0} {{Cursor 2} {1629001 ps} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {1502642 ps} {1800507 ps}
