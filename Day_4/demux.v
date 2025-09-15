module demux(
input [1:0]s,
input d,
output reg [3:0]y);
always@(*)begin
y=4'b000;
case(s)
2'b00:y[0]=d;
2'b01:y[1]=d;
2'b10:y[2]=d;
2'b11:y[3]=d;
endcase
end
endmodule
