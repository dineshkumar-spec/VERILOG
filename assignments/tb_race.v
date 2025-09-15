module tb_race;
    reg clk, d;
    wire x,y;

    race dut (.clk(clk), .d(d), .x(x), .y(y));
  
    initial clk=0;
    always #5 clk = ~clk;
 
    initial begin
            $dumpfile("race.vcd");
	    $dumpvars;
     	    $monitor("t=%0t | d=%b | Race: x=%b y=%b ",$time, d, x, y);

        d=0; #10;
        d=1; #10;
        d=0; #10;
        d=1; #10;
        #10 $finish;
    end
endmodule

