`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/22 19:38:01
// Design Name: 
// Module Name: FF_node
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


module FF_node(
input clk_main_a0,
input D_IN
    );
	(* DONT_TOUCH = "true",keep="true" *)wire [6:0] w;
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE1 (.Q(w[0]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE2 (.Q(w[1]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE3 (.Q(w[2]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE4 (.Q(w[3]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE5 (.Q(w[4]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE6 (.Q(w[5]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE7 (.Q(w[6]), .C(clk_main_a0),.CE(1),.PRE(0),.D(D_IN)); 		
endmodule
