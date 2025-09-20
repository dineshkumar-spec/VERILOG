//Use $display to print values of two registers and their sum.
module add;
reg[7:0]a;
reg [7:0]b;
wire [8:0]result;
assign result = a + b;
initial begin
a=8'b11001010; b=8'b00110101;
$display("number1=%b|number2=%b|Sum=%b",a,b,result);
end
endmodule
