module tb_xnor_gate;
reg a,b;
wire x;
xnor_gate dut (.a(a), .b(b), .x(x));
initial begin
$dumpfile("xnor_gate.vcd");
$dumpvars(0,tb_xnor_gate);
$monitor("Time=%0t | a=%b | b=%b | x=%b",$time,a,b,x);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
