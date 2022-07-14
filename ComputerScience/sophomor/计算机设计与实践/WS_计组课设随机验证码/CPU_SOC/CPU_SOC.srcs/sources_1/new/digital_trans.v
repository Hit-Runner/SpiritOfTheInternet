`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 15:19:44
// Design Name: 
// Module Name: digital_trans
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 转码模块
// 将ASCII编码的s_in按字节转换成数码管输出所需要的s_out 
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digital_trans
(
    input clk,
    input [31: 0] s_in,      		
    output reg [31: 0] s_out         
);

    parameter CONST_A = 8'b01000001;  //字母ASCii
    parameter CONST_B = 8'b01000010;
    parameter CONST_C = 8'b01000011;
    parameter CONST_D = 8'b01000100;
    parameter CONST_E = 8'b01000101;
    parameter CONST_F = 8'b01000110;
    parameter CONST_G = 8'b01000111;
    parameter CONST_H = 8'b01001000;
    parameter CONST_I = 8'b01001001;
    parameter CONST_J = 8'b01001010;
    parameter CONST_K = 8'b01001011;
    parameter CONST_L = 8'b01001100;
    parameter CONST_M = 8'b01001101;
    parameter CONST_N = 8'b01001110;
    parameter CONST_O = 8'b01001111;
    parameter CONST_P = 8'b01010000;
    parameter CONST_Q = 8'b01010001;
    parameter CONST_R = 8'b01010010;
    parameter CONST_S = 8'b01010011;
    parameter CONST_T = 8'b01010100;
    parameter CONST_U = 8'b01010101;
    parameter CONST_V = 8'b01010110;
    parameter CONST_W = 8'b01010111;
    parameter CONST_X = 8'b01011000;
    parameter CONST_Y = 8'b01011001;
    parameter CONST_Z = 8'b01011010;
    parameter CONST_ONE = 8'b00110001;  //1
    parameter CONST_TWO = 8'b00110010;  //2
    parameter CONST_THR = 8'b00110011;  //3
    parameter CONST_FOR = 8'b00110100;  //4
    parameter CONST_FIV = 8'b00110101;  //5
    parameter CONST_SIX = 8'b00110110;  //6
    parameter CONST_SEV = 8'b00110111;  //7
    parameter CONST_EIT = 8'b00111000;  //8
    parameter CONST_NIN = 8'b00111001;  //9
    parameter CONST_ZERO = 8'b00110000; //0
    
    always @(posedge clk) begin
        case(s_in[31:24])
            CONST_A: s_out[31:24] <= 8'b00010001;
            CONST_B: s_out[31:24] <= 8'b11000001;
            CONST_C: s_out[31:24] <= 8'b01100011;
            CONST_D: s_out[31:24] <= 8'b10000101;
            CONST_E: s_out[31:24] <= 8'b01100001;
            CONST_F: s_out[31:24] <= 8'b01110001;
            CONST_G: s_out[31:24] <= 8'b01000011;
            CONST_H: s_out[31:24] <= 8'b10010001;
            CONST_I: s_out[31:24] <= 8'b00001111;
            CONST_J: s_out[31:24] <= 8'b10001111;
            CONST_K: s_out[31:24] <= 8'b01010001;
            CONST_L: s_out[31:24] <= 8'b11100011;
            CONST_M: s_out[31:24] <= 8'b00010011;
            CONST_N: s_out[31:24] <= 8'b11010101;
            CONST_O: s_out[31:24] <= 8'b11000101;
            CONST_P: s_out[31:24] <= 8'b00110001;
            CONST_Q: s_out[31:24] <= 8'b00011001;
            CONST_R: s_out[31:24] <= 8'b01110011;
            CONST_S: s_out[31:24] <= 8'b01101101;
            CONST_T: s_out[31:24] <= 8'b11100001;
            CONST_U: s_out[31:24] <= 8'b10000011;
            CONST_V: s_out[31:24] <= 8'b11000111;
            CONST_W: s_out[31:24] <= 8'b10000001;
            CONST_X: s_out[31:24] <= 8'b11011001;
            CONST_Y: s_out[31:24] <= 8'b10001001;
            CONST_Z: s_out[31:24] <= 8'b10100101;
            CONST_ONE: s_out[31:24] <= 8'b10011111;
            CONST_TWO: s_out[31:24] <= 8'b00100101;
            CONST_THR: s_out[31:24] <= 8'b00001101;
            CONST_FOR: s_out[31:24] <= 8'b10011001;
            CONST_FIV: s_out[31:24] <= 8'b01001001;
            CONST_SIX: s_out[31:24] <= 8'b01000001;
            CONST_SEV: s_out[31:24] <= 8'b00011011;
            CONST_EIT: s_out[31:24] <= 8'b00000001;
            CONST_NIN: s_out[31:24] <= 8'b00001001;
            CONST_ZERO: s_out[31:24] <= 8'b00000011;
        endcase
        case(s_in[23:16])
            CONST_A: s_out[23:16] <= 8'b00010001;
            CONST_B: s_out[23:16] <= 8'b11000001;
            CONST_C: s_out[23:16] <= 8'b01100011;
            CONST_D: s_out[23:16] <= 8'b10000101;
            CONST_E: s_out[23:16] <= 8'b01100001;
            CONST_F: s_out[23:16] <= 8'b01110001;
            CONST_G: s_out[23:16] <= 8'b01000011;
            CONST_H: s_out[23:16] <= 8'b10010001;
            CONST_I: s_out[23:16] <= 8'b00001111;
            CONST_J: s_out[23:16] <= 8'b10001111;
            CONST_K: s_out[23:16] <= 8'b01010001;
            CONST_L: s_out[23:16] <= 8'b11100011;
            CONST_M: s_out[23:16] <= 8'b00010011;
            CONST_N: s_out[23:16] <= 8'b11010101;
            CONST_O: s_out[23:16] <= 8'b11000101;
            CONST_P: s_out[23:16] <= 8'b00110001;
            CONST_Q: s_out[23:16] <= 8'b00011001;
            CONST_R: s_out[23:16] <= 8'b01110011;
            CONST_S: s_out[23:16] <= 8'b01101101;
            CONST_T: s_out[23:16] <= 8'b11100001;
            CONST_U: s_out[23:16] <= 8'b10000011;
            CONST_V: s_out[23:16] <= 8'b11000111;
            CONST_W: s_out[23:16] <= 8'b10000001;
            CONST_X: s_out[23:16] <= 8'b11011001;
            CONST_Y: s_out[23:16] <= 8'b10001001;
            CONST_Z: s_out[23:16] <= 8'b10100101;
            CONST_ONE: s_out[23:16] <= 8'b10011111;
            CONST_TWO: s_out[23:16] <= 8'b00100101;
            CONST_THR: s_out[23:16] <= 8'b00001101;
            CONST_FOR: s_out[23:16] <= 8'b10011001;
            CONST_FIV: s_out[23:16] <= 8'b01001001;
            CONST_SIX: s_out[23:16] <= 8'b01000001;
            CONST_SEV: s_out[23:16] <= 8'b00011011;
            CONST_EIT: s_out[23:16] <= 8'b00000001;
            CONST_NIN: s_out[23:16] <= 8'b00001001;
            CONST_ZERO: s_out[23:16] <= 8'b00000011;
        endcase
        case(s_in[15:8])
            CONST_A: s_out[15:8] <= 8'b00010001;
            CONST_B: s_out[15:8] <= 8'b11000001;
            CONST_C: s_out[15:8] <= 8'b01100011;
            CONST_D: s_out[15:8] <= 8'b10000101;
            CONST_E: s_out[15:8] <= 8'b01100001;
            CONST_F: s_out[15:8] <= 8'b01110001;
            CONST_G: s_out[15:8] <= 8'b01000011;
            CONST_H: s_out[15:8] <= 8'b10010001;
            CONST_I: s_out[15:8] <= 8'b00001111;
            CONST_J: s_out[15:8] <= 8'b10001111;
            CONST_K: s_out[15:8] <= 8'b01010001;
            CONST_L: s_out[15:8] <= 8'b11100011;
            CONST_M: s_out[15:8] <= 8'b00010011;
            CONST_N: s_out[15:8] <= 8'b11010101;
            CONST_O: s_out[15:8] <= 8'b11000101;
            CONST_P: s_out[15:8] <= 8'b00110001;
            CONST_Q: s_out[15:8] <= 8'b00011001;
            CONST_R: s_out[15:8] <= 8'b01110011;
            CONST_S: s_out[15:8] <= 8'b01101101;
            CONST_T: s_out[15:8] <= 8'b11100001;
            CONST_U: s_out[15:8] <= 8'b10000011;
            CONST_V: s_out[15:8] <= 8'b11000111;
            CONST_W: s_out[15:8] <= 8'b10000001;
            CONST_X: s_out[15:8] <= 8'b11011001;
            CONST_Y: s_out[15:8] <= 8'b10001001;
            CONST_Z: s_out[15:8] <= 8'b10100101;
            CONST_ONE: s_out[15:8] <= 8'b10011111;
            CONST_TWO: s_out[15:8] <= 8'b00100101;
            CONST_THR: s_out[15:8] <= 8'b00001101;
            CONST_FOR: s_out[15:8] <= 8'b10011001;
            CONST_FIV: s_out[15:8] <= 8'b01001001;
            CONST_SIX: s_out[15:8] <= 8'b01000001;
            CONST_SEV: s_out[15:8] <= 8'b00011011;
            CONST_EIT: s_out[15:8] <= 8'b00000001;
            CONST_NIN: s_out[15:8] <= 8'b00001001;
            CONST_ZERO: s_out[15:8] <= 8'b00000011;
        endcase
        case(s_in[7:0])
            CONST_A: s_out[7:0] <= 8'b00010001;
            CONST_B: s_out[7:0] <= 8'b11000001;
            CONST_C: s_out[7:0] <= 8'b01100011;
            CONST_D: s_out[7:0] <= 8'b10000101;
            CONST_E: s_out[7:0] <= 8'b01100001;
            CONST_F: s_out[7:0] <= 8'b01110001;
            CONST_G: s_out[7:0] <= 8'b01000011;
            CONST_H: s_out[7:0] <= 8'b10010001;
            CONST_I: s_out[7:0] <= 8'b00001111;
            CONST_J: s_out[7:0] <= 8'b10001111;
            CONST_K: s_out[7:0] <= 8'b01010001;
            CONST_L: s_out[7:0] <= 8'b11100011;
            CONST_M: s_out[7:0] <= 8'b00010011;
            CONST_N: s_out[7:0] <= 8'b11010101;
            CONST_O: s_out[7:0] <= 8'b11000101;
            CONST_P: s_out[7:0] <= 8'b00110001;
            CONST_Q: s_out[7:0] <= 8'b00011001;
            CONST_R: s_out[7:0] <= 8'b01110011;
            CONST_S: s_out[7:0] <= 8'b01101101;
            CONST_T: s_out[7:0] <= 8'b11100001;
            CONST_U: s_out[7:0] <= 8'b10000011;
            CONST_V: s_out[7:0] <= 8'b11000111;
            CONST_W: s_out[7:0] <= 8'b10000001;
            CONST_X: s_out[7:0] <= 8'b11011001;
            CONST_Y: s_out[7:0] <= 8'b10001001;
            CONST_Z: s_out[7:0] <= 8'b10100101;
            CONST_ONE: s_out[7:0] <= 8'b10011111;
            CONST_TWO: s_out[7:0] <= 8'b00100101;
            CONST_THR: s_out[7:0] <= 8'b00001101;
            CONST_FOR: s_out[7:0] <= 8'b10011001;
            CONST_FIV: s_out[7:0] <= 8'b01001001;
            CONST_SIX: s_out[7:0] <= 8'b01000001;
            CONST_SEV: s_out[7:0] <= 8'b00011011;
            CONST_EIT: s_out[7:0] <= 8'b00000001;
            CONST_NIN: s_out[7:0] <= 8'b00001001;
            CONST_ZERO: s_out[7:0] <= 8'b00000011;
        endcase
    end
endmodule
