module half_adder(a,b,s,c_out);

input a, b;
output s, c_out;

xor(s, a, b);

and(c_out, a, b);

endmodule