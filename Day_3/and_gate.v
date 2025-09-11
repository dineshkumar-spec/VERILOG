module and_gate(input i1, i2, i3, output reg out);
   
  always@(i1 or i2 or i3) begin
    out = i1 & i2 & i3;
  end
  
  // or
  always @(*) out = i1 & i2 & i3;
  
endmodule
