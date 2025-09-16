module tb_full;
reg a,b,cin;
wire s_out,c_out;
full dut (.a(a), .b(b), .cin(cin), .s_out(s_out), .c_out(c_out));
initial begin
$monitor("time=%0t|a=%b|b=%b|cin=%b|s_out=%b|c_out=%b",$time,a,b,cin,s_out,c_out);
a=0; b=1; cin=1; #5;
a=1; b=1; cin=1; #5;
$finish;
end
endmodule
