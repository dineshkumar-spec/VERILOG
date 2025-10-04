module ring(
input clk,rst,
output reg [3:0]q);
always@(posedge clk)begin
if(rst)
q<=4'b0001;
else
        q<={q[2:0],q[3]};
end
endmodule
//tb
module tb_ring;
reg clk;
reg rst;
wire [3:0]q;

ring dut (.clk, .rst, .q(q));
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
rst=1;#10;
rst=0;
#100 $finish;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|q=%b",$time,clk,rst,q);
end
endmodule
