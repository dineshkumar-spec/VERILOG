module con_update;
reg [3:0] a,b;
initial begin 
a=4'd5;
b=4'd8;
a<=b;//schedule a=8
b<=a;//schedule b=5
#1;
$display("time=%0t|non blocking : a=%0d|b=%0d",$time,a,b);
end
endmodule
