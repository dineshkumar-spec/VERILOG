module tb_and_gate;
reg a,b;
wire y;
and_gate dit (.a(a), .b(b), .y(y));
initial begin
$dumpfile("and_gate.vcd");
$dumpvars(0,tb_and_gate);
$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule

