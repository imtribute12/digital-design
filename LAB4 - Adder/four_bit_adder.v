module four_bit_adder(A, B, c_in, s_four, c_out);

input [3:0] A;
input [3:0] B;
input c_in;

wire one, two, three;

output [3:0] s_four;
output c_out;

full_adder f_one(A[0], B[0], c_in, s_four[0], one);
full_adder f_two(A[1], B[1],one, s_four[1], two);
full_adder f_three(A[2], B[2],two, s_four[2], three);
full_adder f_four(A[3], B[3],three, s_four[3], c_out);

endmodule