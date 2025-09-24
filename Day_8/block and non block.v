//Write Verilog code to show the difference between blocking (=) and non-blocking (<=) assignments.
module bn;
reg a,b,c,d;
reg clk;
initial clk=0;
always #5 clk = ~clk;

initial begin
a=0;b=1;
#5; a=b;
#3; b=c;
end

initial begin
a=0;b=1;c=0;
#5; a<=b;
#3; b<=c;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,bn);
$monitor("tim%0t|clk=%b|a=%b|b=%b|c=%b|d=%b",$time,clk,a,b,c,d);
#50;$finish;
end
endmodule

/*tim0|clk=0|a=1|b=0|c=0|d=x
tim5|clk=1|a=0|b=0|c=0|d=x
tim10|clk=0|a=0|b=0|c=0|d=x
tim15|clk=1|a=0|b=0|c=0|d=x
tim20|clk=0|a=0|b=0|c=0|d=x
tim25|clk=1|a=0|b=0|c=0|d=x
tim30|clk=0|a=0|b=0|c=0|d=x
tim35|clk=1|a=0|b=0|c=0|d=x
tim40|clk=0|a=0|b=0|c=0|d=x
tim45|clk=1|a=0|b=0|c=0|d=x
bn.v:23: $finish called at 50 (1s)
tim50|clk=0|a=0|b=0|c=0|d=x*/
