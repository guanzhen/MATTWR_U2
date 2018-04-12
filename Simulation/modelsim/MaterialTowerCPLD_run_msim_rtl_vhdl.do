transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/PWM_Module.vhd}
vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/SRAM_IO.vhd}
vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/QuadDecToDirPulse.vhd}
vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/IO_SPACE.vhd}
vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/System_reset.vhd}

vcom -93 -work work {C:/Projects/Quartus/MT_CPLD/Simulation/modelsim/MaterialTowerCPLD.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  MaterialTowerCPLD

add wave *
view structure
view signals
run 1 sec
