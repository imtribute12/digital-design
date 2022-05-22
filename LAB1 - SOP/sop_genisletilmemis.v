module sop_genisletilmemis(x,a,b,c,d);

input a,b,c,d;
wire one,two,three,an,dn;
output x;
 
not (an,a);
not (dn,d);
 
 
and (one,an , b);
and (two,a ,b, c);
and (three, c, dn);
 
or (x,one,two,three);
 
endmodule