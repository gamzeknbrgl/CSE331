module MSBALU_1Bit(outp,cout, v,set, aluop0, aluop1, aluop2, ai,bi,lessi,cin);
input aluop0, aluop1, aluop2, ai,bi,lessi, cin;
output outp, cout, v, set;
wire bixoraluop2, and1, or1, not1, and2, or2, and3, and3not, and4,set;
myXor xr(bixoraluop2, bi, aluop2);
and a1(and1,bixoraluop2,ai);
or o1(or1, bixoraluop2, ai);
not n1(not1, and1);
and a2(and2, not1, or1);
or o2(or2, cin, and2);
and a3(and3, cin, and2);
not n2(and3not, and3);
and a4(and4, and3not, or2);
or o3(cout, and1, and3);
myXor xr2(v, cin, cout);
myXor xr3(set, v,and4);
mux4x1 res(outp,and1,and4,or1,lessi,aluop0,aluop1);
endmodule