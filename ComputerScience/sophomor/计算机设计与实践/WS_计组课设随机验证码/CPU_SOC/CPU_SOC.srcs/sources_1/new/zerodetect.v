`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 17:09:10
// Design Name: 
// Module Name: zerodetect
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: alu运算结果0判断
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module zerodetect #(parameter WIDTH=32)(
    input [WIDTH-1:0] a,
    output y);

    assign y = (a==0);
endmodule
