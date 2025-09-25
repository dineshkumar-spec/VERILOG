module alu
(input [7:0]a,
input [7:0]b,
input [3:0]sel,
output reg [15:0]out);
always@(*)begin
case(sel)
4'b0000:out=a&b;
4'b0001:out=a|b;
4'b0010:out=a^b;
4'b0011:out=~(a^b);
4'b0100:out=~(a&b);
4'b0101:out=~a|b;
4'b0110:out=a+b;
4'b0111:out=a-b;
4'b1000:out=a/b;
4'b1001:out={a,b};
4'b1010:out={(2){a,b}};
4'b1011:out=a<<1;
4'b1100:out=a>>1;
4'b1101:out=b<<2;
4'b1110:out=b>>2;
4'b1111:out=|b;
default:out=((a==b)? 8'b1:8'b0);
endcase
end
endmodule
//tb
module tb_alu;
reg[3:0]sel;
reg [7:0]a;
reg [7:0]b;
wire [15:0]out;

alu dut(.a(a), .b(b), .sel(sel), .out(out));
initial begin
$monitor("time=%0t|a=%0d|b=%0d|sel=%0d|out=%0d",$time,a,b,sel,out);
a=8'b00101010;b=8'b11110000;sel=4'b1000;#5;
a=8'b00101010;b=8'b11110000;sel=4'b1100;#5;
a=8'b00101010;b=8'b11110000;sel=4'b1001;#5;
a=8'b00101010;b=8'b11110000;sel=4'b0000;#5;
a=8'b00101010;b=8'b11110000;sel=4'b1111;#5;
$finish;
end
endmodule
/*time=0|a=42|b=240|sel=8|out=0
time=5|a=42|b=240|sel=12|out=21
time=10|a=42|b=240|sel=9|out=10992
time=15|a=42|b=240|sel=0|out=32
time=20|a=42|b=240|sel=15|out=1*/
