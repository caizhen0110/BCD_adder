`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/15 10:00:24
// Design Name: 
// Module Name: Demo
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


module Demo(
    input [3:0] ones1,
    input [3:0] ones2,
    input [3:0] tens1,
    input [3:0] tens2,
    output LED,
    output reg [6:0] seven_ones,
    output reg [6:0] seven_tens,
    output bright_ones,
    output bright_tens
    );
    
    wire [3:0]ones;
    wire [3:0]tens;
    
    BCD_plus_BCD BCD_plus(ones1, ones2, tens1, tens2, 0, ones, tens, LED);
    
    always@(*)
    begin
        case(ones)
           0 : seven_ones = 7'b1111110;     //  7'b1111110
           1 : seven_ones = 7'b0110000;     //  7'b0110000
           2 : seven_ones = 7'b1101101;     //  7'b1101101
           3 : seven_ones = 7'b1111001;     //  7'b1111001
           4 : seven_ones = 7'b0110011;     //  7'b0110011
           5 : seven_ones = 7'b1011011;     //  7'b1011011
           6 : seven_ones = 7'b1011111;     //  7'b1011111
           7 : seven_ones = 7'b1110000;     //  7'b1110000
           8 : seven_ones = 7'b1111111;     //  7'b1111111
           9 : seven_ones = 7'b1111011;     //  7'b1111011
            default : seven_ones = 7'b1111111;
        endcase
    end
    always@(*)
    begin
        case(tens)
            0 : seven_tens = 7'b1111110;
            1 : seven_tens = 7'b0110000;
            2 : seven_tens = 7'b1101101;
            3 : seven_tens = 7'b1111001;
            4 : seven_tens = 7'b0110011;
            5 : seven_tens = 7'b1011011;
            6 : seven_tens = 7'b1011111;
            7 : seven_tens = 7'b1110000;
            8 : seven_tens = 7'b1111111;
            9 : seven_tens = 7'b1111011;
            default : seven_tens = 7'b1111111;
        endcase
    end
    
    assign  bright_ones = 1;
    assign  bright_tens = 1;
    
endmodule
