//Create a function that implements a multiplexer (selects 1 of 4 inputs).
module mux;
reg [3:0] d;
reg [1:0] sel;
reg y;

function mux4;
input [3:0] in;
input [1:0] s;
begin
case(s)
2'b00:mux4 = in[0];
2'b01:mux4 = in[1];
2'b10:mux4 = in[2];
2'b11:mux4 = in[3];
endcase
end
endfunction

initial begin
d = 4'b1010;
sel=2'b00;y=mux4(d,sel);$display("d=%b|sel=%b|y=%b",d,sel,y);
sel=2'b01;y=mux4(d,sel);$display("d=%b|sel=%b|y=%b",d,sel,y);
sel=2'b10;y=mux4(d,sel);$display("d=%b|sel=%b|y=%b",d,sel,y);
sel=2'b11;y=mux4(d,sel);$display("d=%b|sel=%b|y=%b",d,sel,y);
end
endmodule
