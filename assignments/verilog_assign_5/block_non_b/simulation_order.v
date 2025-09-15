module simulation_order;
reg a,b;
initial begin
a=0; b=0;
a=1;
b<=a;
a=0;
#1 $display("a=%b b=%b",a,b);
end 
endmodule
