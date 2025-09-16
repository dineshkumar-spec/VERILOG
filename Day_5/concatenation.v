module concatenation;
reg a,b;
initial begin
a=1'b1;b=1'b0;
$display("concatenation{a,b}=%b",{a,b});
end
endmodule
