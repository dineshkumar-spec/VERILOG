// Half Adder Module
module half_adder(input a, input b, output sum, output cout);
  assign sum = a ^ b;
  assign cout = a & b;  
endmodule

// Testbench with Mismatch Checking
module tb_half_adder;
  reg a, b;
  wire sum, cout;
  reg exp_sum, exp_cout;  

  half_adder uut (.a(a), .b(b), .sum(sum), .cout(cout));

  integer i;
  initial begin
    for(i=0; i<4; i=i+1) begin
      {a,b} = i; #5;

      // Calculate expected outputs
      exp_sum = a ^ b;
      exp_cout = a & b;

      // Compare actual vs expected
      if (sum !== exp_sum || cout !== exp_cout)
        $display("Mismatch at %b%b: Expected sum=%b cout=%b, Got sum=%b cout=%b",
                  a, b, exp_sum, exp_cout, sum, cout);
      else
        $display("Match at %b%b: sum=%b cout=%b", a, b, sum, cout);
    end
    $finish;
  end
endmodule
