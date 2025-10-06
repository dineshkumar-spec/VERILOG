module seq_1010(
input clk,
input rst,
input x,
output reg z);
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
reg[1:0]state,next_st;

always@(posedge clk or negedge rst)begin
if(~rst)
state<=s0;
else
state<=next_st;
end
  always@(*)begin
        next_st=state; //default hold
        z=1'b0; //default output
case(state)
        s0:next_st=x?s1:s0;
        s1:next_st=x?s1:s2;
        s2:next_st=x?s3:s0;
        s3:begin
                if(x==0)begin
                z=1'b1;
                next_st=s0;
                end
                else
                next_st=s1;
        end
        default:next_st=s0;
endcase
end
endmodule
