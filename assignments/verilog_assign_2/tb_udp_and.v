module tb_udp_and;
reg a,b;
wire y;
udp_and dut(.a(a), .b(b), .y(y));
initial begin
$dumpfile("udp_and.vcd");
$dumpvars(0,tb_udp_and);
$monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
$finish;
end 
endmodule
