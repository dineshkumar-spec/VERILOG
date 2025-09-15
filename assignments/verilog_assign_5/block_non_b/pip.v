module pip(
input clk, 
input [7:0] din, 
output reg [7:0] dout);
reg [7:0] stage1;   // first stage
always @(posedge clk) begin
stage1 <= din;    // capture input
dout   <= stage1; // pass to output (next stage)
end
endmodule

