module tb_half_sub;
reg a,b;
wire diff,bor;
half_sub dut (.a(a), .b(b), .diff(diff), .bor(bor));
initial begin
$dumpfile("half_sub.vcd");
$dumpvars(0,tb_half_sub);
$monitor("Time=%0t | a=%b | b=%b | diff=%b | bor=%b",$time,a,b,diff,bor);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
