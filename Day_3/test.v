module test;
reg d;
reg n;

initial 
d=1;

initial begin
#5 d=0;
   n=1;
   $display("d=%h n=%h ",d,n);
end
endmodule
