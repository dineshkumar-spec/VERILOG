module while_loop_example;
  reg [7:0] data;
  integer shifts;

  initial begin
    data = 8'b10110000;
    shifts = 0;
    while (data != 0) begin
      data = data >> 1;
      shifts = shifts + 1;
    end
    $display("Shifted until zero in %0d steps", shifts);
  end
endmodule

