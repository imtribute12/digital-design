module sop_genisletilmis(x,a,b,c,d);

input a,b,c,d;
wire one,two,three,four,five,six,seven,eight,an,bn,cn,dn;
output x;

not (an,a);
not (bn,b);
not (cn,c);
not (dn,d);

and (one,a , b, c, dn);
and (two,an , b, c, dn);
and (three,an , b, c, d);
and (four,a , b, c, d);
and (five,a , bn, c, dn);
and (six,an , b, cn, d);
and (seven,an , b, cn, dn);
and (eight,an , bn, c, dn);

or (x,one,two,three,four,five,six,seven,eight);

endmodule