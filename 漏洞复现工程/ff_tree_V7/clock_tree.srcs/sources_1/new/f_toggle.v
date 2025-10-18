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
 (* DONT_TOUCH = "true",keep="true" *) 
module f_toggle(enable,clk,DIP);
    input clk,DIP;
    output enable;
    wire [4:0] DIP;
    //reg [4:0]state=5'b1;
    //reg[31:0] timer=32'b0;
    reg [31:0]f_coefficient=2;
   // reg [31:0] timer_stop=32'b1001_0101_0000_0010_1111_1001_0000_0000;//timer 10s
    parameter ft_05=400000000,
      ft_1=200000000,//1HZ
      ft_2=100000000,//2HZ
      ft_4=50000000,//4HZ
      ft_10=20000000,//10HZ
      ft_20=10000000,//20HZ
      ft_50=4000000,//50HZ
      ft_100=2000000,//200HZ
      ft_200=1000000,//100HZ
      ft_500=400000,//500HZ
      ft_1k=200000,//1kHZ
      ft_2k=100000,//2kHZ
      ft_4k=50000,//4kHZ
      ft_8k=25000,//8kHZ
      ft_10k=20000,//10kHZ
      ft_20k=10000, //20kHZ
      ft_40k=5000, //40kHZ
      ft_50k=4000; //50kHZ
    always @(posedge clk) 
    begin 
        case (DIP)
        5'b0_0001:  
        begin           
            f_coefficient<=ft_05;
        end
        5'b0_0010:  
        begin            
            f_coefficient<=ft_1;
        end
        5'b0_0011:  
        begin            
            f_coefficient<=ft_2;
        end
        5'b0_0100:  
        begin            
            f_coefficient<=ft_4;
        end
        5'b0_0101:  
        begin            
            f_coefficient<=ft_10;
        end
        5'b0_0110:  
        begin                       
            f_coefficient<=ft_20;
        end
        5'b0_0111: 
        begin            
            f_coefficient<=ft_50;
        end
        5'b0_1000:  
        begin            
            f_coefficient<=ft_100;
        end
        5'b0_1001:  
        begin            
            f_coefficient<=ft_200;
        end
        5'b0_1010:  
        begin            
            f_coefficient<=ft_500;
        end
        5'b0_1011:  
        begin            
            f_coefficient<=ft_1k;
        end
        5'b0_1100:  
        begin            
            f_coefficient<=ft_2k;
        end
        5'b0_1101:  
        begin            
            f_coefficient<=ft_4k;
        end
        5'b0_1110:  
        begin            
            f_coefficient<=ft_8k;
        end
        5'b0_1111:  
        begin            
            f_coefficient<=ft_10k;
        end
        5'b1_0000:  
        begin            
            f_coefficient<=ft_20k;
        end
        5'b1_0001:  
        begin            
            f_coefficient<=ft_40k;
        end
        5'b1_0010:  
        begin            
            f_coefficient<=ft_50k;
        end                  
        default : 
        begin
            f_coefficient=2;
        end
        endcase
    end 
    fdivision fd(.enable(enable),.clk(clk),.f_coefficient(f_coefficient));//genrate the switch frequence of ro (enable)
endmodule
