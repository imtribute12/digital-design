module shifter(in, out, shift);

input [7:0]in;

output [7:0]out;

input [1:0]shift;

mux4x1 m1({in[3],in[2],in[1],in[0]},shift,out[0]);
mux4x1 m2({in[4],in[3],in[2],in[1]},shift,out[1]);
mux4x1 m3({in[5],in[4],in[3],in[2]},shift,out[2]);
mux4x1 m4({in[6],in[5],in[4],in[3]},shift,out[3]);
mux4x1 m5({in[7],in[6],in[5],in[4]},shift,out[4]);
mux4x1 m6({in[0],in[7],in[6],in[5]},shift,out[5]);
mux4x1 m7({in[1],in[0],in[7],in[6]},shift,out[6]);
mux4x1 m8({in[2],in[1],in[0],in[7]},shift,out[7]);

endmodule