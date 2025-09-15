module tb_case_diff;
reg in1,in2;
reg s;
wire y_case,y_casex,y_casez;
case_diff dut (
	.in1(in1),
	.in2(in2),
	.s(s),
	.y_case(y_case),
	.y_casex(y_casex),
	.y_casez(y_casez));
initial begin
$monitor("time=%0t|in1=%b|in2=%b|s=%b|y_case=%b|y_casex=%b|y_casez=%b",$time,in1,in2,s,y_case,y_casex,y_casez);
in1=1; in2=0;
s=0; #5; 
s=1; #5;

//unknown x
s=1'bx; #5;

//high impedance
s=1'bz; #5;
$finish;
end
endmodule

