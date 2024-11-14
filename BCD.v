`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/15 10:00:24
// Design Name: 
// Module Name: BCD
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


module BCD(
    input Cin,
    input [3:0] x,
    input [3:0] y,
    output [3:0] S,
    output Cout
    );
    
//    wire Ct, St1,St2 ,Y ,trash;
    wire Ct,trash;
    wire [3:0]FA4b1_S ;
    wire [3:0]FA4b1_Y;
    
    FullAdder_4bit FA_4b1 (Cin, x, y, Ct, FA4b1_S);
    
    wire St1 = FA4b1_S[2] & FA4b1_S[3];
    wire St2 = FA4b1_S[1] & FA4b1_S[3];
    wire Y = Ct | St1 | St2;
    
    assign Cout = Y;
    assign FA4b1_Y[0] = 0;
    assign FA4b1_Y[1] = Y;
    assign FA4b1_Y[2] = Y;
    assign FA4b1_Y[3] = 0;
        
    FullAdder_4bit FA_4b2 (0, FA4b1_S, FA4b1_Y, trash, S);

endmodule
