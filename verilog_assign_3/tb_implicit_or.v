module tb_implicit_or;
reg [1:0]a;
reg [1:0]b;
wire [1:0]y;
implicit_or dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("implicit_or.vcd");
$dumpvars(0,tb_implicit_or);
$monitor("time=%0t| a=%b|b=%b|y=%b",$time,a,b,y);
a=; b=2'b00; #5;
a=; b=2'b01; #5;
a=2'b10; b=2'b10; #5;
a=2'b11; b=2'b11; #5;
$finish;
end
endmodule
