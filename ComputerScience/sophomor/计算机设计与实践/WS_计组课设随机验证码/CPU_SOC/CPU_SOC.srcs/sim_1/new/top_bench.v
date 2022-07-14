`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 17:12:05
// Design Name: 
// Module Name: top_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_bench();
    reg [15:0]switch;
    reg [1:0] key;
    reg clk;
    reg reset;
    wire [7:0]ca;
    wire [3:0]an;

    top soc(
    .switch(switch),
    .key(key),
    .clk(clk),
    .reset(reset),
    .ca(ca),
    .an(an));
    parameter DELY = 1000;
    parameter KEYDELY = 5000;
    initial 

    begin
        clk<=0;
        reset <=1;
        #22;
        reset <=0;
        switch = 4'h0000;
        key = 2'b00;
        #100000 key = 2'b01;  
        #DELY key = 2'b00;
        #100000 key = 2'b01;  
        #DELY key = 2'b00;


        #100000 switch = 16'b0100111001000111; 
        #KEYDELY key = 2'b10;  
        #DELY key = 2'b00;

        #100000 switch = 16'b0100100001001101; 
        #KEYDELY key = 2'b10;  
        #DELY key = 2'b00;
    end

    always #5 clk=~clk;
endmodule
