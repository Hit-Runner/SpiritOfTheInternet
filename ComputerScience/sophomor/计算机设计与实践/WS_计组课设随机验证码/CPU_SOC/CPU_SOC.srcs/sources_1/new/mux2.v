`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:59:28
// Design Name: 
// Module Name: mux2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 二路选择器
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2#(parameter WIDTH=32)(
    input [WIDTH-1:0] d0, d1,
    input s,
    output [WIDTH-1:0] y);

    assign y = s?d1:d0;
endmodule
