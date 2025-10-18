`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/13 19:50:59
// Design Name: 
// Module Name: dut_top
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


module dut_top();

reg clk_pin_p;
reg clk_pin_n;
reg [4:0] DIP;
wire [4:0]led;

initial begin
        clk_pin_p = 0;
		clk_pin_n = 1;
		DIP       = 4'd1;
end
    always #2.5 clk_pin_p = ~clk_pin_p;
	always #2.5 clk_pin_n = ~clk_pin_n;

CNN_interface top( 
    .clk_pin_p(clk_pin_p),
	.clk_pin_n(clk_pin_n),
	.DIP(DIP),
	.led(led)
    );

endmodule
