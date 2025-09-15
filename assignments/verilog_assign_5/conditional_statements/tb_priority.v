module tb_priority;
reg [3:0]d;
wire[1:0]y;
priority dut(.d(d), .y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars;
$monitor("time=%0t|d=%b|y=%b",$time,d,y);
d=4'b0001; #5; //y=00
d=4'b0010; #5; //y=01
d=4'b0100; #5; //y=10
d=4'b1000; #5; //y=11
d=4'b1010; #5; //y=11
d=4'b0010; #5; //y=01
d=4'b1111; #5; //y=11
$finish;
end
endmodule

