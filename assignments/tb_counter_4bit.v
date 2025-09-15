module tb_counter_4bit;
reg clk;
reg reset;
wire [3:0]q;
counter_4bit dut (.clk(clk), .reset(reset), .q(q));
initial begin
clk =0;
forever #5 clk = ~clk;
end
initial begin
$monitor("time=%0t|reset=%b|q=%b",$time,reset,q);
reset = 1;#10;
reset = 0;
#100;
reset = 1;#10;
reset = 0;
$finish;
end
endmodule
