onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /resetmodule_vhd_tst/iCLK
add wave -noupdate -radix hexadecimal /resetmodule_vhd_tst/iData
add wave -noupdate /resetmodule_vhd_tst/iWrConfig
add wave -noupdate /resetmodule_vhd_tst/iWrPeriod
add wave -noupdate /resetmodule_vhd_tst/inReset
add wave -noupdate /resetmodule_vhd_tst/i1/sReset
add wave -noupdate /resetmodule_vhd_tst/oReset
add wave -noupdate -radix decimal /resetmodule_vhd_tst/oResetConfig
add wave -noupdate -radix decimal /resetmodule_vhd_tst/oResetPeriod
add wave -noupdate /resetmodule_vhd_tst/i1/COUNTER/vCounter
add wave -noupdate /resetmodule_vhd_tst/i1/COUNTER1US/vCounter1US
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10200000 ps} 0} {{Cursor 2} {9248208 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 64
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
WaveRestoreZoom {0 ps} {13650 ns}
