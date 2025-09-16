module operator;
reg[3:0]a,b,c,d;
reg [3:0]x,y,z,n;
initial begin
a=4'b1100;x=&a;
b=4'b0101;y=|b;
c=4'b1110;z=^c;
d=4'b1111;n=~^c;
$display("a=%b,b=%b,c=%b,d=%b,x=%b,y=%b,z=%b,n=%b",a,b,c,d,x,y,z,n);
end
endmodule
