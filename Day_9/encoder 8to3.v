module encoder(input [7:0]d,output reg [2:0]out);
always@(*)begin
case(d)
8'b10000000:out=3'b000;
8'b01000000:out=3'b001;
8'b00100000:out=3'b010;
8'b00010000:out=3'b011;
8'b00001000:out=3'b100;
8'b00000100:out=3'b101;
8'b00000010:out=3'b110;
8'b00000001:out=3'b111;
default:out=3'b000;
endcase
end
endmodule
//if else
module encoder(input [7:0]d,output reg [2:0]out);
always@(*)begin
if (d==8'b10000000)
        out=3'b000;
else if (d==8'b01000000)
        out=3'b001;
else if (d==8'b00100000)
        out=3'b010;
else if (d==8'b00010000)
        out=3'b011;
else if (d==8'b00001000)
        out=3'b100;
else if (d==8'b00000100)
        out=3'b101;
else if (d==8'b00000010)
        out=3'b110;
else if (d==8'b00000001)
        out=3'b111;
else
        out=3'b000;
end
endmodule

//tb
module tb_encoder;
reg [7:0]d;
wire [2:0]out;
encoder dut (.d(d), .out(out));
initial begin
$monitor("time=%0t|d=%b|out=%b",$time,d,out);
d=8'b00001000;#5;
d=8'b10000000;#5;
d=8'b10100101;#5;
$finish;
end
endmodule
