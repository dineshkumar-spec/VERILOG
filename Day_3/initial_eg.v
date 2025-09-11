module non_block;
reg [3:0]a,b,c;
initial begin
 # 5 a = 4'h2;
 # 5 b = 4'h5;
 #10 c = 4'h6;
$display("time=%0t, a=%h, b=%h, c=%h",$time,a,b,c);
end
endmodule
