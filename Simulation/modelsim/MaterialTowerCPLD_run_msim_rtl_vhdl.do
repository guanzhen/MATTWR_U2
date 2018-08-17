transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/InputModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/QEModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/OutputModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/Hex7Seg.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/constants.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/SRAM_IO.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/SerialMux.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/SyncModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/PWMModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/ResetModule.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/MTCPLD_Top.vhd}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/IO_SPACE.vhd}

vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/Simulation/modelsim/common.vht}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/Simulation/modelsim/EBU_GEN.vht}
vcom -2008 -work work {C:/Projects/Quartus/MT_CPLD_GIT/Simulation/modelsim/TB_MTCPLD_Top.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  TB_MTCPLD_Top

do C:/Projects/Quartus/MT_CPLD_GIT/Simulation/modelsim/run_top_wave.do
