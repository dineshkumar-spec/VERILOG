module buff_repeat;
reg clk;
reg [7:0]datain;
reg [7:0]buffer[0:15];
integer i;

initial clk=0;
always #5 clk = ~clk;

initial begin
datain=8'h0;
i=0;

repeat (16) begin
@(posedge clk);
buffer[i]=datain;
$display("buffer[%0d]=%0h",i,buffer[i]);
datain=datain+1;
i=i+1;
end
$finish;
end
endmodule

