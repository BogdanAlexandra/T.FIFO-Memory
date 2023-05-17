# This file is a general .xdc for the Basys3 rev B board
# To use it in a project:
# - uncomment the lines corresponding to used pins
# - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


 
# Switches
set_property PACKAGE_PIN V17 [get_ports {Data_IN[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[0]}]
set_property PACKAGE_PIN V16 [get_ports {Data_IN[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[1]}]
set_property PACKAGE_PIN W16 [get_ports {Data_IN[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[2]}]
set_property PACKAGE_PIN W17 [get_ports {Data_IN[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[3]}]
set_property PACKAGE_PIN W15 [get_ports {Data_IN[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[4]}]
set_property PACKAGE_PIN V15 [get_ports {Data_IN[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[5]}]
set_property PACKAGE_PIN W14 [get_ports {Data_IN[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[6]}]
set_property PACKAGE_PIN W13 [get_ports {Data_IN[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_IN[7]}]
 

# LEDs
set_property PACKAGE_PIN N3 [get_ports EMPTY]					
	set_property IOSTANDARD LVCMOS33 [get_ports EMPTY]
set_property PACKAGE_PIN P1 [get_ports LAST]					
	set_property IOSTANDARD LVCMOS33 [get_ports LAST]
set_property PACKAGE_PIN L1 [get_ports FULL]					
	set_property IOSTANDARD LVCMOS33 [get_ports FULL]
	
	
#7 catment display
set_property PACKAGE_PIN W7 [get_ports {CAT[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[0]}]
set_property PACKAGE_PIN W6 [get_ports {CAT[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[1]}]
set_property PACKAGE_PIN U8 [get_ports {CAT[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[2]}]
set_property PACKAGE_PIN V8 [get_ports {CAT[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[3]}]
set_property PACKAGE_PIN U5 [get_ports {CAT[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[4]}]
set_property PACKAGE_PIN V5 [get_ports {CAT[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[5]}]
set_property PACKAGE_PIN U7 [get_ports {CAT[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CAT[6]}]



set_property PACKAGE_PIN U2 [get_ports {AN[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]


#Buttons
set_property PACKAGE_PIN T18 [get_ports PUSH]						
	set_property IOSTANDARD LVCMOS33 [get_ports PUSH]
set_property PACKAGE_PIN U17 [get_ports POP]						
	set_property IOSTANDARD LVCMOS33 [get_ports POP]
 
#set_property PACKAGE_PIN A18 [get_ports TX]					
#    set_property IOSTANDARD LVCMOS33 [get_ports TX]
           
#set_property PACKAGE_PIN B18 [get_ports RX]                    
 #   set_property IOSTANDARD LVCMOS33 [get_ports RX]
