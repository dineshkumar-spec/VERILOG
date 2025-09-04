module tbnor_gate;
reg a,b;
wire y;
norgate dut(.a(a), .b(b), .y(y));
initial begin
$dumpfile("nor_gate.vcd");
$dumpvars(0,tbnor_gate);
$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
end
initial begin
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
