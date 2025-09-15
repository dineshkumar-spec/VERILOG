module tb_case_x;
reg [1:0] s;
wire y;
case_x dut (.s(s), .y(y));
initial begin
$monitor("time=%0t|s=%b|y=%b",$time,s,y);
s=2'b00; #5;
s=2'b01; #5;
s=2'b10; #5;
s=2'b11; #5;
s=2'b0?; #5;
s=2'bzx; #5;
$finish;
end
endmodule

