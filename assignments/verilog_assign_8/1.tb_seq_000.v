module tb_seq_000;
reg clk;
reg rst;
reg x;
wire z;
seq_000 dut (.clk(clk), .rst(rst), .x(x), .z(z));
initial begin
clk=0;
forever #5 clk=~clk;
end
always@(posedge clk)
$display("time=%0t|clk=%b|x=%b|z=%b",$time,clk,x,z);
initial begin
$dumpfile("wave.vcd");
$dumpvars;
//$monitor("time=%0t|clk=%b|x=%b|z=%b",$time,clk,x,z);
rst=0;x=0;
#10 rst=1;
#5 x=0;
#5 x=0;
#5 x=0;
#5 x=0;
#5 x=1;
#5 x=1;
#5 x=0;
#100 $finish;
end
endmodule
