module tb_alu;
reg [3:0] a;
reg [3:0] b;
reg [2:0] sel;
wire[7:0] y;
alu dut (.a(a), .b(b), .sel(sel), .y(y));
initial begin
$monitor("time=%0t|a=%b|b=%b|sel=%b|y=%b",$time,a,b,sel,y);

a=4'b0101; b=4'b0011;sel=3'b000; #10;
sel=3'b001; #10;
sel=3'b010; #10;
sel=3'b011; #10;
sel=3'b100; #10;
sel=3'b101; #10;
sel=3'b010; #10;
sel=3'b111; #10;
#20 $finish;
end
endmodule

