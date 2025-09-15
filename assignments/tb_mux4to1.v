module tb_mux4to1;
reg [3:0] in;
reg [1:0] sel;
wire y;
mux4to1 dut(.in(in),.sel(sel), .y(y));
initial begin
$monitor("in=%d|sel=%b|y=%b",in,sel,y);
in=4'b1010;
sel = 2'b00; #5;
sel = 2'b01; #5;
sel = 2'b10; #5;
sel = 2'b11; #5;
$finish;
end
endmodule
