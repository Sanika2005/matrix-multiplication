`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 12:03:50
// Design Name: 
// Module Name: matrix_mul
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
module top(
input clk
);
wire start;
wire [7:0] A0,A1,A2,A3;
wire [7:0] B0,B1,B2,B3;
wire done;
wire [15:0] C0,C1,C2,C3;
wire rst;

matrix_mul i1(
.clk(clk),
.rst(rst),
.start(start),
.A0(A0),.A1(A1),.A2(A2),.A3(A3),
.B0(B0),.B1(B1),.B2(B2),.B3(B3),
.C0(C0),.C1(C1),.C2(C2),.C3(C3),
.done(done)
);
ila_1 i2 (
	.clk(clk), // input wire clk


	.probe0(C0), // input wire [15:0]  probe0  
	.probe1(C1), // input wire [15:0]  probe1 
	.probe2(C2), // input wire [15:0]  probe2 
	.probe3(C3), // input wire [15:0]  probe3 
	.probe4(done) // input wire [0:0]  probe4
);

vio_2 i3 (
  .clk(clk),                // input wire clk
  .probe_in0(C0),    // input wire [15 : 0] probe_in0
  .probe_in1(C1),    // input wire [15 : 0] probe_in1
  .probe_in2(C2),    // input wire [15 : 0] probe_in2
  .probe_in3(C3),    // input wire [15 : 0] probe_in3
  .probe_in4(done),    // input wire [0 : 0] probe_in4
  .probe_out0(A0),  // output wire [7 : 0] probe_out0
  .probe_out1(A1),  // output wire [7 : 0] probe_out1
  .probe_out2(A2),  // output wire [7 : 0] probe_out2
  .probe_out3(A3),  // output wire [7 : 0] probe_out3
  .probe_out4(B0),  // output wire [7 : 0] probe_out4
  .probe_out5(B1),  // output wire [7 : 0] probe_out5
  .probe_out6(B2),  // output wire [7 : 0] probe_out6
  .probe_out7(B3),  // output wire [7 : 0] probe_out7
  .probe_out8(rst),  // output wire [0 : 0] probe_out8
  .probe_out9(start)  // output wire [0 : 0] probe_out9
);
endmodule
