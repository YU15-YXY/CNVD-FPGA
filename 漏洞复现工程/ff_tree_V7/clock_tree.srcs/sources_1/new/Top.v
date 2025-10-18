`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/24 10:03:46
// Design Name: 
// Module Name: Top
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

(* DONT_TOUCH = "true",keep="true" *) 
module Top(
clk_pin_p,
clk_pin_n,
DIP,
led
    );
input clk_pin_p,clk_pin_n,DIP;
//    input clk_main_a0,DIP;    
output led; 
wire[4:0] led;
wire [4:0] DIP;

(* DONT_TOUCH = "true",keep="true" *)wire a;
	IBUFGDS IBUFG_clk_i0
    (
    .I (clk_pin_p), //LVDS input port(positive)
    .IB (clk_pin_n), //LVDS input port(negative)
    .O (clk_main_a0) //LVDS buffer ouput
    );
 
 f_toggle fd(.enable(enable),.clk(clk_main_a0),.DIP(DIP));
	 
 clock_2d c2d(.clk_main_a0(clk_main_a0),.clk_main_a0_2d(clk_main_a0_2d));
 
 assign a = enable & clk_main_a0_2d;
 
 assign led = DIP;
 
 
 
//generate
//genvar   i;
//		for (i = 0 ;i < 8 ; i = i + 1) begin
		iteration ite(.a(a), .clk_main_a0(clk_main_a0));
//            tree  #(.N(N)) tree2 (.a(b[j+(i-1)*N]),.b(b[(j+(i-1)*N+2)*N-1:(j+(i-1)*N+1)*N]) );//1			
	
//        end
//endgenerate

endmodule
