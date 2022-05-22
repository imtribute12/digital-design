module bcdid(A, B, c_in, s_id, c_out);

input [3:0] A;
input [3:0] B;
input c_in;

output [3:0] s_id;
output c_out;

wire [3:0] one;
wire two, three, four;

four_bit_adder add(A, B, c_in, one, two);

and(three,one[2],one[1],one[3]);
or(c_out,two,three);


four_bit_adder add1(one, {1'b0,1'b0,c_out,1'b0}, 1'b0, s_id, four);

endmodule