`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 16:54:51
// Design Name: 
// Module Name: regfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 寄存器组
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regfile #(parameter WIDTH=32,REGBITS=5)(
    input clk,
    input regwrite,
    input [REGBITS-1:0] ra1, ra2, wa,
    input [WIDTH-1:0] wd,
    output [WIDTH-1:0] rd1, rd2);
    
    reg [WIDTH-1:0] RAM[(1<<REGBITS)-1:0];  //32个寄存器 32 x 2^5

    initial begin
        RAM[0] <= 32'b0;
        RAM[29] <= 32'h1fe8;    //$sp堆栈指针寄存器赋初值
    end

    always @(posedge clk)
        if(regwrite) RAM[wa] <= wd;

    assign rd1 = ra1?RAM[ra1]:0;    //这里做了一个逻辑上的处理，即使RAM[0]物理上被改写了，返回的仍然是0
    assign rd2 = ra2?RAM[ra2]:0;
    
endmodule