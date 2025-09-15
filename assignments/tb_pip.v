module tb_pip;
reg clk;
reg [7:0] din;
wire [7:0] dout;
pip dut (.clk(clk), .din(din), .dout(dout));
initial clk=0;
always #5 clk = ~clk;
initial begin
$monitor("time=%0t|din=%0d|dout=%0d",$time,din,dout);
din=8'd5; #10;
din=8'd15; #10;
din=8'd25; #10;
din=8'd35; #10;
#20 $finish;
end
endmodule

