`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:59:44
// Design Name: 
// Module Name: mux4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 四路选择器
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4#(parameter WIDTH=32)(
    input [WIDTH-1:0] d0, d1, d2, d3,
    input [1:0] s,
    output reg [WIDTH-1:0] y);

    always @(*)
    case(s)
        2'b00:y<=d0;
        2'b01:y<=d1;
        2'b10:y<=d2;
        2'b11:y<=d3;
    endcase
endmodule
