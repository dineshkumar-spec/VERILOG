module loop_wave;
reg clk;
reg [3:0] for_sig;
reg[3:0] repeat_sig;
reg [3:0] forever_sig;
integer i;

initial begin
 clk=0;
 forever #5 clk = ~clk;
end

//for
initial begin
 for_sig=0;
 for(i=0;i<4;i=i+1)begin
 for_sig=i;
 #1;
 end
end

//repeat
initial begin
 repeat_sig=0;
 repeat (6) begin
 repeat_sig=repeat_sig + 1;
 #5;
 end
end

//forever
initial begin
 forever_sig=0;
 forever #8 forever_sig = ~forever_sig;
end

initial begin
$monitor("Time=%0t|for_sig=%0d|repeat_sig=%0d|forever_sig=%0d",$time,for_sig,repeat_sig,forever_sig);
#100 $finish;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,loop_wave);
end
endmodule
