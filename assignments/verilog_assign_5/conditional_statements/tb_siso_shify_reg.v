module tb_siso;

reg clk, rst, si;
wire so;

siso_shift_reg dut (.clk(clk), .rst(rst), .si(si), .so(so));

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns period, 50% duty cycle
end

initial begin
    $monitor("Time=%0t | si=%b | so=%b", $time, si, so);

    rst = 1; si = 0; #10;  // Reset
    rst = 0;

    // Shift sequence
    si = 1; #10;  
    si = 0; #10;  
    si = 1; #10;  
    si = 1; #10;  
    si = 0; #10;  
    $finish;
end

endmodule

