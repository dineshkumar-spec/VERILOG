//behavioural level
module t(input T,en,output reg q=0,output qbar);
assign qbar=~q;
always@(*)begin
    if(en)begin
        if(T)begin
             q=~q;
     end else begin
        q=q;
        end
    end
end
endmodule

//tb
module tb_t;
reg T,en;
wire q,qbar;
t dut (.T(T),.en(en),.q(q), .qbar(qbar));
initial begin
$monitor("time=%0t|T=%b|en=%b|q=%b|qbar=%b",$time,T,en,q,qbar);
en=1;T=1;#5;
T=0;#5;
T=1;#5;
T=1;#5;
en=0;T=0;#5;
$finish;
end
endmodule
