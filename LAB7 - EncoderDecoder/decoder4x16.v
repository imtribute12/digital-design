module decoder4x16(a, result);

input [3:0] a;

wire an;

output [15:0] result;

not(an, a[3]);

decoder3x8 decoder3x8_2(a[2:0], a[3], result[15:8]);
decoder3x8 decoder3x8_1(a[2:0], an, result[7:0]);

endmodule