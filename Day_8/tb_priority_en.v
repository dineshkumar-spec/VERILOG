module tb_priority;
reg [3:0]d;
wire[1:0]y;

priority dut(.d(d), .y(y));

initial begin
$monitor("time=%0t|d=%b|y=%b|",$time,d,y);
d=4'b1010;#5;
d=4'b0100;#5;
$finish;
end
endmodule
