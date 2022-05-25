module sevensegmenter(in, a, ,b ,c, d, e, f, g, outRange);

input [3:0] in;
output outRange, a, b ,c, d, e, f, g;

wire [15:0] d_out;
wire one, two;

decoder4x16 decoder(in, d_out);

or(a, d_out[0], d_out[2], d_out[3], d_out[5], d_out[6], d_out[7], d_out[8], d_out[9]);
or(b, d_out[0], d_out[1], d_out[2], d_out[3], d_out[4], d_out[7], d_out[8], d_out[9]);
or(c, d_out[0], d_out[1], d_out[3], d_out[4], d_out[5], d_out[6], d_out[7], d_out[8], d_out[9]);
or(d, d_out[0], d_out[2], d_out[3], d_out[5], d_out[6], d_out[8], d_out[9]);
or(e, d_out[0], d_out[2], d_out[6], d_out[8]);
or(f, d_out[0], d_out[4], d_out[5], d_out[6], d_out[8], d_out[9]);
or(g, d_out[2], d_out[3], d_out[4], d_out[5], d_out[6], d_out[8], d_out[9]);


and(one,in[3],in[1]);
and(two,in[3],in[2]);
or(outRange,one,two);

endmodule