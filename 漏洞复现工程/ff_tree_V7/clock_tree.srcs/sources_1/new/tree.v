`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/29 16:05:49
// Design Name: 
// Module Name: tree
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
//每一个节点都会有N个的输出

module tree#(
    parameter       N   =   3 
)
(
    input           a   ,
    output   [N-1 : 0]   b   
);

generate
genvar i;
for(i = 0 ;i < N ; i = i + 1) 
begin
 (* DONT_TOUCH = "true",keep="true" *)    LUT1 #(
   .INIT(2'b10)  // Specify LUT Contents
) LUT1_inst1 (
   .O(b[i]),   // LUT general output
   .I0(a)  // LUT input
);
end
endgenerate	

endmodule
