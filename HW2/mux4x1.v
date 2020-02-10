module mux4x1(out,i0,i1,i2,i3,s1,s0);
input i0, i1, i2, i3, s1, s0;
output out;
wire nots1, nots0, j0, j1, j2, j3;
not s0n (nots0, s0);
not s1n (nots1, s1);
and a1(j0, i0, nots1, nots0);
and a2(j1, i1, nots1, s0);
and a3(j2, i2, s1, nots0);
and a4(j3, i3, s1, s0);
or  o1(out, j0,j1,j2,j3);
endmodule
