onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sramio/sEBUCLK
add wave -noupdate -radix hexadecimal /tb_sramio/sclk
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_iRst
add wave -noupdate /tb_sramio/ebu_gen/state
add wave -noupdate -radix hexadecimal /tb_sramio/nRESET
add wave -noupdate -radix hexadecimal -childformat {{/tb_sramio/DATA(7) -radix hexadecimal} {/tb_sramio/DATA(6) -radix hexadecimal} {/tb_sramio/DATA(5) -radix hexadecimal} {/tb_sramio/DATA(4) -radix hexadecimal} {/tb_sramio/DATA(3) -radix hexadecimal} {/tb_sramio/DATA(2) -radix hexadecimal} {/tb_sramio/DATA(1) -radix hexadecimal} {/tb_sramio/DATA(0) -radix hexadecimal}} -subitemconfig {/tb_sramio/DATA(7) {-height 15 -radix hexadecimal} /tb_sramio/DATA(6) {-height 15 -radix hexadecimal} /tb_sramio/DATA(5) {-height 15 -radix hexadecimal} /tb_sramio/DATA(4) {-height 15 -radix hexadecimal} /tb_sramio/DATA(3) {-height 15 -radix hexadecimal} /tb_sramio/DATA(2) {-height 15 -radix hexadecimal} /tb_sramio/DATA(1) {-height 15 -radix hexadecimal} /tb_sramio/DATA(0) {-height 15 -radix hexadecimal}} /tb_sramio/DATA
add wave -noupdate -radix hexadecimal /tb_sramio/nRD
add wave -noupdate -radix hexadecimal /tb_sramio/nWR
add wave -noupdate -radix hexadecimal /tb_sramio/nCS
add wave -noupdate -radix hexadecimal /tb_sramio/nADV
add wave -noupdate -radix hexadecimal /tb_sramio/nWAIT
add wave -noupdate -radix hexadecimal /tb_sramio/IO_ADDR
add wave -noupdate -radix hexadecimal /tb_sramio/IO_DAT_WR
add wave -noupdate -radix hexadecimal /tb_sramio/IO_DAT_RD
add wave -noupdate -radix hexadecimal /tb_sramio/i_DAT_RD_rdy
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_iRdWr
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_ienwait
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_iAdd
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_iData
add wave -noupdate -radix hexadecimal /tb_sramio/sEBU_oData
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3081148 ps} 0}
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
