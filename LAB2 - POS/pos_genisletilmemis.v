module pos_genisletilmemis(x,a,b,c,d);

input a,b,c,d;
wire one,two,three,an,bn,cn,dn;
output x;

not (an,a);
not (bn,b);
not (cn,c);
not (dn,d);

or(one,a,b);
or(two,bn,c,d);
or(three,an,d);

and(x,one,two,three);

endmodule