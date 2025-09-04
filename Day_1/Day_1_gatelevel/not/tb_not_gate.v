module tb_not_gate;
reg a;
wire y;

not_gate dut (.a(a), .y(y));

initial begin
$dumpfile("not_wave.vcd");
$dumpvars(0,tb_not_gate);
$monitor("Time=%0t | a=%b | y=%b",$time,a,y);
a=0; #5;
a=1; #5;
$finish;
end 
endmodule

