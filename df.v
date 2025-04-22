module df(in,clk,clr,out);
input [12:0]in;
input clk,clr;
output reg [12:0]out;

always @(posedge clr)

	if(clr) out<=12'b0;
	
	else out<=out;


always @(posedge clk)

	 if(clk) out<=in;
	else out<=in;



endmodule
