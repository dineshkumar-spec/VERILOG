module tb_or;
reg a,b;
wire out;
or dut (.a(a), .b(b), .out(out));
initial begin
$dumpfil("or.vcd");
$dumpvars(0,tb_or);
$monitor("time=%0t| a=%b|b=%b|out=%b",$time,a,b,out);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
