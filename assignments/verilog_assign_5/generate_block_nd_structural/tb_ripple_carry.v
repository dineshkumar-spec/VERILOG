module tb_ripple_carry;
reg [3:0] a,b;
reg       cin;
wire [3:0] sum;
wire cout;
ripple_carry dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$monitor("time=%0t|a=%b|b=%b|cin=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
a=4'b0101; b=4'b1110; cin=0; #5;
a=4'b1111; b=4'b1100; cin=1; #5;
$finish;
end
endmodule
