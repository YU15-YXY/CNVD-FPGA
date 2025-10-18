`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/18 12:01:05
// Design Name: 
// Module Name: ro
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
module ro(enable,ro_out);
    input enable;
    output ro_out;
    
    
    (* DONT_TOUCH = "true",keep="true" *)wire w,w1,w2;
//    (* DONT_TOUCH = "true",keep="true" *)assign w1=~(enable&w);
//    (* DONT_TOUCH = "true",keep="true" *)assign w2=(enable&w);
(* KEEP, DONT_TOUCH, BEL = "B6LUT" *)
    LUT6_2 #(
        .INIT(64'h0000ffff0000ffff)
    )
    W2
    (
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b1),
        .I4(w1),
        .I5(1'b1),
        .O5(),
        .O6(w2)
    );

   (* KEEP, DONT_TOUCH, BEL = "A6LUT" *)
    LUT6_2 #(
        .INIT(64'h0f0fffff0f0fffff)
    )
    W1
    (
        .I0(1'b1),
        .I1(1'b1),
        .I2(w),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(),
        .O6(w1)
    );
    (* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE1 (.Q(w), .C(w2),.CE(1),.PRE(w1),.D(0));
    assign ro_out = w;
endmodule
