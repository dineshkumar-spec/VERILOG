module tb_priority;
reg [3:0] d;
wire [1:0] y;
priority_encode dut(.d(d), .y(y));
initial begin
$monitor("time=%0t | d=%b | y=%b",$time,d,y);
d=4'b0000; #5;
d=4'b0001; #5;
d=4'b0010; #5;
d=4'b1111; #5;
$finish;
end
endmodule
