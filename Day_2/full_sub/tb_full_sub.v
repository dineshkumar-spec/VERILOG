module tb_full_sub;
reg a,bin,c;
wire diff,bor;
full_sub dut (.a(a), .bin(bin), .c(c), .diff(diff), .bor(bor));
initial begin
$dumpfile("full_sub.vcd");
$dumpvars(0,tb_full_sub);
$monitor("Time=%0t | a=%b | bin=%b | c=%b | diff=%b | bor=%b",$time,a,bin,c,diff,bor);
a=0; bin=0; c=0; #5;
a=0; bin=0; c=1; #5;
a=0; bin=1; c=0; #5;
a=0; bin=1; c=1; #5;
a=1; bin=0; c=0; #5;
a=1; bin=0; c=1; #5;
a=1; bin=1; c=0; #5;
a=1; bin=1; c=1; #5;
$finish;
end
endmodule 
