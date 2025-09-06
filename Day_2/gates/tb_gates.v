module tb_gates;
reg a,b;
output [3:0]y;
gates dut (.a(a), .b(b), .y(y));
initial begin
$dumpfile("gates.vcd");
$dumpvars(0,tb_gates);
$monitor("time=%0t |a=%b|b=%b|nand[0]=%b|nor[1]=%b|xor[2]=%b|xnor[3]=%b",$time,a,b,y[0],y[1],y[2],y[3]);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
