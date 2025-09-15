module casez_example(
  input  [1:0] data,
  output reg [3:0] out
);

  always @(*) begin
    casez (data)
      2'b0z: out = 4'b0001;   // Matches 00 or 01
      2'bz0: out = 4'b0010;   // Matches 00 or 10
      2'b1z: out = 4'b0011;   // Matches 10 or 11
      2'bxz: out = 4'b0100;   // Matches x0 or x1
      2'b0x: out = 4'b0101;   // Matches 00 or 01 (if x treated literally)
      2'bx0: out = 4'b0110;   // Matches x0
      2'b1x: out = 4'b0111;   // Matches 10 or 11 (if x treated literally)
      2'bx1: out = 4'b1000;   // Matches x1
      default: out = 4'b1111; // Invalid
    endcase
  end

endmodule

