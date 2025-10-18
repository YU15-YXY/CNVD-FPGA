`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 16:14:41
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
(* DONT_TOUCH = "true" *)
module f_toggle(enable,clk,DIP);
    input clk,DIP;
    output enable;
    wire [2:0] DIP;
    reg [31:0]f_coefficient=2;
     parameter ft_05=40000000,//22222HZ
      ft_1=2000000,//26666HZ
      ft_2=200000,//33333HZ
      ft_4=100000,//40KHZ
      ft_10=50000,//50KHZ
      ft_20=20000,//57142HZ
      ft_50=5000;//66666HZ

    always @(posedge clk) 
    begin 
        case (DIP)
        3'b001:  
        begin           
            f_coefficient<=ft_05;
        end
        3'b010:   
        begin            
            f_coefficient<=ft_1;
        end
        3'b011:   
        begin            
            f_coefficient<=ft_2;
        end
        3'b100:   
        begin            
            f_coefficient<=ft_4;
        end
        3'b101:  
        begin            
            f_coefficient<=ft_10;
        end
        3'b110:  
        begin                       
            f_coefficient<=ft_20;
        end
        3'b111: 
        begin            
            f_coefficient<=ft_50;
        end
        default : 
        begin
            f_coefficient=400;
        end
        endcase
    end 
    fdivision fd(.enable(enable),.clk(clk),.f_coefficient(f_coefficient));//genrate the switch frequence of ro (enable)
endmodule