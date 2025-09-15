module gtob #(parameter N=4)(
input [3:0] gray,
output[3:0]binary);
wire[3:0] bin;
assign bin[3] = gray[3];
genvar i;
generate
for(i=2;i>=0;i=i-1)begin:graytobin
assign bin[i] = bin[i+1]^gray[i];
end
endgenerate
assign binary = bin;
endmodule
