module tb_case;
reg [1:0]s;
wire [6:0]y;
case_ dut (
.s(s),
.y(y));
initial begin
	$monitor("time=%0t|s=%b|y=%b",$time,s,y);
	s=2'b00; #5;
	s=2'b01; #5;
	s=2'b10; #5;
	s=2'bx0; #5;
	s=2'bz1; #5;
	s=2'bzz; #5;
	$finish;
end
endmodule
