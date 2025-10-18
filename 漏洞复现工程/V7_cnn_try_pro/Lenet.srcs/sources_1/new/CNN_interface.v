`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/09 15:23:38
// Design Name: 
// Module Name: CNN_interface
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

(* DONT_TOUCH = "true" *)
module CNN_interface(
    input clk_pin_p,
	input clk_pin_n,
	input [4:0]DIP,
	output [4:0]led
    );
	
	//generate clock singal 200MHz
    IBUFGDS IBUFG_clk_i0
    (
    .I (clk_pin_p), //LVDS input port(positive)
    .IB (clk_pin_n), //LVDS input port(negative)
    .O (clk_in) //LVDS buffer ouput
    );
	
	f_toggle fd(.enable(enable),.clk(clk_in),.DIP(DIP));
	assign led = DIP;
	 
	(* DONT_TOUCH = "true", keep="true" *) wire enable;

	
top uut_top(
	.clk_in(clk_in),
	.rst_n(enable)
	);	
	
endmodule
