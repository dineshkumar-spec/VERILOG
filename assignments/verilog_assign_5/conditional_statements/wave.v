//Draw the waveform for the below snippet.
`timescale 1ns/1ps

module tb_clk_rst;
  reg clk;
  reg rst;

  // Clock generation
  initial begin
    #5 clk = 0;                // Initialize clk = 0 at t=5
    forever #5 clk = ~clk;     // Toggle every 5 time units
  end

  // Reset generation
  initial begin
    rst = 1;                   // Assert reset at start
    repeat (3) @(negedge clk); // Wait for 3 negedges of clk
    rst = 0;                   // Deassert reset
  end

  // Monitor values
  initial begin
    $dumpfile("clk_rst.vcd");  // For GTKWave
    $dumpvars(0, tb_clk_rst);
    $monitor("time=%0t | clk=%b | rst=%b", $time, clk, rst);
    #60 $finish;               // Stop simulation after 60 ns
  end

endmodule

