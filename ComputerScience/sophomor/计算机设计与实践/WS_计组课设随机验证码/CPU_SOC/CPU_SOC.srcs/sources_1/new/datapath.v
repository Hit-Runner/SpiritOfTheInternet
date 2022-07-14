`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 15:38:05
// Design Name: 
// Module Name: datapath
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 数据通路
// 内含运算器alu、寄存器组rf及各种触发器、多路选择器、连线
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module datapath #(parameter WIDTH=32, REGBITS=5, CONST_ZERO = 32'b0, CONST_ONE = 32'b100)(
    input clk, reset,
    input [WIDTH-1:0] memdata,
    input memtoreg, iord, pcen, irwrite,
    input regwrite,
    input [1:0] regdst,
    input [1:0] pcsource, 
    input [1:0] alusrca,
    input [2:0] alusrcb,
    input [3:0] alucont,
    output zero,        //alu运算结果是否为0
    output [31:0] instr,
    output [15:0] adr,
    output [WIDTH-1:0] writedata);

    wire [REGBITS-1:0] ra1, ra2, wa;    //寄存器组的两个读入地址和一个写入地址
    wire [WIDTH-1:0] rd1, rd2;          //寄存器组的两个数据读出（32位）
    wire [WIDTH-1:0] wd;                //寄存器组的写入数据
    //这里重复申明一边writedata是为了方便理解代码，具体见下面的注释
    wire [WIDTH-1:0] a, writedata;      //寄存器组与alu中间的那个A和B，我们将B写作writedata，是因为它作为整个datapath模块的输出，同时也是memory的数据输入
    wire [WIDTH-1:0] pc, nextpc;        //pc与下一个pc值
    wire [WIDTH-1:0] src1, src2;        //alu的两个计算数来源
    wire [WIDTH-1:0] aluresult, aluout; //alu的即时计算结果和计算结果寄存器存储（aluout的值为当前节拍上升沿到来时的上一个节拍的aluresult的值）
    wire [WIDTH-1:0] constx4;           //targetPC值，最高4位保持PC原值不变，接下来26位为指令target字段，最低4位为00
    wire [WIDTH-1:0] offsetx4;          //指令offset字段算术左移2位，再符号拓展至32位（补码左移，末位补0）
    wire [WIDTH-1:0] shamt;             //rt中的32位数逻辑左右移shamt位，这里将shamt字段转为32位的数
    wire [WIDTH-1:0] offset16;          //指令中的offset字段或imme字段符号拓展至32位
    wire [WIDTH-1:0] offsetu;           //指令中的imme字段无符号拓展至32位
    wire [WIDTH-1:0] offseth;           //指令中的imme字段左移16位，低位补0   
    wire [WIDTH-1:0] md;    //主存读出数据，memdata作为输入的D触发器输出

    //pc寄存器，clk上升沿值改变
    flopenr #(WIDTH) pcreg(
    .clk(clk),
    .en(pcen),
    .reset(reset),
    .d(nextpc),
    .q(pc));

    //存储器地址adr二路选择器
    adrmux2 #(WIDTH) adrmux(pc, aluout, iord, adr);
    //ir使能D触发器，clk上升沿值改变
    flopen #(WIDTH) ir(clk,irwrite,memdata[31:0],instr[31:0]);
    //主存数据D触发器，clk上升沿值改变
    flop #(WIDTH) mdr(clk,memdata,md);

    //寄存器组rf
    regfile #(WIDTH,REGBITS) rf(clk, regwrite, ra1, ra2, wa, wd, rd1, rd2);
    //寄存器组两个输入端
    assign ra1 = instr[REGBITS+20:21];
    assign ra2 = instr[REGBITS+15:16];
    //寄存器组地址wa四路选择器
    mux4 #(REGBITS) regmux(instr[REGBITS+15:16], instr[REGBITS+10:11], 5'b11111, 5'b11111, regdst, wa);
    //寄存器组写入数据wd二路选择器
    mux2 #(WIDTH) wdmux(aluout, md, memtoreg, wd);

    //关于a和writedata（b）的两个D触发器
    flop #(WIDTH) areg(clk,rd1,a);
    flop #(WIDTH) wrd(clk,rd2,writedata);
    
    //指令里的数值类型字段处理
    assign constx4 = {pc[31:28],instr[25:0],2'b00};  //j、jal target
    assign offsetx4 = instr[15]?{14'b11111111111111,instr[15:0],2'b00}:{14'b0,instr[15:0],2'b00};  //beq、bne、bgtz offset
    assign shamt = {27'b0,instr[10:6]};  //srl、sll shamt
    assign offset16 = instr[15]?{16'b1111111111111111,instr[15:0]}:{16'b0,instr[15:0]};  //lw、sw offset、i型指令imme（符号拓展）
    assign offsetu = {16'b0,instr[15:0]};  //i型指令imme（无符号拓展）
    assign offseth = {instr[15:0],16'b0};  //i型指令imme（左移16位，低位补0）

    //alu计算数来源1四路选择器
    mux4 #(WIDTH) src1mux(pc, a, shamt, CONST_ZERO, alusrca, src1);
    //alu计算数来源2八路选择器
    mux8#(WIDTH) src2mux(writedata, CONST_ONE, offset16, offsetx4, offsetu, offseth, CONST_ZERO, CONST_ZERO, alusrcb, src2);

    //alu
    alu #(WIDTH) alunit(src1,src2,alucont,aluresult);
    //alu输出结果D触发器，clk上升沿值改变
    flop #(WIDTH) res(clk,aluresult,aluout);
    //alu计算结果是否为0
    zerodetect #(WIDTH) zd(aluresult,zero);
    
    //输出pc下一个值的四路选择器
    mux4 #(WIDTH) pcmux(aluresult,aluout,constx4,CONST_ZERO,pcsource,nextpc);
endmodule

