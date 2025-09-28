always@(posedge clk or posedge reset)begin
      if(reset)
      po <= 4'b0000;
      else
      po<={po[2:0],si};
end
endmodule

module tb_sipo;
reg si;
reg clk;
reg reset;
wire[3:0]po;

sipo dut (.si(si), .clk(clk), .reset(reset), .po(po));

always #2 clk = ~clk;
initial begin
clk=0;
reset=1;
si=0;
#2;reset=0;
si=1;#5;
si=1;#5;
si=1;#5;
si=1;#5;
#120 $finish;
end
initial begin
$monitor("time=%0t|po=%0b",$time,po);
end
endmodule
