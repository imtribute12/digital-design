module decoder3x8(i, en, d);

input [2:0] i;
input en;

wire i0, i1, i2;

output [7:0]d;

not(i0, i[0]);
not(i1, i[1]);
not(i2, i[2]);

and(d[0],en,i0,i1,i2);
and(d[1],en,i[0],i1,i2);
and(d[2],en,i0,i[1],i2);
and(d[3],en,i[0],i[1],i2);
and(d[4],en,i0,i1,i[2]);
and(d[5],en,i[0],i1,i[2]);
and(d[6],en,i0,i[1],i[2]);
and(d[7],en,i[0],i[1],i[2]);

endmodule