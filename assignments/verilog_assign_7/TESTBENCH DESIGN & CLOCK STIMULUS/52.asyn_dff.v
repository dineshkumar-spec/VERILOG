module dff(
input d,
input clk,
input r_set,
output reg q);
always@(posedge clk or negedge r_set)begin
if(!r_set)
q<=0;
else
q<=d;
end
endmodule

module tb_d;
reg d,clk,r_set;
wire q;

dff dut (.d(d), .clk(clk), .r_set(r_set), .q(q));

initial clk=0;
always #5 clk = ~clk;

initial begin
d=0;
r_set=1;

#3 r_set = 0;
#7 r_set = 1;

#5; d=1;
#5; d=0;
#5; d=1;
#5; d=0;
#20 $finish;
end

initial begin
$dumpfile("dff.vcd");
$dumpvars(0,tb_d);
$monitor("time=%0t|d=%b|clk=%b|r_set=%b|q=%b",$time,d,clk,r_set,q);
end
endmodule
