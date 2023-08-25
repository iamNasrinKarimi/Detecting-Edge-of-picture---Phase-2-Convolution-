`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:08:13 01/06/2021
// Design Name:   conv
// Module Name:   C:/.Xilinx/convolution/convtest.v
// Project Name:  convolution
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module convtest;

	// Inputs
	reg clk;
	reg data_in;
	reg [1:0] row_in;
	reg [1:0] col_in;
	reg [7:0] data;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	conv uut (
		.clk(clk), 
		.data_in(data_in), 
		.row_in(row_in), 
		.col_in(col_in), 
		.data(data), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data_in=0;
		row_in=0;
		col_in=0;
		data=0;
		
#100;
		clk = 1;
		data_in = 1;
		row_in = 0;
		col_in = 0;
		data = 1;
#10;
		clk = 0;
#10;
		clk = 1;
		data_in = 1;
		row_in = 0;
		col_in = 1;
		data = 2;
#10;
		clk = 0;
#10;
		clk = 1;
		data_in = 1;
		row_in = 0;
		col_in = 2;
		data = 3;
#10;
		clk = 0;

#10;
		clk = 1;
		data_in = 1;
		row_in = 1;
		col_in = 0;
		data = 4;		
#10;
		clk = 0;

#10;

		clk = 1;
		data_in = 1;
		row_in = 1;
		col_in = 1;
		data = 5;
#10;
		clk = 0;

#10;
		clk = 1;
		data_in = 1;
		row_in = 1;
		col_in = 2;
		data = 6;		
#10;
		clk = 0;
#10;
		clk = 1;
		data_in = 1;
		row_in = 2;
		col_in = 0;
		data = 7;
#10;
		clk = 0;

#10;
		clk = 1;
		data_in = 1;
		row_in = 2;
		col_in = 1;
		data = 8;		
#10;
		clk = 0;
#10;
		clk = 1;
		data_in = 1;
		row_in = 2;
		col_in = 2;
		data = 9;	
#10;
      clk = 0;
#10;
      clk = 1;
		data_in = 0;
		row_in = 0;
		col_in = 0;	
		data=0;
#10;
clk=0;

end
endmodule 
