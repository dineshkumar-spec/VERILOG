module tb_replicate;
reg [3:0]a,b,c;
wire [8:0]y;
replicate dut (.a(a), .b(b), .c(c), .y(y));
initial begin
$dumpfile("replicat.vcd");
$dumpvars(0,tb_replicate);
$monitor("time=%0t| a=%b|b=%b|c=%b|y=%b",$time,a,b,c,y);
a=4'b1101; b=4'b0010; c=4'b1111; #5;
a=4'b0101; b=4'b0000; c=4'b1100; #5;
$finish;
end
endmodule
