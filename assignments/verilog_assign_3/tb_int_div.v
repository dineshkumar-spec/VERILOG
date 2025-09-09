module tb_int_div;
  reg  [7:0] u1, u2;
  reg  signed [7:0] s1, s2;
  wire [7:0] u_div, u_mod;
  wire signed [7:0] s_div, s_mod;

  // Instantiate DUT
  int_div dut(
    .u1(u1), .u2(u2), .s1(s1), .s2(s2),
    .u_div(u_div), .u_mod(u_mod),
    .s_div(s_div), .s_mod(s_mod)
  );

  initial begin
    $dumpfile("int_div.vcd");
    $dumpvars(0, tb_int_div);

    // Unsigned test
    u1 = 10; u2 = 4;
    $display("Unsigned: %0d / %0d = %0d remainder %0d", u1, u2, u_div, u_mod);

    // Signed positive test
    s1 = 10; s2 = 4;
    #2 $display("Signed +ve: %0d / %0d = %0d remainder %0d", s1, s2, s_div, s_mod);

    // Signed negative dividend
    s1 = -10; s2 = 4;
    #2 $display("Signed -ve dividend: %0d / %0d = %0d remainder %0d", s1, s2, s_div, s_mod);

    // Signed negative divisor
    s1 = 10; s2 = -4;
    #2 $display("Signed -ve divisor: %0d / %0d = %0d remainder %0d", s1, s2, s_div, s_mod);

    // Both negative
    s1 = -10; s2 = -4;
    #2 $display("Signed both -ve: %0d / %0d = %0d remainder %0d", s1, s2, s_div, s_mod);

    $finish;
  end
endmodule

