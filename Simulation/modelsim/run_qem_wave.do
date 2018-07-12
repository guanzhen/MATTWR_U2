onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /qemodule_vhd_tst/iA
add wave -noupdate /qemodule_vhd_tst/iB
add wave -noupdate /qemodule_vhd_tst/iCLK
add wave -noupdate /qemodule_vhd_tst/iData
add wave -noupdate /qemodule_vhd_tst/iIndex
add wave -noupdate /qemodule_vhd_tst/iWrQEMCONFIG
add wave -noupdate /qemodule_vhd_tst/iWrQEMCOUNTERH
add wave -noupdate /qemodule_vhd_tst/iWrQEMCOUNTERL
add wave -noupdate /qemodule_vhd_tst/inRESET
add wave -noupdate /qemodule_vhd_tst/oDir
add wave -noupdate /qemodule_vhd_tst/oIndex
add wave -noupdate /qemodule_vhd_tst/oPulse
add wave -noupdate -radix decimal /qemodule_vhd_tst/oQEMCONFIG
add wave -noupdate -radix decimal /qemodule_vhd_tst/oQEMCOUNTER
add wave -noupdate /qemodule_vhd_tst/i1/sQEMCOUNTER
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1897000 ps} 0}
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
WaveRestoreZoom {0 ps} {7350 ns}
