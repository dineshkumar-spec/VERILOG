module bus_mux# (parameter N=8)(
input [7:0] a,b,
input s,
output [7:0]y);

genvar i;
generate
for(i=0;i<7;i=i+1)begin
 assign y[i] = (s) ? b[i] : a[i];
end
endgenerate
endmodule
