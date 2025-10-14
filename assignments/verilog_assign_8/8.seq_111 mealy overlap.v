module seq_111(
input clk,rst,
input x,
output reg z);
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10;
reg [1:0]state,nxt_st;
always@(posedge clk or negedge rst)begin
if(~rst)
state<=s0;
else
state<=nxt_st;
end

always@(*)begin
nxt_st=state;
z=1'b0;
case(state)
s0:nxt_st=x?s1:s0;
s1:nxt_st=x?s2:s0;
s2:begin
        if(x==1)begin
        z=1'b1;
        nxt_st=s1;
        end
        else
        nxt_st=s0;
   end
default:nxt_st=s0;
endcase
end
endmodule
