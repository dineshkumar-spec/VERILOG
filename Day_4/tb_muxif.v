module tb_muxif;
reg [1:0]s;
reg [3:0]d;
wire y;
muxif dut (.s(s), .d(d), .y(y));
initial begin
$monitor("time=%0t|s=%b|d=%b|y=%b",$time,s,d,y);
d=4'b1101; s=2'b00; #5;
s=2'b01; #5;
s=2'b10; #5;
s=2'b11; #5;
$finish;
end
endmodule
