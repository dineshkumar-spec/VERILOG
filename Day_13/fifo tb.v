module fifo_tb;
reg clk,reset,wr_en,rd_en;
reg [7:0]data_in;
wire [7:0]data_out;
wire full,empty;

fifo dut(clk,reset,wr_en,rd_en,data_in,data_out,full,empty);
  initial clk=0;
  always #5 clk = ~clk;
initial begin
$dumpfile("wave.vcd");$dumpvars;
  $monitor("time=%0t|clk=%0b|wr_en=%0b|rd_en=%0b|data_in=%0b|data_out=%0b|full=%0b|empty=%0b",$time,clk,wr_en,rd_en,data_in,data_out,full,empty);
reset=0;
#10;
wr_en=0;
rd_en=0;
data_in=0;
#10 reset=1;
 //write enable
wr_en=1;
data_in=8'd15;
#10;
data_in=8'd98;
#10;
data_in=8'd45;
#10;
data_in=8'd23;
data_in=8'd15;
#10;
data_in=8'd98;
#10;
data_in=8'd45;
#10;
data_in=8'd23;
#10;
data_in=8'd67;
wr_en=0;
#10;
  //reset enable
rd_en=1;
#40;
rd_en=0;

 #10;$finish;
end
endmodule
/*time=0|clk=0|wr_en=x|rd_en=x|data_in=xxxxxxxx|data_out=xxxxxxxx|full=x|empty=x
time=5|clk=1|wr_en=x|rd_en=x|data_in=xxxxxxxx|data_out=0|full=0|empty=1
time=10|clk=0|wr_en=0|rd_en=0|data_in=0|data_out=0|full=0|empty=1
time=15|clk=1|wr_en=0|rd_en=0|data_in=0|data_out=0|full=0|empty=1
time=20|clk=0|wr_en=1|rd_en=0|data_in=1111|data_out=0|full=0|empty=1
time=25|clk=1|wr_en=1|rd_en=0|data_in=1111|data_out=0|full=0|empty=0
time=30|clk=0|wr_en=1|rd_en=0|data_in=1100010|data_out=0|full=0|empty=0
time=35|clk=1|wr_en=1|rd_en=0|data_in=1100010|data_out=0|full=0|empty=0
time=40|clk=0|wr_en=1|rd_en=0|data_in=101101|data_out=0|full=0|empty=0
time=45|clk=1|wr_en=1|rd_en=0|data_in=101101|data_out=0|full=0|empty=0
time=50|clk=0|wr_en=1|rd_en=0|data_in=1111|data_out=0|full=0|empty=0
time=55|clk=1|wr_en=1|rd_en=0|data_in=1111|data_out=0|full=0|empty=0
time=60|clk=0|wr_en=1|rd_en=0|data_in=1100010|data_out=0|full=0|empty=0
time=65|clk=1|wr_en=1|rd_en=0|data_in=1100010|data_out=0|full=0|empty=0
time=70|clk=0|wr_en=1|rd_en=0|data_in=101101|data_out=0|full=0|empty=0
time=75|clk=1|wr_en=1|rd_en=0|data_in=101101|data_out=0|full=0|empty=0
time=80|clk=0|wr_en=1|rd_en=0|data_in=10111|data_out=0|full=0|empty=0
time=85|clk=1|wr_en=1|rd_en=0|data_in=10111|data_out=0|full=1|empty=0
time=90|clk=0|wr_en=0|rd_en=0|data_in=1000011|data_out=0|full=1|empty=0
time=95|clk=1|wr_en=0|rd_en=0|data_in=1000011|data_out=0|full=1|empty=0
time=100|clk=0|wr_en=0|rd_en=1|data_in=1000011|data_out=0|full=1|empty=0
time=105|clk=1|wr_en=0|rd_en=1|data_in=1000011|data_out=1111|full=0|empty=0
time=110|clk=0|wr_en=0|rd_en=1|data_in=1000011|data_out=1111|full=0|empty=0
time=115|clk=1|wr_en=0|rd_en=1|data_in=1000011|data_out=1100010|full=0|empty=0
time=120|clk=0|wr_en=0|rd_en=1|data_in=1000011|data_out=1100010|full=0|empty=0
time=125|clk=1|wr_en=0|rd_en=1|data_in=1000011|data_out=101101|full=0|empty=0
time=130|clk=0|wr_en=0|rd_en=1|data_in=1000011|data_out=101101|full=0|empty=0
time=135|clk=1|wr_en=0|rd_en=1|data_in=1000011|data_out=1111|full=0|empty=0
time=140|clk=0|wr_en=0|rd_en=0|data_in=1000011|data_out=1111|full=0|empty=0
time=145|clk=1|wr_en=0|rd_en=0|data_in=1000011|data_out=1111|full=0|empty=0
fifo_tb.v:45: $finish called at 150 (1s)
time=150|clk=0|wr_en=0|rd_en=0|data_in=1000011|data_out=1111|full=0|empty=0*/
