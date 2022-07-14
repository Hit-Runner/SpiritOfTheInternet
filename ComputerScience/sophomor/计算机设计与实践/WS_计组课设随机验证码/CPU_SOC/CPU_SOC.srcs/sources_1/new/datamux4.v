`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 10:39:54
// Design Name: 
// Module Name: datamux4
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


module datamux4#(parameter WIDTH=32)(
    input [WIDTH-1:0] d0,d1,d2,d3,      //待选择信号
    input [2:0]s,                       //选择信号
    output reg [WIDTH-1:0] y);          //输出信号

    always @(*)
        case(s)
            3'b001:y<=d0;
            3'b010:y<=d1;
            3'b100:y<=d2;
            3'b000:y<=d3;
        endcase
endmodule
