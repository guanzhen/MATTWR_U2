onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /materialtowercpld_vhd_tst/FAN_PULSE
add wave -noupdate /materialtowercpld_vhd_tst/Clk
add wave -noupdate /materialtowercpld_vhd_tst/ENC_ERR
add wave -noupdate /materialtowercpld_vhd_tst/RST
add wave -noupdate /materialtowercpld_vhd_tst/CPLD_INT
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CC_CAN1_TXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CAN1_TXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CAN1_RXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CC_CAN1_RXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/EN_EDIF_CAN
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CC_CAN2_TXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CAN2_TXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CAN2_RXD
add wave -noupdate -group CAN /materialtowercpld_vhd_tst/CC_CAN2_RXD
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_A
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_B
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_DIR
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_INX
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_N
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_1_PS
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_A
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_B
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_DIR
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_INX
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_N
add wave -noupdate -group {ENC} /materialtowercpld_vhd_tst/ENC_2_PS
add wave -noupdate /materialtowercpld_vhd_tst/DIP_SWITCH
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input23
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input22
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input21
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input20
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input19
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input18
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input17
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input16
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input13
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input12
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input11
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input10
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input9
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input8
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input2
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input1
add wave -noupdate -group {IO_IN} /materialtowercpld_vhd_tst/IO_Input0
add wave -noupdate /materialtowercpld_vhd_tst/PIZZA_CALIBRATION
add wave -noupdate -expand -group {DB} -radix hexadecimal -childformat {{/materialtowercpld_vhd_tst/IO_Output(16) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(15) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(14) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(13) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(12) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(11) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(10) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(9) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(8) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(7) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(6) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(5) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(4) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(3) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(2) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(1) -radix hexadecimal} {/materialtowercpld_vhd_tst/IO_Output(0) -radix hexadecimal}} -subitemconfig {/materialtowercpld_vhd_tst/IO_Output(16) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(15) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(14) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(13) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(12) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(11) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(10) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(9) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(8) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(7) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(6) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(5) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(4) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(3) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(2) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(1) {-radix hexadecimal} /materialtowercpld_vhd_tst/IO_Output(0) {-radix hexadecimal}} /materialtowercpld_vhd_tst/IO_Output
add wave -noupdate -expand -group {DB} -radix hexadecimal /materialtowercpld_vhd_tst/IO_Output(11)
add wave -noupdate -expand -group {DB} /materialtowercpld_vhd_tst/AD
add wave -noupdate -expand -group {DB} /materialtowercpld_vhd_tst/nADV
add wave -noupdate -expand -group {DB} /materialtowercpld_vhd_tst/nCS
add wave -noupdate -expand -group {DB} /materialtowercpld_vhd_tst/nRD
add wave -noupdate -expand -group {DB} /materialtowercpld_vhd_tst/nWR
add wave -noupdate /materialtowercpld_vhd_tst/Seg_LED
add wave -noupdate /materialtowercpld_vhd_tst/PWM_LED
add wave -noupdate /materialtowercpld_vhd_tst/LED_PWM
add wave -noupdate /materialtowercpld_vhd_tst/FAN_PWM
add wave -noupdate /materialtowercpld_vhd_tst/SDCLKO
add wave -noupdate /materialtowercpld_vhd_tst/FPGA_OK
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2040 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 298
configure wave -valuecolwidth 62
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2484 ps}
