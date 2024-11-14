`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/15 10:00:24
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input x,
    input y,
    input Cin,
    output S,
    output Cout
    );
    
    wire St,Ct1,Ct2;
    
    Half_Adder ha1(x ,y ,St ,Ct1);
    Half_Adder ha2(Cin, St, S, Ct2);
    
    assign Cout = Ct2 | Ct1;
endmodule
