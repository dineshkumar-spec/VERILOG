module mod(input clk, reset,output reg [3:0]q);
always@(posedge clk)begin
if(reset)
q<=0;
else if(q==4'b1010)
q<=0;
else
q<=q+1;
end
endmodule

module tb;
reg clk;
reg reset;
wire [3:0]q;

mod dut (clk,reset,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$dumpfile("bcd.vcd");
$dumpvars;
$monitor("time=%0t|q=%b",$time,q);
reset=1;#10;
reset=0;
#300 $finish;
end
endmodule
