`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 09:39:32
// Design Name: 
// Module Name: memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: CPU设计的主存模块
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory #(parameter WIDTH=32,CONST_ZERO=32'b0)(
    input clk,
    input memwrite,                 //写信号
    input [15:0] adr,
    input [WIDTH-1:0] writedata,    //写入数据
    input [1:0] key,                //中键、右键
    input [15:0] switch,            //拨码输入
    output [WIDTH-1:0] memdata,     //输出数据
    output reg [31:0] digitaldata); //数码管显示码ASCII

    //rom 32 x 1K (4KB) 地址范围: 0x0000~0x0fff 访存周期: 两个节拍周期
    ins_mem ins_rom (
        .clka(clk),    // input wire clka
        .ena(mem_en[0]),      // input wire ena
        .addra(adr[11:2]),  // input wire [9 : 0] addra
        .douta(douta_ins)); // output wire [31 : 0] douta

    //ram 32 x 1K (4KB) 地址范围: 0x1000~0x1fff 访存周期: 两个节拍周期
    dat_mem data_ram (
        .clka(clk),    // input wire clka
        .ena(mem_en[1]),      // input wire ena
        .wea(memwrite),      // input wire [0 : 0] wea
        .addra(adr[11:2]),  // input wire [9 : 0] addra
        .dina(writedata),    // input wire [31 : 0] dina
        .douta(douta_data)); // output wire [31 : 0] douta    

    //IO 32 x 2^6 (2^8B) 地址范围: 0xff00~0xffff
    reg [31:0] IO[(1<<6)-1:0];

    wire [2:0]  mem_en;     //片选
    memadr ADR(adr,mem_en); //根据地址高4位，生成片选信号

    //地址
    reg [15:0] switch_addr;     //拨码外设地址                    
    reg [15:0] key_addr;        //按键外设地址
    reg [15:0] digital_addr;    //数码管外设地址
    
    //外设地址初始化
    initial begin
          switch_addr <= 16'hfffc;
          key_addr <= 16'hfff4;
          digital_addr <= 16'hffe8;
    end   

    //数据
    wire [31:0] douta_ins, douta_data, douta_io;    //rom访出数据、ram访出数据、io访出数据
    assign douta_io = IO[adr[7:2]];
    datamux4 datamux(douta_ins,douta_data,douta_io,CONST_ZERO,mem_en,memdata);  //多路选择器根据片选选择输出数据
    
    always @(posedge clk)
        begin
            //拨码、按键外设数据直接写入
            IO[switch_addr[7:2]][15:0] <= switch;
            IO[key_addr[7:2]][2:1] <= key;
            //数码管外设数据有写入信号时写入
            if (mem_en[2] && memwrite)
                IO[adr[7:2]][31:0] <= writedata;
        end
    always @(*)
        begin
            digitaldata <= IO[digital_addr[7:2]];   //数码管外设数据直接输出
        end
endmodule

