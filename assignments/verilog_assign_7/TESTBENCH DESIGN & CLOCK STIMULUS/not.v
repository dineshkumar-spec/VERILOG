module notgate;
reg a;
output y;
assign y = ~a;

initial begin
$dumpfile("not.vcd");
$dumpvars;
$monitor("time=%0t|a=%b|y=%b",$time,a,y);
a=0;#10;
a=1;#15;
$finish;
end
endmodule
