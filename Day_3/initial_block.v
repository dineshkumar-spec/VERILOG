module initial_block();
reg [1:0]a,b;
//first initial block
initial begin
 a=2'b10;
 #20 b=2'b11;
end 
//second initial block
#10 a=2'b11;
#60 b=2'b10;
end 
initial begin
$monitor("t=%0t a=%d b=%d",$time,a,b);
#60 $finish;
end
endmodule
