module seq_10110(
input clk,
input rst,
input x,
output reg z);
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg [2:0]state,next_st;
always@(posedge clk or negedge rst)begin
if(~rst)
state<=s0;
else
state<=next_st;
end
  always@(*)begin
next_st=state;
z=1'b0;
case(state)
s0:next_st=x?s1:s0;
s1:next_st=x?s1:s2;
s2:next_st=x?s3:s0;
s3:next_st=x?s4:s0;
s4:begin
if(x==0)begin
   z=1'b1;
   next_st=s0;
   end
   else
   next_st=s3;
end
default:next_st=s0;
endcase
end
endmodule
