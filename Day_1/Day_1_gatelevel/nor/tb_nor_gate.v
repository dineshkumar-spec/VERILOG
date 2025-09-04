module tb_nor_gate;
reg a,b;
wire y;

nor_gate dut(.a(a), .b(b), .y(y));
initial begin
$dumpfile("nor_gate");
$dumpvars(0,tb_nor_gate);
$monitor("Time=%0t| a=%b | b=%b | y=%b",$time,a,b,y);

a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
