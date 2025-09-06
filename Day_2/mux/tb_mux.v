module tb_mux;
reg s,d0,d1;
wire y;
mux dut (.s(s), .d0(d0), .d1(d1), .y(y));
initial begin
$dumpfile("mux.vcd");
$dumpvars(0,tb_mux);
$monitor("Time=%0t | s=%b | d0=%b | d1=%b | y=%b",$time,s,d0,d1,y);
s=0; d0=0; d1=0; #5;
s=0; d0=0; d1=1; #5;
s=0; d0=1; d1=0; #5;
s=0; d0=1; d1=1; #5;
s=1; d0=0; d1=0; #5;
s=1; d0=0; d1=1; #5;
s=1; d0=1; d1=0; #5;
s=1; d0=1; d1=1; #5;
$finish;
end
endmodule

