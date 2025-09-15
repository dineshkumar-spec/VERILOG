module tb_case_decoder;
reg [1:0] in;
wire [3:0] out;
case_decoder dut (.in(in), .out(out));
initial begin
$monitor("time=%0t|in=%b|out=%b",$time,in,out);
in=2'b0?; #5;
in=2'b01; #5;
in=2'b10; #5;
in=2'b11; #5;
in=2'bx0; #5;
$finish;
end
endmodule
