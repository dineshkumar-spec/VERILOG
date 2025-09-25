//behavioural level
module jk(input j,k,en,output reg q,output qbar);
assign qbar=~q;
always@(*)begin
        if(en)begin
        case({j,k})
                2'b00:q=q;
                2'b01:q=0;
                2'b10:q=1;
                2'b11:q=~q;
        endcase
end
end
endmodule

//tb
module tb_jk;
reg j,k,en;
wire q,qbar;
jk dut (.j(j),.k(k),.en(en),.q(q), .qbar(qbar));
initial begin
$monitor("time=%0t|j=%b|k=%b|en=%b|q=%b|qbar=%b",$time,j,k,en,q,qbar);
en=1;j=0;k=0;#5;
j=0;k=1;#5;
j=1;k=0;#5;
j=1;k=1;#5;
en=0;j=1;k=0;#5;
$finish;
end
endmodule
