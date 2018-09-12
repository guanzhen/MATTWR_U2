onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /timermodule_vhd_tst/iCLK
add wave -noupdate /timermodule_vhd_tst/inRESET
add wave -noupdate /timermodule_vhd_tst/oTimersec
add wave -noupdate /timermodule_vhd_tst/oTimermilli
add wave -noupdate -divider Timer
add wave -noupdate /timermodule_vhd_tst/i1/sEnable
add wave -noupdate /timermodule_vhd_tst/i1/sCounter1secSOF
add wave -noupdate /timermodule_vhd_tst/i1/sCounter1msOF
add wave -noupdate /timermodule_vhd_tst/i1/COUNTER1S/vCounter1S
add wave -noupdate /timermodule_vhd_tst/i1/COUNTER1MS/vCounter1MS
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1814 ps}
