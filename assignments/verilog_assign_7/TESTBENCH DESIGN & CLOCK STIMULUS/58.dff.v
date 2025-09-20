module dff(
input d,
input clk,
output reg q);
always@(posedge clk)begin
q<=d;
end
endmodule

module tb_d;
reg d,clk;
wire q;

dff dut (.d(d), .clk(clk), .q(q));

initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("dff.vcd");
$dumpvars(0,tb_d);
$monitor("time=%0t|d=%b|clk=%b|q=%b",$time,d,clk,q);
d=0; #5;
d=1; #5;
d=0; #5;
d=1; #5;
$finish;
end
endmodule
