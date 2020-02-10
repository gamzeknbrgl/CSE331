module sign_extend_imm(outp, inp);
input [15:0]inp;
output [31:0]outp;

or o0 (outp[0], inp[0]);
or o1 (outp[1], inp[1]);
or o2 (outp[2], inp[2]);
or o3 (outp[3], inp[3]);
or o4 (outp[4], inp[4]);
or o5 (outp[5], inp[5]);
or o6 (outp[6], inp[6]);
or o7 (outp[7], inp[7]);
or o8 (outp[8], inp[8]);
or o9 (outp[9], inp[9]);
or o10 (outp[10], inp[10]);
or o11 (outp[11], inp[11]);
or o12 (outp[12], inp[12]);
or o13 (outp[13], inp[13]);
or o14 (outp[14], inp[14]);
or o15 (outp[15], inp[15]);
or o16 (outp[16], inp[15]);
or o17 (outp[17], inp[15]);
or o18 (outp[18], inp[15]);
or o19 (outp[19], inp[15]);
or o20 (outp[20], inp[15]);
or o21 (outp[21], inp[15]);
or o22 (outp[22], inp[15]);
or o23 (outp[23], inp[15]);
or o24 (outp[24], inp[15]);
or o25 (outp[25], inp[15]);
or o26 (outp[26], inp[15]);
or o27 (outp[27], inp[15]);
or o28 (outp[28], inp[15]);
or o29 (outp[29], inp[15]);
or o30 (outp[30], inp[15]);
or o31 (outp[31], inp[15]);

 
 endmodule