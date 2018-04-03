transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/MaterialTowerCPLD.vhd}
vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/SRAM_IO.vhd}
vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/QuadDecToDirPulse.vhd}
vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/IO_SPACE.vhd}
vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/Hex7Seg.vhd}

vcom -93 -work work {D:/Workspaces/SVN/09_Material_Tower_2.0/ForTEST/CPLD_Liyang/CPLD/XMC4700_CPLD/Simulation/modelsim/MaterialTowerCPLD.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  MaterialTowerCPLD

add wave *
view structure
view signals
run 1 sec
