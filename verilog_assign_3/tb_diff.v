module tb_diff;
reg [3:0] a,b;
wire eq,ca;
diff dut(.a(a), .b(b), .eq(eq), .ca(ca));
initial begin
$monitor("time=%0t a=%b b=%b a==b=%b a===b=%b ",$time ,a,b, eq,ca);
a = 4'b1001; b = 4'b0011; #5;
a = 4'b010x; b = 4'b01x0; #5; 
a = 4'bz101; b = 4'bz101; #5;
a = 4'b0100; b = 4'b1z00; #5;
$finish;
end
endmodule
