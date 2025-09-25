module decoder(input [2:0]d,output reg [7:0]out);
always@(*)begin
if (d==3'b000)
        out=8'b10000000;
else if (d==3'b001)
        out=8'b01000000;
else if (d==3'b010)
        out=8'b00100000;
else if (d==3'b011)
        out=8'b00010000;
else if (d==3'b100)
        out=8'b00001000;
else if (d==3'b101)
        out=8'b00000100;
else if (d==3'b110)
        out=8'b00000010;
else if (d==3'b111)
        out=8'b00000001;
else
        out=8'b0;
end
endmodule
//case
module decoder(input [2:0]d,output reg [7:0]out);
always@(*)begin
case(d)
3'b000:out=8'b10000000;
3'b001:out=8'b01000000;
3'b010:out=8'b00100000;
3'b011:out=8'b00010000;
3'b100:out=8'b00001000;
3'b101:out=8'b00000100;
3'b110:out=8'b00000010;
3'b111:out=8'b00000001;
default:out=8'b0;
endcase
end
endmodule
//tb
module tb_decoder;
reg [2:0]d;
wire [7:0]out;
decoder dut (.d(d), .out(out));
initial begin
$monitor("time=%0t|d=%b|out=%b",$time,d,out);
d=3'b000;#5;
d=3'b100;#5;
d=3'b101;#5;
$finish;
end
endmodule
