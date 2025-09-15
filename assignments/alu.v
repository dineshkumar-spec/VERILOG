module alu(
input [3:0] a,b,
input [2:0] sel,
output reg [7:0]y);

always@(*) begin
if (sel == 000) y=a+b;  //add
else if (sel == 3'b001) y=a-b; //subtract
else if (sel == 3'b010) y=a*b; //multiple
else if (sel == 3'b011) y=a&b; //and
else if (sel == 3'b100) y=a|b; //or
else if (sel == 3'b101) y=a^b; //xor
else if (sel == 3'b110) y=(a||b); //nor
else y= 8'b0;
end
endmodule
