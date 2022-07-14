`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/30 11:19:01
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 控制器
// 
// R型指令： op(6bits) Rs(5bits) Rt(5bits) Rd(5bits) shamt(5bits) funct(6bits)
// I型指令： op(6bits) Rs(5bits) 立即数（16bits）
// J型指令： op(6bits) 立即数（26bits)
//
// 注：
// 1.关于时序，clk永远是一个节拍周期内所有信号中最先变化的，所以@(posedge clk)时处理的永远是上一个节拍的值
// 2.always@(*)语句的意思是always模块中的任何一个输入信号或电平发生变化时，模块中语句将被执行，controller的always@(*)模块不包含clk，
// 所以always@(posedge clk)永远在always@(*)之前执行，也就是说DECODE状态下，虽然指令分析和指令写入在同一节拍内发生，但是指令写入是先发生的。
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller(
    input clk,reset,
    input [5:0] op,         //操作码
    input [5:0] func,       //函数码
    input zero,             //alu计算结果是否为0信号
    output reg memread,memwrite,memtoreg,iord,
    output pcen,
    output reg regwrite,
    output reg [1:0] regdst, //寄存器地址多路选择控制信号
    output reg [1:0] pcsource,
    output reg [2:0] alusrcb,
    output reg [1:0] alusrca,
    output reg [2:0] aluop,
    output reg irwrite);
    
    reg [5:0] state, nextstate;  //节拍状态、下一状态
    reg pcwrite, pcwritecond;

    //状态码
    //通用状态
    parameter FETCH1 = 6'b000001;   //取指令（包括下一周期）
    parameter FETCH2 = 6'b000010;   //取指令、pc+1、irwrite <= 1
    parameter DECODE = 6'b000011;   //解析指令（irwrite <= 1且clk上升沿到来指令写入ir）
    //访存型I型指令指令状态（高位00）
    parameter MEMADR = 6'b000100;   //计算aluresult = rs + offset16，下一周期到来aluout = aluresult
    parameter LWRD1 = 6'b000101;    //iord <= 1，这一信号和aluout要持续三个节拍，因为存储器要两个clk上升沿才能完成数据的读取
    parameter LWRD2 = 6'b000110;
    parameter LWRD3 = 6'b000111;
    parameter LWWR = 6'b001000;     //写入寄存器，由于时钟的原因，下一个clk上升沿到来时才会成功写入
    parameter SWWR1 = 6'b001001;    //计算aluresult = rs + offset16，iord <= 1
    parameter SWWR2 = 6'b001010;
    parameter SWWR3 = 6'b001011;
    //R型指令状态（高位010）
    //典型R型指令（add，addu，and，sub）使用节拍：RTYPEEX + RTYPEWR
    //非典型R型指令（sll，srl）使用节拍：XXEX + RTYPEWR
    parameter RTYPEEX = 6'b010000;
    parameter RTYPEWR = 6'b010001;  //结果写入寄存器，寄存器地址经由regdst <= 2'b01指向rd提供地址，下一个clk上升沿到来成功写入
    parameter SLLEX = 6'b010010;
    parameter SRLEX = 6'b010011;
    parameter JREX = 6'b010100;
    //运算型I型指令状态（高位011）
    parameter ADDIEX = 6'b011010;
    parameter ANDIEX = 6'b011011;
    parameter LUIEX = 6'b011100;
    parameter ORIEX = 6'b011101;
    parameter ITYPEWR = 6'b011110;  //结果写入寄存器，寄存器地址默认regdst <= 2'b00指向rt提供地址，下一个clk上升沿到来成功写入
    //J型指令状态（高位100）
    parameter JEX = 6'b100000;
    parameter JALEX1 = 6'b100001;
    parameter JALEX2 = 6'b100010;
    parameter JWAIT1 = 6'b100011;   //pc值改变后，需要等待三个节拍，也就是两个clk上升沿（包括FETCH1）完成指令的读取
    parameter JWAIT2 = 6'b100100;
    //条件分支型I型指令指令状态（高位101）
    parameter BEQEX = 6'b101000;
    parameter BGTZEX = 6'b101001;
    parameter BNEEX = 6'b101010;
    
    //操作码
    parameter ADDI = 6'b001000; 
    parameter ANDI = 6'b001100;
    parameter BEQ = 6'b000100;
    parameter BGTZ = 6'b000111;
    parameter BNE = 6'b000101;
    parameter J = 6'b000010;
    parameter JAL = 6'b000011;
    parameter LUI = 6'b001111;
    parameter LW = 6'b100011;
    parameter ORI = 6'b001101;
    parameter SW = 6'b101011;
    parameter RTYPE = 6'b000000;
    parameter SLL = 6'b000000;
    parameter SRL = 6'b000010;
    parameter SLT = 6'b101010;
    parameter JR = 6'b001000;

    //节拍状态初始化与状态转变
    always @(posedge clk)
        if(reset) state <= FETCH1;
        else state <= nextstate;

    //下一节拍状态
    always @(*) begin
        case(state)
            FETCH1: nextstate <= FETCH2;
            FETCH2: nextstate <= DECODE;
            DECODE: case(op)
                        LW: nextstate <= MEMADR;
                        SW: nextstate <= MEMADR;
                        RTYPE: 
                            case(func)
                                SLL: nextstate <= SLLEX;
                                SRL: nextstate <= SRLEX;
                                JR:  nextstate <= JREX;
                                default: nextstate <= RTYPEEX;
                                //这里的default是指add等典型的R型指令
                            endcase
                        BEQ:  nextstate <= BEQEX;
                        BGTZ: nextstate <= BGTZEX;
                        ADDI: nextstate <= ADDIEX;
                        ANDI: nextstate <= ANDIEX;
                        LUI:  nextstate <= LUIEX;
                        ORI:  nextstate <= ORIEX;
                        BNE:  nextstate <= BNEEX;
                        J:    nextstate <= JEX;
                        JAL:  nextstate <= JALEX1;
                        default: nextstate <= FETCH1;
                        //default应该永远不会发生
                    endcase
            MEMADR: case(op)
                        LW:   nextstate <= LWRD1;
                        SW:   nextstate <= SWWR1;
                        default: nextstate <= FETCH1;
                        //default应该永远不会发生
                    endcase
            //lw    
            LWRD1:  nextstate <= LWRD2;
            LWRD2:  nextstate <= LWRD3;
            LWRD3:  nextstate <= LWWR;
            LWWR:   nextstate <= FETCH1;
            //sw
            SWWR1:  nextstate <= SWWR2;
            SWWR2:  nextstate <= SWWR3;
            SWWR3:  nextstate <= FETCH1;
            //r
            RTYPEEX: nextstate <= RTYPEWR;
            RTYPEWR: nextstate <= FETCH1;
            //srl
            SRLEX:  nextstate <= RTYPEWR;
            //sll
            SLLEX:  nextstate <= RTYPEWR;
            //jr
            JREX:   nextstate <= RTYPEWR;
            //beq
            BEQEX:  nextstate <= JWAIT1;  //地址改变后需要有足够的时间取指令
            //bgtz
            BGTZEX: nextstate <= JWAIT1;  //地址改变后需要有足够的时间取指令
            //bne
            BNEEX:  nextstate <= JWAIT1;  //地址改变后需要有足够的时间取指令
            //i型
            //andi
            ANDIEX: nextstate <= ITYPEWR;
            //addi
            ADDIEX: nextstate <= ITYPEWR;
            //ori
            ORIEX:  nextstate <= ITYPEWR;
            //lui
            LUIEX:  nextstate <= ITYPEWR;
            //i
            ITYPEWR: nextstate <= FETCH1;
            //j
            JEX:    nextstate <= JWAIT1;
            //jal
            JALEX1: nextstate <= JALEX2;
            JALEX2: nextstate <= JWAIT1;
            //jwait
            JWAIT1: nextstate <= JWAIT2;
            JWAIT2: nextstate <= FETCH1;

            default: nextstate <= FETCH1;
            //default应该永远不会发生
        endcase
    end

    always @(*) begin
        //每次执行该模块内容前，事先将下列信号置为0
        irwrite <= 0;
        pcwrite <= 0;
        pcwritecond <= 0;
        regwrite <= 0;
        regdst <= 2'b00;
        memread <= 0;
        memwrite <= 0;
        alusrca <= 2'b00;
        alusrcb <= 3'b000;
        aluop <= 3'b000;
        pcsource <= 2'b00;
        iord <= 0;
        memtoreg <= 0;
        case(state)
            FETCH1: begin
                memread <= 1;  
            end
            FETCH2: begin
                irwrite <= 1;
                alusrcb <= 3'b001;
                pcwrite <= 1;    
            end
            DECODE: begin
                aluop <= 3'b000;
                alusrcb <= 3'b011;
            end
            MEMADR: begin
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
            end
            LWRD1: begin
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
                memread <= 1;
                iord <= 1;
            end
            LWRD2: begin
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
                memread <= 1;
                iord <= 1;
            end
            LWRD3: begin
                memread <= 1;
                iord <= 1;
            end
            LWWR: begin
                regwrite <= 1;
                memtoreg <= 1;
            end
            SWWR1: begin
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
                memwrite <= 1;
                iord <= 1;
            end
            SWWR2: begin
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
                memwrite <= 1;
                iord <= 1;
            end
            SWWR3: begin  
                memwrite <= 1;
                iord <= 1;
            end
            RTYPEEX: begin
                aluop <= 3'b111;
                alusrca <= 2'b01;
            end
            RTYPEWR: begin
                regdst <= 2'b01;
                regwrite <= 1;
            end
            SRLEX: begin
                aluop <= 3'b111;
                alusrca <= 2'b10;
            end
            SLLEX: begin
                aluop <= 3'b111;
                alusrca <= 2'b10;
            end
            JREX: begin
                pcwrite <= 1;
                aluop <= 3'b111;
                alusrca <= 2'b01;
                alusrcb <= 3'b110;
            end
            BEQEX: begin
                alusrca <= 2'b01;
                aluop <= 3'b010;
                pcwritecond <= 1;
                pcsource <= 2'b01;
            end
            BGTZEX: begin
                aluop <= 3'b100;
                alusrca <= 2'b01;
                pcwritecond <= 1;
                pcsource <= 2'b01;
            end
            BNEEX: begin
                alusrca <= 2'b01;
                aluop <= 3'b011;
                pcwritecond <= 1;
                pcsource <= 2'b01;
            end
            ANDIEX: begin
                aluop <= 3'b001;
                alusrca <= 2'b01;
                alusrcb <= 3'b100;
            end
            ADDIEX: begin
                aluop <= 3'b000;
                //a+offset16
                alusrca <= 2'b01;
                alusrcb <= 3'b010;
            end
            ORIEX: begin
                aluop <= 3'b110;
                alusrca <= 2'b01;
                alusrcb <= 3'b100;
            end
            LUIEX: begin
                aluop <= 3'b101;
                alusrca <= 2'b01;
                alusrcb <= 3'b101;
            end
            ITYPEWR: begin
                regwrite <= 1;
            end
            JEX: begin
                pcwrite <= 1;
                pcsource <= 2'b10;
            end
            JALEX1: begin
                alusrcb <= 3'b001;
                aluop <= 3'b000;
            end
            JALEX2: begin
                regdst <= 2'b10;
                regwrite <= 1;
                // aluop <= 3'b000;
                // alusrcb <= 3'b011;
                pcwrite <= 1;
                pcsource <= 2'b10;
            end
            JWAIT1: begin
                memread <= 1;
            end
            JWAIT2: begin
                memread <= 1;
            end
        endcase
    end
    assign pcen = pcwrite | (pcwritecond&zero);            
endmodule
