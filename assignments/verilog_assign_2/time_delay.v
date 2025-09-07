module time_delay;
time t;
initial begin
t = $time;
$display("Time = %t",$time, t);
#5;
t = $time;
$display("Time = %t",$time, t);
#10;
t = $time;
$display("Time = %t",$time, t);
end
endmodule
