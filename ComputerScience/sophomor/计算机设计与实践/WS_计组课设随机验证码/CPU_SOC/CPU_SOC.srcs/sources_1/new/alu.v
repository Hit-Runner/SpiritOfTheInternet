`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 17:06:30
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 运算器
// 暂时没有对add做溢出判断处理
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu#(parameter WIDTH=32)(
    input [WIDTH-1:0] a,b,
    input [3:0] alucont,
    output reg [WIDTH-1:0] result);

    wire [WIDTH-1:0] b2, sub, slt;
    assign b2 = ~b+1;
    assign sub = a+b2;
    assign slt = sub[WIDTH-1];

    always @(*)
    case (alucont[3:0])
        4'b0000: result <= a+b;
        4'b0001: result <= a&b;
        4'b0010: result <= a+b2;
        4'b0011: result <= (a[31]==0&&a!=0)?0:1;
        4'b0100: result <= (a==b);
        4'b0101: result <= (a+b);
        4'b0110: result <= (a|b);
        4'b0111: result <= (b<<a);
        4'b1000: result <= (b>>a);
        4'b1001: result <= slt;
    endcase
endmodule
