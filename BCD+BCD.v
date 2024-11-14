`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/15 10:00:24
// Design Name: 
// Module Name: BCD_plus_BCD
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


module BCD_plus_BCD(
    input [3:0] ones1,
    input [3:0] ones2,
    input [3:0] tens1,
    input [3:0] tens2,
    input Cin,
    output [3:0] ones,
    output [3:0] tens,
    output Cout
    );
    
    wire Ct;
    
    BCD BCD_ones(0, ones1, ones2, ones, Ct);
    BCD BCD_tens(Ct, tens1, tens2, tens, Cout);
        
endmodule
