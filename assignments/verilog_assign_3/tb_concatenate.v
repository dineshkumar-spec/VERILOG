module tb_concatenate;
reg a;
reg [1:0] b, c;
wire [2:0] y;
concatenate dut (.a(a), .b(b), .c(c), .y(y));
initial begin
$dumpfile("concatenate.vcd");
$dumpvars(0,tb_concatenate);
$monitor("time=%0t|a=%b|b=%b|c=%b|y=%b",$time,a,b,c,y);
a=0; b=11; c=00; #5;
a=1; b=10; c=11; #5;
$finish;
end
endmodule
