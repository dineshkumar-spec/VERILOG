module seq_1010(
input clk,
input rst,
input x,
output reg z);
parameter s0=4'h1,
          s1=4'h2,
          s2=4'h3,
          s3=4'h4,
          s4=4'h5;
reg[3:0]state,next_st;

always@(posedge clk or negedge rst)begin
if(~rst)
state<=s0;
else
state<=next_st;
end

always@(*)begin
        next_st=state; //default hold
case(state)
        s0:next_st=x?s1:s0;
        s1:next_st=x?s1:s2;
        s2:next_st=x?s3:s0;
        s3:next_st=x?s1:s4;
        s4:next_st=x?s1:s0;
        default:next_st=s0;
endcase
end
  always@(*)begin
case(state)
s0:z=0;
s1:z=0;
s2:z=0;
s3:z=0;
s4:z=1;
default:z=0;
endcase
end
endmodule
