`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:49:06
// Design Name: 
// Module Name: adrmux2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 地址二路选择器
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adrmux2 #(parameter WIDTH=32)(
    input [WIDTH-1:0] d0, d1,
    input s,
    output [15:0] y);

    assign y = s?d1[15:0]:d0[15:0];
endmodule
