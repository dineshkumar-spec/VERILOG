module init16;
reg [15:0]count;
initial count = 16'h0000;
always #10 count = count + 1;
initial begin
$monitor("time=%0t | count=%h",$time,count);
#100 $finish;
end
endmodule


