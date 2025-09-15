module while_count_ones;
  reg [7:0] data;
  integer i, count;

  initial begin
    data = 8'b10101101;   // test data
    count = 0;
    i = 0;

    // while loop from LSB → MSB
    while (i < 8) begin
      if (data[i] == 1'b1)
        count = count + 1;
      i = i + 1;
    end

    $display("Data = %b, Number of 1s = %0d", data, count);
  end
endmodule

