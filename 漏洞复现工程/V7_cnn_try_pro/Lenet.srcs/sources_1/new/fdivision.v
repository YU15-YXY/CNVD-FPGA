`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/25 11:08:50
// Design Name: 
// Module Name: fdivision
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

module fdivision(enable,clk,f_coefficient);
	input f_coefficient,clk;
	output enable;
	wire [31:0] f_coefficient;
	reg enable=0;
	reg [31:0]count=0;
	    always @(posedge clk) 
        if(count>=f_coefficient/2-1)
            begin
                enable<=~enable;
                count<=0;
            end
        else 
            begin
                count<=count+1;
            end
endmodule
