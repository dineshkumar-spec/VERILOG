module tb_dff;
reg d;
reg clk;
wire q;
dff dk(.d(d),.clk(clk),.q(q));
initial begin
$dumpfile("dff.vcd");
$dumpvars(0,tb_dff);
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

