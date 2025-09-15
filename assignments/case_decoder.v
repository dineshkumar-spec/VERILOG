module case_decoder(
input [1:0] in,
output reg [3:0] out);
always@(*)begin
casez(in)
2'b0? : out = 4'b0001;
2'b10 : out = 4'b0010;
2'b11 : out = 4'b0100;
default : out = 4'b0000;
endcase
end
endmodule
