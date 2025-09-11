module non_block_initial;
reg [3:0]a,b,c;
initial begin
# 5 a<=4'h5;
#10 b<=4'h8;
#5 c<=4'h4;
#0 $display("time=%0t a=%h b=%h c=%h",$time,a,b,c);
#30 $finish;
end
endmodule
