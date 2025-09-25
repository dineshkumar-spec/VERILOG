//gate level
module sr(input s,r, output q,qbar);
nor n1(q,r,qbar);
nor n2(qbar,s,q);
endmodule

//dataflow level
module sr(input s,r, output q,qbar);
assign q=~(r|qbar);
assign qbar=~(s|q);
endmodule

//behavioural level
module sr(input s,r, output reg q,qbar);
always@(*)begin
        if(s!=r)begin
        q=s;
        qbar=r;
        end

end
endmodule

//tb
module tb_sr;
reg s,r;
wire q,qbar;
sr dut (.s(s), .r(r), .q(q), .qbar(qbar));
initial begin
$monitor("time=%0t|s=%b|r=%b|q=%b|qbar=%b",$time,s,r,q,qbar);
s=0;r=0;#5;
s=0;r=1;#5;
s=1;r=0;#5;
s=1;r=1;#5;
$finish;
end
endmodule
~         
