module tb_decoder;
reg a0,a1;
wire y0,y1,y2,y3;
decoder dut (.a0(a0), .a1(a1), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
initial begin
$monitor("time=%0t|a0=%b|a1=%b|y0=%b|y1=%b|y2=%b|y3=%b",$time,a0,a1,y0,y1,y2,y3);
a0=0; a1=0; #5;
a0=0; a1=1; #5;
a0=1; a1=0; #5;
a0=1; a1=1; #5;
$finish;
end
endmodule
