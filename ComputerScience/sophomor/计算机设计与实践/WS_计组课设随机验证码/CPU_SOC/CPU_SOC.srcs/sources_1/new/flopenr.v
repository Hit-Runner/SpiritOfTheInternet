`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:48:38
// Design Name: 
// Module Name: flopenr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 可复位使能D触发器
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flopenr #(parameter WIDTH=32)(
    input clk, en, reset,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q);

    always @(posedge clk)
        if(reset) q <= 0;
        else if(en) q <= d;
endmodule
