module mux2x1(in_0, in_1, s, out);

input in_0, in_1, s;

output out;

wire not_s, state_0, state_1;

not(not_s, s);

and(state_0, in_0, not_s);
and(state_1, in_1, s);

or(out, state_0, state_1);

endmodule