module init;
reg [3:0]a,b,c,d;

initial 
d=1;
initial begin
#20 a=4'b1100;
#5 c=4'b0110;
$display("a=%b c=%b",a,c);
end
initial begin
#50 b=4'h6;
#10 d=4'h8;
$display("b=%0h d=%0h",b,d);
end
endmodule
