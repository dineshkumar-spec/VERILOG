module tb_seq_10110;
reg clk;
reg rst;
reg x;
wire z;
seq_10110 dut (.x(x), .clk(clk), .rst(rst), .z(z));
initial begin
clk=0;
forever #5 clk=~clk;
end
always@(posedge clk)
        $display("time=%0t|clk=%b|x=%b|z=%b",$time,clk,x,z);
initial begin
$dumpfile("dump.vcd");
$dumpvars;
//$monitor("time=%0t|clk=%b|x=%b|z=%b",$time,clk,x,z);
rst=0;x=0;
#10 rst=1;

#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=0;

#20 $finish;
end
endmodule
