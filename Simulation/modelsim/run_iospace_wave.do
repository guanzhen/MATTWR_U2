onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /io_space_vhd_tst/Clk
add wave -noupdate /io_space_vhd_tst/nRESET
add wave -noupdate /io_space_vhd_tst/DIP_SW
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/IO_ADDR
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/IO_DAT_RD
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/IO_DAT_WR
add wave -noupdate /io_space_vhd_tst/IO_RDY_RD
add wave -noupdate /io_space_vhd_tst/IO_RDY_WR
add wave -noupdate /io_space_vhd_tst/iInputs
add wave -noupdate /io_space_vhd_tst/oOutputs
add wave -noupdate /io_space_vhd_tst/Enc_MT1
add wave -noupdate /io_space_vhd_tst/Enc_MT2
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/H_timer
add wave -noupdate /io_space_vhd_tst/Pizza_Cali
add wave -noupdate /io_space_vhd_tst/PWM_Duty
add wave -noupdate /io_space_vhd_tst/PWM_Frq
add wave -noupdate /io_space_vhd_tst/PWM_ONOFF
add wave -noupdate /io_space_vhd_tst/R_timer
add wave -noupdate /io_space_vhd_tst/Seg_DP
add wave -noupdate /io_space_vhd_tst/Seg_LED
add wave -noupdate /io_space_vhd_tst/Trigger_Reset
add wave -noupdate /io_space_vhd_tst/Wr_MT1
add wave -noupdate /io_space_vhd_tst/Wr_MT2
add wave -noupdate /io_space_vhd_tst/Wr_PWM
add wave -noupdate /io_space_vhd_tst/Wr_timer
add wave -noupdate /io_space_vhd_tst/WrVal_MT1
add wave -noupdate /io_space_vhd_tst/WrVal_MT2
add wave -noupdate -divider CPLD
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/CPLD_VERSION
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sEBU_EVENT
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sEnc_MT1
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sEnc_MT2
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sH_timer
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sPWM_Duty
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sPWM_Frq
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sPWM_ONOFF
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sSeg_LED
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sTrigger_Reset
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWrVal_MT1
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWrVal_MT2
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWr_MT1
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWr_MT2
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWr_PWM
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/sWr_timer
add wave -noupdate -radix hexadecimal /io_space_vhd_tst/i1/soOutputs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1051680 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 120
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
WaveRestoreZoom {0 ps} {4200 ns}
