onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mtcpld_top/ebu_gen/iclk
add wave -noupdate /tb_mtcpld_top/ebu_gen/reset
add wave -noupdate /tb_mtcpld_top/ebu_gen/state
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/ebu_gen/iAddress
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/ebu_gen/iData
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/ebu_gen/oData
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/ebu_gen/ioData
add wave -noupdate -divider CPLD
add wave -noupdate /tb_mtcpld_top/i1/iSW_RESET_CPLD
add wave -noupdate /tb_mtcpld_top/i1/iCLK
add wave -noupdate /tb_mtcpld_top/i1/iCS_FPGA
add wave -noupdate /tb_mtcpld_top/i1/iADV
add wave -noupdate /tb_mtcpld_top/i1/iRD
add wave -noupdate /tb_mtcpld_top/i1/nWAIT
add wave -noupdate /tb_mtcpld_top/i1/iWR
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/ioData
add wave -noupdate -divider INTERFACE
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/IO_DAT_RD
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/IO_DAT_WR
add wave -noupdate -radix decimal -childformat {{/tb_mtcpld_top/i1/IO_ADDR(15) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(14) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(13) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(12) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(11) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(10) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(9) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(8) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(7) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(6) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(5) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(4) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(3) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(2) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(1) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(0) -radix decimal}} -subitemconfig {/tb_mtcpld_top/i1/IO_ADDR(15) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(14) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(13) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(12) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(11) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(10) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(9) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(8) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(7) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(6) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(5) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(4) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(3) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(2) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(1) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(0) {-height 15 -radix decimal}} /tb_mtcpld_top/i1/IO_ADDR
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/nWrRdy
add wave -noupdate -divider SRAM
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/nCS
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/sReadState
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/sWrState
add wave -noupdate -divider PWM
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMCONFIG
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMPERIOD
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMDUTY
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMPERIOD
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMDUTY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {5985276 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 250
configure wave -valuecolwidth 55
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {12600 ns}