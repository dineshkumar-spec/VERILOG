module tb_demux;
reg [1:0]s;
reg d;
wire [3:0]y;
demux dut(.s(s), .d(d), .y(y));
initial begin
$monitor ("time=%0t|s=%b|d=%b|y=%b",$time,s,d,y);
d=4'b0111;s=2'b00; #5;
s=2'b01; #5;
s=2'b10; #5;
s=2'b11; #5;
$finish;
end
endmodule
