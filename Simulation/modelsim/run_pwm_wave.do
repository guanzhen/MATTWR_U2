onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pwmmodule_vhd_tst/inRESET
add wave -noupdate -radix hexadecimal /pwmmodule_vhd_tst/iData
add wave -noupdate /pwmmodule_vhd_tst/iWrPWMCONFIG
add wave -noupdate /pwmmodule_vhd_tst/iWrPWMDUTY
add wave -noupdate /pwmmodule_vhd_tst/iWrPWMPERIOD
add wave -noupdate -radix decimal /pwmmodule_vhd_tst/oPWMCONFIG
add wave -noupdate -radix decimal /pwmmodule_vhd_tst/oPWMDUTY
add wave -noupdate -radix decimal /pwmmodule_vhd_tst/oPWMPERIOD
add wave -noupdate /pwmmodule_vhd_tst/iCLK
add wave -noupdate /pwmmodule_vhd_tst/i1/sPWMState
add wave -noupdate /pwmmodule_vhd_tst/oPWM
add wave -noupdate /pwmmodule_vhd_tst/i1/PWM_G/vCounter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {600000 ps} 0} {{Cursor 2} {2015059 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {5672418 ps}
