module tb_ifmux;
reg in1,in2;
reg sel;
wire y;
ifmux dut (.in1(in1), .in2(in2), .sel(sel), .y(y));
initial begin
$monitor("time=%0t|in1=%b,in2=%b,sel=%b,y=%b",$time,in1,in2,sel,y);
in1=0; in2=1; sel=1;#5;
in1=1; in2=0; sel=1;#5;
in1=1; in2=1; sel=1;#5;
$finish;
end
endmodule
