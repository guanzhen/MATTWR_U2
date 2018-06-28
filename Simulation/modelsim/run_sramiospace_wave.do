onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sramiospace/sEBUCLK
add wave -noupdate -radix hexadecimal /tb_sramiospace/sEBU_iAdd
add wave -noupdate -radix hexadecimal /tb_sramiospace/sEBU_iData
add wave -noupdate -divider SRAM
add wave -noupdate /tb_sramiospace/u1/iCLK
add wave -noupdate /tb_sramiospace/u1/nADV
add wave -noupdate /tb_sramiospace/u1/nWR
add wave -noupdate /tb_sramiospace/u1/nRD
add wave -noupdate /tb_sramiospace/u1/nCS
add wave -noupdate /tb_sramiospace/u1/nWAIT
add wave -noupdate /tb_sramiospace/u1/sReadState
add wave -noupdate /tb_sramiospace/u1/sWrState
add wave -noupdate -radix hexadecimal /tb_sramiospace/u1/IO_DAT_RD
add wave -noupdate -radix hexadecimal /tb_sramiospace/u1/IO_DAT_WR
add wave -noupdate -radix hexadecimal /tb_sramiospace/u1/IO_ADDR
add wave -noupdate -divider IOSPACE
add wave -noupdate /tb_sramiospace/u1/nWrRdy
add wave -noupdate /tb_sramiospace/u2/inWrRdy
add wave -noupdate /tb_sramiospace/u2/inRdRdy
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/iAddress
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/iData
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/sPWMDUTY1
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/sPWMPERIOD1
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/sPWMCONFIG1
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/oPWMPERIOD1
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/oPWMCONFIG1
add wave -noupdate -radix hexadecimal /tb_sramiospace/u2/oPWMDUTY1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1857291 ps} 0}
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
