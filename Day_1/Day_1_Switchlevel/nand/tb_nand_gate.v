module tb_nand_gate;
reg a,b;
wire y;
nand_gate dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("nand_gate.vcd");
$dumpvars(0,tb_nand_gate);
$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end 
endmodule
