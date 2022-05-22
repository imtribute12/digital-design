module full_adder(a,b,c_in,s,c_out);

input a, b, c_in;

wire one, two, three;

output s, c_out;

half_adder h_one(a, b, one, two);
half_adder h_two(one, c_in, s, three);

or(c_out, two, three);

endmodule