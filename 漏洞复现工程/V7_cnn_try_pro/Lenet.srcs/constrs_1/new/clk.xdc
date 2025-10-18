#LEDS
set_property PACKAGE_PIN AR35 [get_ports {led[4]}]
set_property PACKAGE_PIN AT37 [get_ports {led[3]}]
set_property PACKAGE_PIN AR37 [get_ports {led[2]}]
set_property PACKAGE_PIN AN39 [get_ports {led[1]}]
set_property PACKAGE_PIN AM39 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]

#CLOCK
set_property IOSTANDARD LVDS [get_ports clk_pin_p]
//set_property IOSTANDARD LVDS [get_ports clk_pin_n]
set_property PACKAGE_PIN E19 [get_ports clk_pin_p]
//set_property PACKAGE_PIN E18 [get_ports clk_pin_n]

#SWITCHES
set_property PACKAGE_PIN AV30 [get_ports DIP[0]]
set_property IOSTANDARD LVCMOS18 [get_ports DIP[0]]
set_property PACKAGE_PIN AY33 [get_ports DIP[1]]
set_property IOSTANDARD LVCMOS18 [get_ports DIP[1]]
set_property PACKAGE_PIN BA31 [get_ports DIP[2]]
set_property IOSTANDARD LVCMOS18 [get_ports DIP[2]]
set_property PACKAGE_PIN BA32 [get_ports DIP[3]]
set_property IOSTANDARD LVCMOS18 [get_ports DIP[3]]
set_property PACKAGE_PIN AW30 [get_ports DIP[4]]
set_property IOSTANDARD LVCMOS18 [get_ports DIP[4]]

