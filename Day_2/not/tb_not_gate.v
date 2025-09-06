module tb_not_gate;
reg in;
wire out;
not_gate dut (.in(in), .out(out));
initial begin
$dumpfile("not_gate.vcd");
$dumpvars(0,tb_not_gate);
$monitor("time=%0t | in=%b | out=%b",$time,in,out);
in=0;  #5;
in=1;  #5;
$finish;
end
endmodule
