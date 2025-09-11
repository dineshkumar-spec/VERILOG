module tb_ripple;
reg [3:0] a,b;
reg cin;
wire [3:0]sum;
wire cout;
ripple dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$dumpfile("ripple.vcd");
$dumpvars(0,tb_ripple);
$monitor("time=%0t | a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
a=4'b0000; b=4'b0000; cin=0; #5;
a=4'b0001; b=4'b0011; cin=0; #5;
a=4'b0101; b=4'b0011; cin=0; #5;
a=4'b1111; b=4'b0001; cin=0; #5;
a=4'b1010; b=4'b0101; cin=1; #5;
$finish;
end
endmodule
