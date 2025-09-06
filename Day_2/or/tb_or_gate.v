module tb_or_gate;
reg a,b;
wire y;
or_gate dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("or_gate.vcd");
$dumpvars(0,tb_or_gate);
$monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule

