//Write a function to increment a 4-bit input by 1.
module func;
  function [7:0] out(input[3:0]in);
    begin
      out=in++;
    end
  endfunction
  initial begin
    out(9);
  end
endmodule
