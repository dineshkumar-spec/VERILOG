module func_update;
reg [3:0]data;
reg clk;

initial begin
 data = 0;
 clk = 0;
 $display("time=%0t|simulation starts :data=%b",$time,data);
end

always #6 clk = ~clk;
always @(posedge clk)begin
data = data + 2;
$monitor("time=%0t|counter updated:data=%d",$time,data);
end
initial begin
#60 $finish;
end 
endmodule
