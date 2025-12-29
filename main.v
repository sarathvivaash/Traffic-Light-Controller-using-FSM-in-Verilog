`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 14:58:05
// Design Name: 
// Module Name: main
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


module main(
input clk,
input reset,
output reg ns_red,
output reg ns_yellow,
output reg ns_green,
output reg ew_red,
output reg ew_yellow,
output reg ew_green
);
reg [1:0]state;
reg [1:0]next_state;
reg [4:0]timer;
reg [4:0]next_timer;

 
 always @(posedge clk) begin
 if(reset==1) begin
 state<= 2'b00;
 timer<=5'd0;
 end
 else begin
 state <= next_state;
 timer<=next_timer;
 end
 end
 
 always @(*) begin
 next_state =state;
 next_timer = timer +1;
 ns_red    = 1'b0;
 ns_yellow = 1'b0;
 ns_green  = 1'b0;
 ew_red    = 1'b0;
 ew_yellow = 1'b0;
 ew_green  = 1'b0;
 case(state)
 2'b00: begin
 ns_green = 1'b1;
 ew_red = 1'b1;
 if(timer==5'd24) begin
 next_state = 2'b01;
 next_timer = 1'd0;
 end
 end
 2'b01: begin
 ns_yellow = 1'b1;
 ew_red = 1'b1;
 if(timer==5'd4) begin
 next_state= 2'b10;
 next_timer =1'd0;
 end
 end
 2'b10: begin
 ns_red =1'b1;
 ew_green = 1'b1;
 if(timer==5'd24) begin
 next_state =2'b11;
 next_timer = 1'd0;
 end
 end
 2'b11: begin
 ns_red = 1'b1;
 ew_yellow = 1'b1;
 if(timer==5'd4) begin
 next_state=2'b00;
 next_timer= 1'd0;
 end
 end
 default: begin
 next_state = 2'b00;
 next_timer = 5'd0;
 end
 endcase
 end
 endmodule
 
 
 
