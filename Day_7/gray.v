//binary to gray
module gray(
input [3:0]d,
output reg [3:0]g);
always@(*)begin
 g[3] = d[3];
 g[2] = d[3] ^ d[2];
 g[1] = d[2] ^ d[1];
 g[0] = d[1] ^ d[0];
end
endmodule
