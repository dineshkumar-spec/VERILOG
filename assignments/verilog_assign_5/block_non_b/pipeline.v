module tb_pipeline;
reg clk;
reg [7:0] din;
wire [7:0] dout;
pipeline dut (.clk(clk), .din(din), .dout(dout));
initial clk=0;
always #5 clk = ~clk;
$monitor("time=%0t|din=%d|dout=%d",$time,din,dout);
din=8'bd5; #10;
din=8'bd15; #10;
din=8'bd25; #10;
din=8'bd35; #10;
#20 $finish;
end
endmodule
