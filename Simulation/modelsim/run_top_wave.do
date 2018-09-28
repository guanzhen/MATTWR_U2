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
add wave -noupdate /tb_mtcpld_top/i1/oWAIT
add wave -noupdate /tb_mtcpld_top/i1/iWR
add wave -noupdate -radix hexadecimal -childformat {{/tb_mtcpld_top/i1/ioData(15) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(14) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(13) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(12) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(11) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(10) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(9) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(8) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(7) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(6) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(5) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(4) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(3) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(2) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(1) -radix hexadecimal} {/tb_mtcpld_top/i1/ioData(0) -radix hexadecimal}} -subitemconfig {/tb_mtcpld_top/i1/ioData(15) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(14) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(13) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(12) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(11) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(10) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(9) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(8) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(7) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(6) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(5) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(4) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(3) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(2) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(1) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/ioData(0) {-height 15 -radix hexadecimal}} /tb_mtcpld_top/i1/ioData
add wave -noupdate -divider INTERFACE
add wave -noupdate -group SRAM_IO -radix hexadecimal /tb_mtcpld_top/i1/IO_DAT_RD
add wave -noupdate -group SRAM_IO -radix hexadecimal /tb_mtcpld_top/i1/IO_DAT_WR
add wave -noupdate -group SRAM_IO -radix decimal -childformat {{/tb_mtcpld_top/i1/IO_ADDR(15) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(14) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(13) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(12) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(11) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(10) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(9) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(8) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(7) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(6) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(5) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(4) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(3) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(2) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(1) -radix decimal} {/tb_mtcpld_top/i1/IO_ADDR(0) -radix decimal}} -subitemconfig {/tb_mtcpld_top/i1/IO_ADDR(15) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(14) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(13) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(12) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(11) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(10) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(9) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(8) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(7) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(6) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(5) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(4) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(3) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(2) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(1) {-height 15 -radix decimal} /tb_mtcpld_top/i1/IO_ADDR(0) {-height 15 -radix decimal}} /tb_mtcpld_top/i1/IO_ADDR
add wave -noupdate -group SRAM_IO -radix hexadecimal /tb_mtcpld_top/i1/nWrRdy
add wave -noupdate -divider SRAM
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/nCS
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/sWrState
add wave -noupdate -divider PWM
add wave -noupdate -group PWM1 /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMCONFIG
add wave -noupdate -group PWM1 /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMPERIOD
add wave -noupdate -group PWM1 /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMDUTY
add wave -noupdate -group PWM1 -radix hexadecimal -childformat {{/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(15) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(14) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(13) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(12) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(11) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(10) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(9) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(8) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(7) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(6) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(5) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(4) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(3) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(2) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(1) -radix hexadecimal} {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(0) -radix hexadecimal}} -subitemconfig {/tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(15) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(14) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(13) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(12) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(11) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(10) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(9) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(8) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(7) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(6) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(5) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(4) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(3) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(2) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(1) {-height 15 -radix hexadecimal} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG(0) {-height 15 -radix hexadecimal}} /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG
add wave -noupdate -group PWM1 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMPERIOD
add wave -noupdate -group PWM1 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMDUTY
add wave -noupdate -group PWM1 /tb_mtcpld_top/i1/MOD_PWM1/oPWM
add wave -noupdate -group PWM2 /tb_mtcpld_top/i1/MOD_PWM2/iWrPWMCONFIG
add wave -noupdate -group PWM2 /tb_mtcpld_top/i1/MOD_PWM2/iWrPWMPERIOD
add wave -noupdate -group PWM2 /tb_mtcpld_top/i1/MOD_PWM2/iWrPWMDUTY
add wave -noupdate -group PWM2 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM2/oPWMCONFIG
add wave -noupdate -group PWM2 /tb_mtcpld_top/i1/MOD_PWM2/sPWMCONFIG
add wave -noupdate -group PWM2 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM2/sPWMPERIOD
add wave -noupdate -group PWM2 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM2/sDUTY
add wave -noupdate -group PWM2 -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM2/oPWM
add wave -noupdate -group QENC1 -radix hexadecimal /tb_mtcpld_top/i1/QENC1/sBUFFER
add wave -noupdate -group QENC1 -radix hexadecimal /tb_mtcpld_top/i1/QENC1/sQEMCOUNTER
add wave -noupdate -group QENC1 /tb_mtcpld_top/i1/QENC1/sQEMState
add wave -noupdate -group QENC1 /tb_mtcpld_top/i1/QENC1/oPulse
add wave -noupdate -group QENC1 /tb_mtcpld_top/i1/QENC1/oDir
add wave -noupdate -group QENC1 /tb_mtcpld_top/i1/QENC1/oIndex
add wave -noupdate -group QENC2 -radix hexadecimal /tb_mtcpld_top/i1/QENC2/sQEMCOUNTER
add wave -noupdate -group QENC2 /tb_mtcpld_top/i1/QENC2/sQEMState
add wave -noupdate -group QENC2 /tb_mtcpld_top/i1/QENC2/oPulse
add wave -noupdate -group QENC2 /tb_mtcpld_top/i1/QENC2/oDir
add wave -noupdate -group QENC2 /tb_mtcpld_top/i1/QENC2/oIndex
add wave -noupdate -group SERMUX -radix hexadecimal /tb_mtcpld_top/i1/MOD_SERIALMUX/sSERIALMUXCONFIG
add wave -noupdate -group SERMUX /tb_mtcpld_top/i1/MOD_SERIALMUX/sEN
add wave -noupdate -group Reset /tb_mtcpld_top/i1/MOD_RESET/iWrPeriod
add wave -noupdate -group Reset -radix hexadecimal /tb_mtcpld_top/i1/MOD_RESET/sResetPeriod
add wave -noupdate -group 7Seg /tb_mtcpld_top/i1/MOD_SEG/iWrData
add wave -noupdate -group 7Seg -radix hexadecimal /tb_mtcpld_top/i1/MOD_SEG/s7SEGOUTPUT
add wave -noupdate -group OUTPUT -radix hexadecimal /tb_mtcpld_top/i1/OPMOD/oOutput
add wave -noupdate -group Timer /tb_mtcpld_top/i1/TIMERMOD/sCounter1secSOF
add wave -noupdate -group Timer /tb_mtcpld_top/i1/TIMERMOD/sCounter1msOF
add wave -noupdate -group Timer -radix hexadecimal /tb_mtcpld_top/i1/TIMERMOD/oTimersec
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {996566835 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 244
configure wave -valuecolwidth 94
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
WaveRestoreZoom {0 ps} {15750 ns}
