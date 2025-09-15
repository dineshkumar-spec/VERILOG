module tb_casez;
  reg [1:0] data;
  wire [3:0] out;

  casez_example dut(.data(data), .out(out));

  initial begin
    $monitor("time=%0t | data=%b | out=%b", $time, data, out);

    data = 2'bx1; #5;   // expect 1000 (matches 2'bx1)
    data = 2'b0x; #5;   // expect 0001 (matches 2'b0z)
    data = 2'bx0; #5;   // expect 0010 (matches 2'bz0)
    data = 2'bz1; #5;   // expect 1111 (default, no match)
    data = 2'b0z; #5;   // expect 0001 (matches 2'b0z)
    data = 2'bz0; #5;   // expect 0010 (matches 2'bz0)
    data = 2'b1z; #5;   // expect 0011 (matches 2'b1z)

    $finish;
  end
endmodule

