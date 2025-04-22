module mux;
wire [12:0] out;
reg [12:0] in;
reg clk,clr;
df flfp(in,clk,clr,out);
always #5 clk=~clk;
initial begin
clk=1'b0; clr=1'b0;in=12'b0;
#11 clr=1'b1;
#10 clr=1'b0; 
#10 in=12'b110101000010;
#100 in=12'b000100000000;
#100 $finish;
end
initial begin
$dumpfile("df.vcd");
$dumpvars(0,mux);
$monitor("clr=%b,in=%4d,out=%4d",clr,in,out);
end
endmodule
