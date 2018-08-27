## Generated SDC file "MaterialTowerCPLD.out.sdc"

## Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus II License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Full Version"

## DATE    "Mon Aug 20 11:13:00 2018"

##
## DEVICE  "5M1270ZT144C5"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {iCLK} -period 62.500 -waveform { 0.000 31.250 } [get_ports {iCLK}]
create_clock -name {iWR} -period 14.000 -waveform { 0.000 7.000 } [get_ports {iWR}]
create_clock -name {iRD} -period 14.000 -waveform { 0.000 7.000 } [get_ports {iRD}]
create_clock -name {iADV} -period 14.000 -waveform { 0.000 7.000 } [get_ports {iADV}]
create_clock -name {oWrPWMConfig1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMCONFIG1}]
create_clock -name {oWrPWMDuty1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMDUTY1}]
create_clock -name {oWrPWMConfig2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMCONFIG2}]
create_clock -name {oWrPWMDuty2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMDUTY2}]
create_clock -name {oWrQEMConfig1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCONFIG1}]
create_clock -name {oWrQWMConfig2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCONFIG2}]
create_clock -name {oWrOUTPUTS} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrOUTPUTS}]
create_clock -name {oWrSEG7OUTPUT} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSEG7OUTPUT}]
create_clock -name {oWrSERIALMUXCONFIG} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSERIALMUXCONFIG}]
create_clock -name {oWrSYNCONFIG1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSYNCONFIG1}]
create_clock -name {oWrSYNCONFIG2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSYNCONFIG2}]
create_clock -name {oWrPWMPERIOD1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMPERIOD1}]
create_clock -name {oWrPWMPERIOD2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMPERIOD2}]
create_clock -name {oWrRESETPERIOD} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrRESETPERIOD}]
create_clock -name {oWrRESETCONFIG} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrRESETCONFIG}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[0]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[0]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[1]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[1]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[2]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[2]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[3]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[3]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[4]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[4]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[5]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[5]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[6]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[6]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[7]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[7]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[8]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[8]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[9]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[9]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[10]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[10]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[11]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[11]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[12]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[12]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[13]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[13]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[14]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[14]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iADV}]  3.500 [get_ports {ioData[15]}]
set_input_delay -add_delay  -clock_fall -clock [get_clocks {iWR}]  3.500 [get_ports {ioData[15]}]


#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

