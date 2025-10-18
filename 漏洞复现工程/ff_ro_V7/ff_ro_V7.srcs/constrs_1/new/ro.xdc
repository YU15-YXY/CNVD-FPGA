#set_property IOSTANDARD LVDS [get_ports clk_pin_p]
#set_property IOSTANDARD LVDS [get_ports clk_pin_n]
#set_property PACKAGE_PIN AD12 [get_ports clk_pin_p]
#set_property PACKAGE_PIN AD11 [get_ports clk_pin_n]

#set_property PACKAGE_PIN G28 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

#set_property PACKAGE_PIN AB9 [get_ports {led[3]}]
#set_property PACKAGE_PIN AC9 [get_ports {led[2]}]
#set_property PACKAGE_PIN AA8 [get_ports {led[1]}]
#set_property PACKAGE_PIN AB8 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS15 [get_ports {led[0]}]
#LEDS

#set_property PACKAGE_PIN AT37 [get_ports {led[3]}]
#set_property PACKAGE_PIN AR37 [get_ports {led[2]}]
#set_property PACKAGE_PIN AN39 [get_ports {led[1]}]
#set_property PACKAGE_PIN AM39 [get_ports {led[0]}]

#set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]

set_property PACKAGE_PIN AV40 [get_ports rst]
 set_property IOSTANDARD LVCMOS18 [get_ports rst]
#CLOCK
set_property IOSTANDARD LVDS [get_ports clk_main_a0]
#set_property IOSTANDARD LVDS [get_ports clk_pin_n]
set_property PACKAGE_PIN E19 [get_ports clk_main_a0]
#set_property PACKAGE_PIN E18 [get_ports clk_pin_n]