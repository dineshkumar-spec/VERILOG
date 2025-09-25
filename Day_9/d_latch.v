//gate level
module d(input d,dbar,s,r,en,output q,qbar);
and a1(r,dbar,en);
and a2(s,d,en);
nor n1(q,r,qbar);
nor n2(qbar,s,q);
endmodule
//dataflow level
module d(input d,dbar,s,r,en,output q,qbar);
assign r=(dbar&en);
assign s=(d&en);
assign q=~(r|qbar);
assign qbar=~(s|q);
endmodule
//behavioural level
module d(input d,en,output reg q, output qbar);
assign qbar=~q;
always@(*)begin
        if(en)
        q=d;
end
endmodule

//tb
module tb_d;
reg d,dbar,s,r,en;
wire q,qbar;
d dut (.d(d), .dbar(dbar), .en(en), .s(s), .r(r), .q(q), .qbar(qbar));
initial begin
$monitor("time=%0t|d=%b|dbar=%b|en=%b|s=%b|r=%b|q=%b|qbar=%b",$time,d,dbar,en,s,r,q,qbar);
d=0;dbar=1;en=0;s=0;r=0;#5;
d=1;dbar=0;en=0;s=0;r=0;#5;
d=0;dbar=1;en=1;s=0;r=1;#5;
d=1;dbar=0;en=1;s=1;r=0;#5;
$finish;
end
endmodule
