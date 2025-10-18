`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/15 17:58:02
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
module ro(enable,clk_main_a0);
    input enable;
	input clk_main_a0;
    (* DONT_TOUCH = "true",keep="true" *)wire w,w1,w2,w3,w11,w12,w13,w14,w15,w16,w17,w18;
    (* DONT_TOUCH = "true",keep="true" *)assign w = enable & clk_main_a0;
	  (* DONT_TOUCH = "true",keep="true" *) LUT6_2 #(
      .INIT(64'h0000000000000002) // Specify LUT Contents
   ) LUT6_2_inst1 (
      .O6(), // 1-bit LUT6 output
      .O5(w1), // 1-bit lower LUT5 output
      .I0(w), // 1-bit LUT input
      .I1(1'b0), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(1'b0), // 1-bit LUT input
      .I4(1'b0), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
    (* DONT_TOUCH = "true",keep="true" *)  LUT6_2 #(
      .INIT(64'h0000000000000002) // Specify LUT Contents
   ) LUT6_2_inst2 (
      .O6(), // 1-bit LUT6 output
      .O5(w2), // 1-bit lower LUT5 output
      .I0(w1), // 1-bit LUT input
      .I1(1'b0), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(1'b0), // 1-bit LUT input
      .I4(1'b0), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
    (* DONT_TOUCH = "true",keep="true" *)  LUT6_2 #(
      .INIT(64'h0000000000000002) // Specify LUT Contents
   ) LUT6_2_inst3 (
      .O6(), // 1-bit LUT6 output
      .O5(w3), // 1-bit lower LUT5 output
      .I0(w2), // 1-bit LUT input
      .I1(1'b0), // 1-bit LUT input
      .I2(1'b0), // 1-bit LUT input
      .I3(1'b0), // 1-bit LUT input
      .I4(1'b0), // 1-bit LUT input
      .I5(1'b0)  // 1-bit LUT input (fast MUX select only available to O6 output)
   );
//	(* DONT_TOUCH = "true",keep="true" *)  LUT1 #(
//   .INIT(2'b10)  // Specify LUT Contents
//) LUT1_inst1 (
//   .O(w1),   // LUT general output
//   .I0(w)  // LUT input
//);

//	(* DONT_TOUCH = "true",keep="true" *)  LUT1 #(
//   .INIT(2'b10)  // Specify LUT Contents
//) LUT1_inst2 (
//   .O(w2),   // LUT general output
//   .I0(w1)  // LUT input
//);

//	(* DONT_TOUCH = "true",keep="true" *)  LUT1 #(
//   .INIT(2'b10)  // Specify LUT Contents
//) LUT1_inst3 (
//   .O(w3),   // LUT general output
//   .I0(w2)  // LUT input
//);
	
    (* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE1 (.Q(w11), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE2 (.Q(w12), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE3 (.Q(w13), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE4 (.Q(w14), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE5 (.Q(w15), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE6 (.Q(w16), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE7 (.Q(w17), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
	(* DONT_TOUCH = "true",keep="true" *)FDPE #(.INIT(1'b0)) FDPE8 (.Q(w18), .C(clk_main_a0),.CE(1),.PRE(w3),.D(0));
endmodule
