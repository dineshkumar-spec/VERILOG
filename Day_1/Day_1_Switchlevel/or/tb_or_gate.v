module tb_or_gate;
reg a,b;
wire x;
or_gate dut (.a(a), .b(b), .x(x));
initial begin
$dumpfile("or_gate.vcd");
$dumpvars(0,tb_or_gate);
$monitor("Time=%0t | a=%b | b=%b | x=%b",$time,a,b,x);
end 
initial begin
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end 
endmodule
