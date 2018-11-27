## Generated SDC file "MaterialTowerCPLD.out.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
## VERSION "Version 14.1.1 Build 190 01/19/2015 SJ Full Version"

## DATE    "Thu Sep 27 13:47:56 2018"

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
create_clock -name {oWrOUTPUT1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrOUTPUT1}]
create_clock -name {oWrOUTPUT2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrOUTPUT2}]
create_clock -name {oWrSEG7OUTPUT} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSEG7OUTPUT}]
create_clock -name {oWrSERIALMUXCONFIG} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSERIALMUXCONFIG}]
create_clock -name {oWrSYNCONFIG*} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrSYNCONFIG*}]
create_clock -name {oWrPWMPERIOD1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMPERIOD1}]
create_clock -name {oWrPWMPERIOD2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrPWMPERIOD2}]
create_clock -name {oWrRESETPERIOD} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrRESETPERIOD}]
create_clock -name {oWrRESETCONFIG} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrRESETCONFIG}]
create_clock -name {oWrQEMCOUNTERL1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCOUNTERL1}]
create_clock -name {oWrQEMCOUNTERL2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCOUNTERL2}]
create_clock -name {oWrQEMCOUNTERH1} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCOUNTERH1}]
create_clock -name {oWrQEMCOUNTERH2} -period 14.000 -waveform { 0.000 7.000 } [get_nets {MOD_IOSPACE|oWrQEMCOUNTERH2}]
#create_clock -name {ebu_ext} -period 7.000 -waveform { 0.000 3.500 } 

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks
#create_generated_clock -name oWrPWMConfig1 -source [get_nets {MOD_IOSPACE|oWrPWMCONFIG1}] 

#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty

#**************************************************************
# Set Input Delay
#**************************************************************
set_input_delay -add_delay -clock { iCLK } 0 [get_ports {iENC_A* iENC_B*}]
set_input_delay -add_delay -clock { iCLK } 0 [get_ports {iRFID1_RXD iRFID2_RXD iRFID_MUX_SEL iRFID_TXD}]
set_input_delay -add_delay -clock { iWR } 0 [get_ports {ioData*}]
set_input_delay -add_delay -clock { iADV } 0 [get_ports {ioData*}]

#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -clock { oWrOUTPUT1 } 0 [get_ports {oOutput*}]
set_output_delay -clock { oWrOUTPUT2 } 0 [get_ports {oRSTIN oLED_ENABLE}]
set_output_delay -clock { iRD }  0 [get_ports {ioData*}]
set_output_delay -clock { oWrSEG7OUTPUT }  0 [get_ports {o7SEGLED*}]

#**************************************************************
# Set Clock Groups
#**************************************************************
set_clock_groups -asynchronous \
	-group [get_clocks {iCLK}] \
	-group [get_clocks {iRD iWR iADV}] \
	-group [get_clocks {oWrSEG7OUTPUT}]
	#-group [get_clocks {oWrOUTPUTS}] \
	
	#-group [get_clocks {oWrPWMConfig1,oWrPWMDuty1,oWrPWMConfig2,oWrPWMDuty2,oWrQEMConfig1,oWrQWMConfig2,oWrOUTPUTS,oWrSEG7OUTPUT,oWrSERIALMUXCONFIG,oWrSYNCONFIG1,oWrSYNCONFIG2,oWrPWMPERIOD1,oWrPWMPERIOD2,oWrRESETPERIOD,oWrRESETCONFIG}]


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

