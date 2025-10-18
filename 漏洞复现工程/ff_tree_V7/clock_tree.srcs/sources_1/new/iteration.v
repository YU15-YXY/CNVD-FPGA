`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/22 10:46:23
// Design Name: 
// Module Name: iteration
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


module iteration(
input a,
input clk_main_a0
    );
	
parameter M = 10;
parameter N = 3;


 (* DONT_TOUCH = "true",keep="true" *)wire [(N**(M+1)-N)/(N-1)-1:0] b;
 //(* DONT_TOUCH = "true",keep="true" *)wire [N**M-1:0]w;
 	

 
tree  #(.N(N)) tree1 (.a(a),.b(b[N-1:0]) );//1

generate
genvar   i;
genvar   j;
	for (i = 1 ;i < M ; i = i + 1) begin
		for (j = 0 ;j < N**i ; j = j + 1) begin
		tree  #(.N(N)) tree2 ( .a(b[j+(N**i-1)/(N-1)-1]),  .b(b[((j*N+(N**(i+1)-1)/(N-1)-1)+N-1):(j*N+(N**(i+1)-1)/(N-1)-1)]) );		
	
        end
    end
endgenerate

generate
genvar n;
    for (n = 0 ;n < N**M ; n = n + 1 ) begin
				FF_node node(.clk_main_a0(clk_main_a0), .D_IN(b[n+(N**M-1)/(N-1)-1]));		 
    end

endgenerate
endmodule
