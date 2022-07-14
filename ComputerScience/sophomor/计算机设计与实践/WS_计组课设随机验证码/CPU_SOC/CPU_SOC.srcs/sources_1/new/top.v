`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 09:19:59
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: CPU设计的top模块，并非标准的总线结构
// 注：指导书中没有使用到memread信号，这里也没有，但这里也懒得删去。 
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top#(parameter WIDTH=32,REGBITS=5)(
    input [15:0] switch,    //拨码输入
    input [1:0] key,        //中键（确认输入）及右键（验证码重新生成）
    input clk,              //时钟
    input reset,            //系统复位
    output [7:0] ca,         //数码管段选信号
    output [3:0] an,         //数码管位选信号
    output [15:0] led);      //显示拨码输入的led

    //信号
    wire memread, memwrite; //存储器读写信号

    //地址
    wire [15:0] adr;        //地址线

    //数据
    wire [WIDTH-1:0] writedata; //存储器写入数据
    wire [WIDTH-1:0] memdata;   //存储器读出数据

    //外设数据
    wire [31:0] digitaldata;    //数码管显示值（ASCII）
    wire [31:0] digitaldata_tr; //数码管显示值（数码管编码）

    assign led = switch;
    
    //CPU
    mips #(WIDTH,REGBITS) cpu(clk, reset, memdata, memread, memwrite, adr, writedata);

    //主存，外设数据直接写入
    memory #(WIDTH) exmem(clk, memwrite, adr, writedata, key, switch, memdata, digitaldata);

    //将memory输出的ASCII值转码成数码管显示要用的数码管编码
    digital_trans ds(clk, digitaldata, digitaldata_tr);
    
    //数码管显示模块
    digital dig(clk,reset,digitaldata_tr,ca,an);
endmodule

