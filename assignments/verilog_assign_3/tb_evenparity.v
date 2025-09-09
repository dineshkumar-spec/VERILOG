module tb_evenparity;
reg [8:0]x;
wire ep;
wire op;
evenparity dut (.x(x), .ep(ep), .op(op));
initial begin
$dumpfile("evenparity.vcd");
$dumpvars(0,tb_evenparity);
$monitor("time=%0t|x=%b|ep=%b|op=%b",$time,x,ep,op);
x=9'b111110000; #5;
x=9'b010101010; #5;
x=9'b111111111; #5;
x=9'b000000000; #5;
$finish;
end
endmodule
