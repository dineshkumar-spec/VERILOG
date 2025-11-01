module asyn_up(input clk,reset,output reg [3:0]q);
always@(posedge clk or negedge reset)begin
if(reset)
q<=4'b0000;
else
q<=q+1;
end
endmodule

module tb;
reg clk;
reg reset;
wire [3:0]q;
asyn_up dut (.clk(clk),.reset(reset),.q(q));

initial clk=0;
always #5 clk=~clk;

initial begin
$dumpfile("count.vcd");
$dumpvars;
$monitor("time=%0t|q=%b",$time,q);
reset=1;#10;
reset=0;#200;
 $finish;
end
endmodule
