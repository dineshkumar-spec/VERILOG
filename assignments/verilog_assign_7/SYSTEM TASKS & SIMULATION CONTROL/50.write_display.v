module write_display;
reg [3:0]a,b;

initial begin
a=4'b1101;b=4'b0011;
$display("a=%b|b=%b",a,b);
$write("a=%b",a);
$write("b=%b",b);
end
endmodule
