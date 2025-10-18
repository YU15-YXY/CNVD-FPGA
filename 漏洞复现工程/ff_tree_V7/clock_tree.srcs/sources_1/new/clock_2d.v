`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 15:00:10
// Design Name: 
// Module Name: clock_2d
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


module clock_2d(
clk_main_a0,
clk_main_a0_2d
    );
	input clk_main_a0;
	output clk_main_a0_2d;
	reg clk_main_a0_2d = 0;
	reg [31:0]count = 0;
	    always @(posedge clk_main_a0) 
        if(count>=2/2-1)
            begin
                clk_main_a0_2d<=~clk_main_a0_2d;
                count<=0;
            end
        else 
            begin
                count<=count+1;
            end
endmodule
