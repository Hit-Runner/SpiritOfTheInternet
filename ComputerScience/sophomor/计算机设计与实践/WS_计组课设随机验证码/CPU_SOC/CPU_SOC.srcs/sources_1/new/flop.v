`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:49:41
// Design Name: 
// Module Name: flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: D触发器
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flop #(parameter WIDTH=32)(
    input clk,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q);

    always @(posedge clk)
        q<=d;
endmodule
