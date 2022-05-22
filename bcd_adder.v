module bcd_adder(A, B, c_in, s_bcd, c_out);

input [3:0] A;
input [3:0] B;
input c_in;

output [3:0] s_bcd;
output c_out;

wire [3:0] one, two;
wire three, four, five, six;

four_bit_adder add(A, B, c_in, one, three);

and (four,one[3],one[2]);
and (five,one[3],one[1]);
or (c_out,three,four,five);

assign two = {1'b0,c_out,c_out,1'b0};

four_bit_adder add1(one, two, 0, s_bcd, six);

endmodule