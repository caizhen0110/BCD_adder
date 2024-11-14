`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/15 10:00:24
// Design Name: 
// Module Name: FullAdder_4bit
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


module FullAdder_4bit(
    input Cin,
    input [3:0] x,
    input [3:0] y,
    output Cout,
    output [3:0] S
    );
 
    wire Ct1,Ct2,Ct3;
    
    Full_Adder fa1 fa(x[0] ,y[0] ,0 ,S[0] ,Ct1);
    Full_Adder fa2 fa(x[1] ,y[1] ,0 ,S[1] ,Ct2);
    Full_Adder fa3 fa(x[2] ,y[2] ,0 ,S[2] ,Ct3);
    Full_Adder fa4 fa(x[3] ,y[3] ,0 ,S[3] ,Cout);
    
endmodule




