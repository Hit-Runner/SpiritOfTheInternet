`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 10:32:56
// Design Name: 
// Module Name: memadr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 生成片选信号
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memadr(
    input [15:0] adr,
    output reg [2:0] mem_en);
    
    always @(*)
        begin
            case(adr[15:12])
               4'b0000:mem_en<=3'b001;
               4'b0001:mem_en<=3'b010;
               4'b1111:mem_en<=3'b100;
             endcase
        end
endmodule
