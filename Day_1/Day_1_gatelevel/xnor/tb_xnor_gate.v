module tb_xnor_gates;
reg a,b;
wire y;

xnor_gate dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("xnor_gate.vcd");
$dumpvars(0,tb_xnor_gates);
$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
