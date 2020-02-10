module myXor(out, a, b);
input a,b;
output out;
wire anot, bnot, t1,t2;
not nota(anot,a);
not notb(bnot,b);
and and1(t1,anot,b);
and and2(t2,bnot,a);
or or1(out,t1,t2);
endmodule