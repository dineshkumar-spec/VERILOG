module tb_half_adder;
reg a,b;
wire sum, carry;
half_adder dut (.a(a), .b(b), .sum(sum), .carry(carry));
initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0,tb_half_adder);
$monitor("Time=%0t | a=%b | b=%b | sum=%b | carry=%b",$time,a,b,sum,carry);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end
endmodule
