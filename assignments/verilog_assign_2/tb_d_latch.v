module tb_d_latch;
reg d,en,q;
wire qn;
d_latch dut(.d(d), .en(en), .q(q), qn(qn));
initial begin
$dumpfile("d_latch.vcd");
$dumpvars(0,tb_d_latch);
$monitor("time=%0t| d=%b, en=%b, q=%b, qn=%b",$time,d,en,q,qn);
d=0; en=0; q=0; #5;
d=0; en=0; q=1; #5;
d=0; en=1; q=0; #5;
d=0; en=1; q=1; #5;
d=1; en=0; q=0; #5;
d=1; en=0; q=1; #5;
d=1; en=1; q=0; #5;
d=1; en=1; q=1; #5;
$finish;
end
endmodule
