/*Write a function to find the maximum of two 8-bit numbers.*/
module maximum;
  
  function [7:0] max(input [7:0]a,input[7:0]b);
    begin
      if(a>b)
        $display("a is greater");
      else
        $display("b is greater");
    end
  endfunction
  initial begin
    max(45,200);
    max(100,50);
    max(1,2);
  end
endmodule
