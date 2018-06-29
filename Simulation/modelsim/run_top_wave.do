onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mtcpld_top/ebu_gen/iclk
add wave -noupdate /tb_mtcpld_top/ebu_gen/reset
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
add wave -noupdate -radix decimal /tb_mtcpld_top/i1/IO_ADDR
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/nWrRdy
add wave -noupdate -divider SRAM
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/sReadState
add wave -noupdate /tb_mtcpld_top/i1/MOD_SRAMIO/sWrState
add wave -noupdate -divider PWM
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMCONFIG
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMPERIOD
add wave -noupdate /tb_mtcpld_top/i1/MOD_PWM1/iWrPWMDUTY
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMPERIOD
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMCONFIG
add wave -noupdate -radix hexadecimal /tb_mtcpld_top/i1/MOD_PWM1/oPWMDUTY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3400000 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {7350 ns}
