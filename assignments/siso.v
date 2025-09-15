module siso (
  input  wire clk,
  input  wire rst,   // synchronous active-high reset
  input  wire sin,   // serial-in (rightmost input)
  output reg  sout   // serial-out (rightmost output)
);

  // 3 one-bit storage elements (no vectors, no shift operators)
  reg b0;
  reg b1;
  reg b2;

  // All updates use non-blocking assignments (<=) only
  always @(posedge clk) begin
    if (rst) begin
      b0   <= 1'b0;
      b1   <= 1'b0;
      b2   <= 1'b0;
      sout <= 1'b0;
    end else begin
      b0   <= sin;  // new serial bit enters b0 (right-most stage)
      b1   <= b0;   // previous b0 moves into b1
      b2   <= b1;   // previous b1 moves into b2
      sout <= b2;   // output takes previous b2 (SISO right-shift)
    end
  end
endmodule

