`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 15:26:26
// Design Name: 
// Module Name: digital
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 数码管
// 输入数码管编码，该模块将其输出 
// 注：由于数码管的片选一次只能选中一个数码管，要同时显示四个数码管，就要利用视觉残留，在很快的速度下使四个片选信号循环有效
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digital
(
    input clk,
    input rst_n,
    input [31: 0] S,      		//32位数码管编码
    output reg [ 7: 0] ca,      //数码管段选
    output reg [ 3: 0] an       //数码管片选
);

    reg [31:0] timer;   //计时器
    reg [31:0] num;     //num = S
    reg [7:0] scan;     //num的一个字节，用来依次扫描num的四个字节
    
    always @(posedge clk) begin
	    //复位置0
        if(rst_n) begin
            num <= 32'b0;
            timer <= 32'b0;
        end
        //每个节拍计时器加1
        else begin
            timer <= timer + 32'b1;
			num <= S;
        end
    end
    
    always @ (posedge clk) begin
        if (rst_n) begin
            scan <= 8'b0;  
            an   <= 4'b1111;
        end
        else begin
            case(timer[18:17])
                2'b00: scan <= num[31:24];
                2'b01: scan <= num[23:16];
                2'b10: scan <= num[15:8];
                2'b11: scan <= num[7:0];
            endcase
            case(timer[18:17])
                2'b00: an <= 4'b0111;
                2'b01: an <= 4'b1011;
                2'b10: an <= 4'b1101;
                2'b11: an <= 4'b1110;
            endcase
        end
    end

    always @(posedge clk) begin
        if (rst_n)
            ca <= 8'b00;
        else 
            ca<=scan;
    end
endmodule
