module tb_tri_mux;
reg i0,i1,s;
wire y;
tri_mux dut (.i0(i0), .i1(i1), .s(s), .y(y));
initial begin
$dumpfile("ripple.vcd");
$dumpvars(0,tb_tri_mux);
$monitor("time=%0t| i0=%b | i1=%b | s=%b | y=%b",$time,i0,i1,s,y);
i0=0; i1=0; s=0; #5;
i0=0; i1=0; s=1; #5;
i0=0; i1=1; s=0; #5;
i0=0; i1=1; s=1; #5;
i0=1; i1=0; s=0; #5;
i0=1; i1=0; s=1; #5;
i0=1; i1=1; s=0; #5;
i0=1; i1=1; s=1; #5;
$finish;
end
endmodule
