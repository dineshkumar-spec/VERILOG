
//-----------Design code--------
module regfile(
input clk,
input we,
input [2:0]addr,
input [7:0] data_in,
output reg [7:0] data_out);
reg [7:0] regfile [7:0];

always@(posedge clk)begin
if(we)
regfile[addr] <= data_in;
data_out <=regfile[addr];
end
endmodule
//-----------testbench-----------
module tb_regfile;
reg clk;
reg we;
reg [2:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;
integer i;

regfile dut (
.clk(clk),
.we(we),
.addr(addr),
.data_in(data_in),
.data_out(data_out));

//clk generation
initial clk = 0;
always #5 clk = ~clk;

initial begin
we=1;

for(i=0;i<8;i=i+1)begin
addr = i;
data_in = i*10;
#10;
end
we=0;
$display("-------Register File Content--------");
for(i=0;i<8;i=i+1)begin
addr = i;
#10;
$display("reg[%0d]=%0d",i,data_out);
end

#50; $finish;
end
endmodule
