`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 23:05:18
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk;
reg reset;
wire ns_red;
wire ns_yellow;
wire ns_green;
wire ew_red;
wire ew_yellow;
wire ew_green;

main dut(.clk(clk),.reset(reset),.ns_red(ns_red),.ns_yellow(ns_yellow),.ns_green(ns_green),.ew_red(ew_red),.ew_yellow(ew_yellow),.ew_green(ew_green));

initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
reset =1;
#20;
reset =0;
end

initial begin
$monitor(
"time = %0t |ns_red = %b| ns_yellow=%b | ns_green=%b | ew_red=%b |ew_yellow=%b| ew_green=%b",
$time , ns_red, ns_yellow, ns_green , ew_red, ew_yellow, ew_green);
end

initial begin
#1200;
$finish;
end
endmodule
