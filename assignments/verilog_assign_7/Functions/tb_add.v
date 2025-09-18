module tb_addition;
reg [7:0]a,b;
wire [8:0] result;
addition dut(.a(a), .b(b), .result(result));
initial begin
a=8'b11110000; b=8'b10100011;
#10;
$display("Addition of a=%b and b=%b : %09b",a,b,result);
$finish;
end
endmodule
