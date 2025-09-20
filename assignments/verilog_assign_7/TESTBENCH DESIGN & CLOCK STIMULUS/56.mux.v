module mux2to1(in1, in2, sel, y);
    input in1, in2, sel;
    output y;

    assign y = (sel) ? in1 : in2;
endmodule

// TESTBENCH
module tb_mux2to1;
    reg in1, in2, sel;
    wire y;
    mux2to1 uut (.in1(in1), .in2(in2), .sel(sel), .y(y));
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, tb_mux2to1);
        $monitor("time=%0t | in1=%b in2=%b sel=%b -> y=%b",
                  $time, in1, in2, sel, y);
        // Apply stimulus
        in1=0; in2=1; sel=0; #5;
        in1=0; in2=1; sel=1; #5;
        in1=1; in2=0; sel=0; #5;
        in1=1; in2=0; sel=1; #5;
        in1=1; in2=1; sel=0; #5;
        in1=1; in2=1; sel=1; #5;
        $finish;
    end
endmodule
