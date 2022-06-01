module counter(Q, Q_not, clk, reset);

input clk, reset;

wire j1,k1,j2,k2,j3,k3,j4,k4;
wire one, two, three, four;

output [3:0] Q, Q_not;

not(na,Q[3]);
not(nb,Q[2]);
not(nc,Q[1]);
not(nd,Q[0]);


and(j1,Q[2],Q[1],Q[0]);

and(k1,Q[2],Q[1]);


and(j2,Q[1],Q[0]);

and(one,Q[1],Q[0]);
and(two,Q[3],Q[1]);
or(k2,one,two);


and(j3,Q[0],1);

or(three,Q[0],0);
and(four,Q[3],Q[2]);
or(k3,three,four);


or(j4,na,nb,nc);
and(k4,1,1);


jk_flipflop jk1(j1, k1, Q[3], Q_not[3], clk, reset);
jk_flipflop jk2(j2, k2, Q[2], Q_not[2], clk, reset);
jk_flipflop jk3(j3, k3, Q[1], Q_not[1], clk, reset);
jk_flipflop jk4(j4, k4, Q[0], Q_not[0], clk, reset);

endmodule