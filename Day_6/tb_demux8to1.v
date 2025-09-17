module tb_demux;
reg d;
reg [2:0]s;
wire [7:0]y;
demux dut (.d(d), .s(s), .y(y));
initial begin
$monitor("time=%0t|d=%b|s=%b|y=%b",$time,d,s,y);
d=1;s=3'b000;#5;
d=1;s=3'b001;#5;
d=0;s=3'b010;#5;
d=0;s=3'b011;#5;
d=0;s=3'b100;#5;
d=1;s=3'b101;#5;
d=1;s=3'b110;#5;
d=1;s=3'b111;#5;
$finish;
end
endmodule
