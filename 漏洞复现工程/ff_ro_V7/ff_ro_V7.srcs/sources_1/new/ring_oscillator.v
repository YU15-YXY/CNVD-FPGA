`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/18 10:17:51
// Design Name: 
// Module Name: ring_oscillator
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

module ring_oscillator(
    input rst,
    input clk_main_a0
    );
    
    wire clk_main_a0;
    wire rst_n = !rst;


//Freword_ctrl fre_init(
//    .clk(clk_main_a0),
//    .rst_n(rst_n),
//    .state_ctrl(state_ctrl),
//    .fre_word_fifo(),
//    .fre_sweep(fre_sweep)
//    // output  [31:0]  fw_data_out


//--------------------------------ros----------------------------------------------//
	wire[ro_number-1:0] ro_out1;
    wire[ro_number-1:0] ro_out2;
    wire[ro_number-1:0] ro_out3;
    parameter ro_number=15000;  
    //generate ROs
    genvar gv_1;
    generate
        for (gv_1 = 0; gv_1 < ro_number; gv_1=gv_1+1) 
            begin:genrate_ro1
                ro ro_loop(.enable(1'b1),.ro_out(ro_out1[gv_1]));
            end
    endgenerate
	
	genvar gv_2;
    generate
        for (gv_2 = 0; gv_2 < ro_number; gv_2=gv_2+1) 
            begin:genrate_ro2
                ro ro_loop(.enable(1'b1),.ro_out(ro_out2[gv_2]));
            end
    endgenerate
    genvar gv_3;
    generate
        for (gv_3 = 0; gv_3 < ro_number; gv_3=gv_3+1) 
            begin:genrate_ro3
                ro ro_loop(.enable(1'b1),.ro_out(ro_out3[gv_3]));
            end
    endgenerate
endmodule