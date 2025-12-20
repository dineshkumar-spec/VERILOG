module fifo(
input clk,reset,wr_en,rd_en,
input [7:0]data_in,
output reg [7:0]data_out,
output  full,empty );

reg [2:0] wr_ptr;
reg [2:0] rd_ptr;
reg [7:0]fifo[0:7];

always@(posedge clk)begin
  if(!reset)begin
  wr_ptr<=0;
  rd_ptr<=0;
  data_out<=0;
   end
end
  
always@(posedge clk)begin
  if(wr_en && !full)begin
   fifo[wr_ptr]<=data_in;
   wr_ptr <= wr_ptr +1'b1;
   end
end
  
  always@(posedge clk)begin
   if(rd_en && !empty)begin
   data_out<=fifo[rd_ptr];
   rd_ptr<=rd_ptr+1'b1;
   end
end
  assign full = ((wr_ptr+1'b1)==rd_ptr);
assign empty = wr_ptr==rd_ptr;
endmodule
