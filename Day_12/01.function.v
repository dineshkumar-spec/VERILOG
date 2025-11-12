module func;
reg [3:0]a,b;
reg [7:0]result;
  function [7:0] sum(input[3:0]a,input[3:0]b);
begin
sum=a+b;
end
endfunction

initial begin
a=4'd4;b=4'd5;
  $display(sum(a,b));
end
endmodule
