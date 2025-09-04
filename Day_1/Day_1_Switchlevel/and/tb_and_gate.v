module tb_and_gate;
reg a,b;
wire x;

and_gate dut (.a(a), .b(b), .x(x));
initial begin
$dumpfile("and_gate.vcd");
$dumpvars(0,tb_and_gate);
$monitor("Time=%0t | a=%b | b=%b | x=%b ",$time,a,b,x);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end 
endmodule
