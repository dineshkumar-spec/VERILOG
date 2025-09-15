module tb_flag;
reg f1,f2,f3;
wire out;
flag dut(.f1(f1), .f2(f2), .f3(f3),.out(out));
initial begin
$monitor("time=%0t|f1=%b|f2=%b|f3=%b|out=%b",$time,f1,f2,f3,out);
f1=1;f2=1;f3=1;#5;
f1=0;f2=1;f3=1;#5;
$finish;
end
endmodule

