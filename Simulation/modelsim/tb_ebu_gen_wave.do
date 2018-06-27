onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ebu_gen/ebu_gen/reset
add wave -noupdate /tb_ebu_gen/ebu_gen/iclk
add wave -noupdate /tb_ebu_gen/ebu_gen/ien_wait
add wave -noupdate /tb_ebu_gen/ebu_gen/iRd_nWr
add wave -noupdate -divider Outputs
add wave -noupdate /tb_ebu_gen/ebu_gen/state
add wave -noupdate /tb_ebu_gen/ebu_gen/oCS
add wave -noupdate /tb_ebu_gen/ebu_gen/iWait
add wave -noupdate /tb_ebu_gen/ebu_gen/oADV
add wave -noupdate /tb_ebu_gen/ebu_gen/oRD
add wave -noupdate /tb_ebu_gen/ebu_gen/oWR
add wave -noupdate -radix hexadecimal /tb_ebu_gen/ebu_gen/iAddress
add wave -noupdate -radix hexadecimal /tb_ebu_gen/ebu_gen/iData
add wave -noupdate -radix hexadecimal /tb_ebu_gen/ebu_gen/oData
add wave -noupdate -radix hexadecimal /tb_ebu_gen/ebu_gen/ioData
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2502281 ps} 0}
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
WaveRestoreZoom {0 ps} {5250 ns}
