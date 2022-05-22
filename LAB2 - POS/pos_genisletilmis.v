module pos_genisletilmis(x,a,b,c,d);

input a,b,c,d;
wire one,two,three,four,five,six,seven,eight,nine,an,bn,cn,dn;
output x;

not (an,a);
not (bn,b);
not (cn,c);
not (dn,d);

or(one,a,b,c,d);
or(two,a,b,c,dn);
or(three,a,b,cn,d);
or(four,a,b,cn,dn);
or(five,a,bn,c,d);
or(six,an,bn,c,d);
or(seven,an,b,c,d);
or(eight,an,b,cn,d);
or(nine,an,bn,cn,d);
and(x,one,two,three,four,five,six,seven,eight,nine);

endmodule