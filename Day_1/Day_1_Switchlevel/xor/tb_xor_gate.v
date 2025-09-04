module tb_xor_gate;
reg a,b;
wire y;

xor_gate dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("xor_gate.vcd");
$dumpvars(0,tb_xor_gate);
$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);

a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
