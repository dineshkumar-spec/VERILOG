module tb;
  reg i1;
  reg [3:0] i2;
  
  initial begin
    #5;
    i1 = 1;
    i2 = 4'h8;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    #5 i1 = 0;
    i2 = 4'h2;
    $display("i1 = %0h, i2 = %0h", i1, i2);
  end
  
  initial
    #6 $finish;
  
endmodule
