`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 10:43:01
// Design Name: 
// Module Name: mips
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: CPU（controller+alucontrol+datapath）
// controller可以看做CU，ALU在datapath里
// 已实现部分mips指令集:
// add
// addi
// andi
// beq
// bgtz
// bne
// j
// jal
// jr
// lui
// ori
// sll
// slt
// sub
// lw
// sw
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mips #(parameter WIDTH=32, REGBITS=5)(
    input clk,
    input reset,
    input [WIDTH-1:0] memdata,      //主存数据
    output memread,                 //主存读信号
    output memwrite,                //主存写信号
    output [15:0] adr,                
    output [WIDTH-1:0] writedata);  //写入主存数据
    
    wire [31:0] instr;      //指令

    //CU控制信号
    wire zero, memtoreg, iord, pcen, regwrite;
    wire [1:0] regdst;
    wire [2:0] aluop;
    wire [1:0] pcsource,alusrca;
    wire [2:0] alusrcb;
    wire irwrite;

    //alucontrol输出运算模式（控制ALU进行加还是减）信号
    wire [3:0] alucont;
    
    //控制器controller
    controller cu(
        .clk(clk),
        .reset(reset),
        .op(instr[31:26]),
        .zero(zero),
        .memread(memread),
        .memwrite(memwrite),
        .alusrca(alusrca),
        .memtoreg(memtoreg),
        .iord(iord),
        .pcen(pcen),
        .regwrite(regwrite),
        .regdst(regdst),
        .pcsource(pcsource),
        .alusrcb(alusrcb),
        .aluop(aluop),
        .irwrite(irwrite),
        .func(instr[5:0]));
    
    //运算器控制alucontrol 根据aluop和指令操作码，输出信号控制ALU进行何种运算
    alucontrol ac(aluop, instr[5:0], alucont);
    
    //数据通路datapath
    datapath #(WIDTH,REGBITS) dp(
        .clk(clk),
        .reset(reset),
        .memdata(memdata),
        .alusrca(alusrca),
        .memtoreg(memtoreg),
        .iord(iord),
        .pcen(pcen),
        .regwrite(regwrite),
        .regdst(regdst),
        .pcsource(pcsource),
        .alusrcb(alusrcb),
        .irwrite(irwrite),
        .alucont(alucont),
        .zero(zero),
        .instr(instr),
        .adr(adr),
        .writedata(writedata));
endmodule 

