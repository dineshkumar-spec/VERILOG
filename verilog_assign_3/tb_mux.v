module tb_mux;
reg d0,d1,s;
wire y;
mux dut(.d0(d0), .d1(d1), .s(s), .y(y));
initial begin
$monitor ("time=%0t|d0=%b|d1=%b|s=%b|y=%b",$time,d0,d1,s,y);
s=0; d0=0; d1=0; #5;
s=0; d0=1; d1=0; #5;
s=1; d0=0; d1=1; #5;
s=1; d0=1; d1=0; #5;
$finish;
end
endmodule 
