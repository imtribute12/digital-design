module mux4x1(in,s,out);

input [3:0]in;
input [1:0]s;

output out;
wire [1:0]w;

mux2x1 mux2x1a(in[0],in[1],s[0],w[0]);
mux2x1 mux2x1b(in[2],in[3],s[0],w[1]);
mux2x1 mux2x1c(w[0],w[1],s[1],out);

endmodule