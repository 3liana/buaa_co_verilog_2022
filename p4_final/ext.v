`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:28 11/05/2022 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] in,
    input [1:0] op,
    output reg [31:0] out
    );
   always@(*)begin
	   case(op)
		   2'b00:out = {{16{1'b0}},in};
			2'b01:out = {{16{in[15]}},in};
			2'b10:out = {in,{16{1'b0}}};
		endcase
	end

endmodule
