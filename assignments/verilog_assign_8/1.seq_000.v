/*Design a finite state machine that has an input x and output y. The output should be
asserted whenever x = 1 or x = 0 for three consecutive clock pulses. In other words, the
FSM should detect the sequences 111 or 000. Overlapping sequences are allowed, so a
sequence of four or five 0s or 1s should also output 1*/
module seq_000(
input clk,rst,
input x,
output reg z);
parameter s0=2'b00,
	  s1=2'b01,
	  s2=2'b10,
	  s3=2'b11;
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
s0:nxt_st=x?s0:s1;
s1:nxt_st=x?s0:s2;
s2:nxt_st=x?s0:s3;
s3:begin
	if(x==0)begin
	z=1'b1;
	nxt_st=s2;
	end
	else
	nxt_st=s0;	
   end
default:nxt_st=s0;
endcase
end
endmodule

