`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:36 01/06/2021 
// Design Name: 
// Module Name:    conv 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module conv( input clk, input data_in, input [1:0]row_in, input [1:0]col_in,
input signed [7:0]data, output reg signed [7:0]out );
reg [7:0]x[2:0][2:0];
reg signed [3:0]kernel[2:0][2:0]; 
integer m,n,sum;
initial begin
     kernel[0][0]= 1;
	  kernel[0][1]= 2;
	  kernel[0][2]= 1;
	  kernel[1][0]= 0;
	  kernel[1][1]= 0;
	  kernel[1][2]= 0;
	  kernel[2][0]= -1;
	  kernel[2][1]= -2;
	  kernel[2][2]= -1;
end
always @(posedge clk) begin
if (data_in == 1) begin
x[row_in][col_in] = data;
end
else if (data_in == 0) begin
sum = 0;
for (m = 0 ; m <= 2 ; m = m + 1) begin
for (n = 0 ; n <= 2 ; n = n + 1) begin 
sum = sum + x[m][n]*kernel[2-m][2-n];
end
end
out = sum;
end
if (sum > 255 ) begin
out = 255 ;
end
if (sum < 0 ) begin
out = 0 ;
end 
end
endmodule 