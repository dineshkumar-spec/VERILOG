module tb_dff_block;
reg d;
reg clk;
wire q;
dff_block dut (.d(d), .clk(clk), .q(q));
initial begin
$dumpfile("dff_block.vcd");
$dumpvars(0,tb_dff_block);
end
initial begin
clk = 0;
forever #5 clk = ~clk; 
end
initial begin
d=0;
$monitor("time=%0t|clk=%b|d=%b|q=%b",$time,clk,d,q);
#7 d=1;
#10 d=0;
#10 d=1;
#15 d=0;
#50 $finish;
end
endmodule
