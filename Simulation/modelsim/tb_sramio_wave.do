onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sramio/u1/nRESET
add wave -noupdate /tb_sramio/u1/iCLK
add wave -noupdate /tb_sramio/ebu_gen/iclk
add wave -noupdate /tb_sramio/ebu_gen/state
add wave -noupdate /tb_sramio/u1/nCS
add wave -noupdate /tb_sramio/u1/nRD
add wave -noupdate /tb_sramio/u1/nWR
add wave -noupdate /tb_sramio/u1/nADV
add wave -noupdate /tb_sramio/u1/nWAIT
add wave -noupdate -radix decimal /tb_sramio/u1/IO_ADDR
add wave -noupdate -radix decimal /tb_sramio/u1/IO_DAT_RD
add wave -noupdate -radix decimal /tb_sramio/u1/IO_DAT_WR
add wave -noupdate -radix decimal /tb_sramio/u1/DATA
add wave -noupdate /tb_sramio/u1/nWrRdy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3690184 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 162
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
WaveRestoreZoom {0 ps} {21 us}
