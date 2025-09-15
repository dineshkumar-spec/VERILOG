module mux;
input in1,in2;
input s0;
output reg y;
always@(*)begin
if (s0)
    y=in1;
y = in2;
end
endmodule
