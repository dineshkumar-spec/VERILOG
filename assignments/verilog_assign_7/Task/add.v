//Develop a task to perform serial addition (bit-by-bit) for two 4-bit numbers.
module add;
reg[3:0]a,b;
reg [4:0]result;

task addition;
input [3:0]x,y;
output [4:0]s;
integer i;
reg carry;
begin
        s=0;
	carry=0;
	for(i=0;i<4;i=i+1)begin
	s=x[i]^y[i]^carry;
	carry=(x[i]&y[i])^(y[i]&carry)^(x[i]&carry);
	end
	s[4]=carry;
end

endtask
initial begin
a=4'd5; b=4'd10;
addition(a,b,result);
 $display("a=%0d,b=%0d|flag=%0d",a,b,result);
a=4'd8; b=4'd2;
addition(a,b,result);
 $display("a=%0d,b=%0d|flag=%0d",a,b,result);
end
endmodule
