module tb_mux;
reg in1,in2;
reg s;
wire y;
mux dut (.in1(in1), .in2(in2), .sel(sel),.out(out));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb_mux);
$monitor("in1=%b|in2=%b|sel=%b|out=%b",in1,in2,sel,out);
in1=0; in2=0; sel=0; #5;
in1=0; in2=0; sel=1; #5;
in1=0; in2=1; sel=0; #5;
in1=0; in2=1; sel=1; #5;
in1=1; in2=0; sel=0; #5;
in1=1; in2=0; sel=1; #5;
in1=1; in2=1; sel=0; #5;
in1=1; in2=1; sel=0; #5;
$finish;
end
endmodule
