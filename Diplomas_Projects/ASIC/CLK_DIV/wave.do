onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB_SIGNALS /CLK_DIV_TB/i_ref_clk_tb
add wave -noupdate -expand -group TB_SIGNALS /CLK_DIV_TB/i_rst_n_tb
add wave -noupdate -expand -group TB_SIGNALS /CLK_DIV_TB/i_clk_en_tb
add wave -noupdate -expand -group TB_SIGNALS -radix unsigned /CLK_DIV_TB/i_div_ratio_tb
add wave -noupdate -expand -group TB_SIGNALS /CLK_DIV_TB/o_div_clk_tb
add wave -noupdate -expand -group DUT /CLK_DIV_TB/clk_div/flag
add wave -noupdate -expand -group DUT -radix unsigned /CLK_DIV_TB/clk_div/counter
add wave -noupdate -expand -group DUT -radix unsigned /CLK_DIV_TB/clk_div/half_toggle
add wave -noupdate -expand -group DUT /CLK_DIV_TB/clk_div/odd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1667 ns} 0}
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
WaveRestoreZoom {1567 ns} {2033 ns}
