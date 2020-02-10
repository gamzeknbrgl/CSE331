module zero_extend_imm(outp,inp);
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
and o15 (outp[15], inp[15]);
and o16 (outp[16], 1'b0);
and o17 (outp[17], 1'b0);
and o18 (outp[18], 1'b0);
and o19 (outp[19], 1'b0);
and o20 (outp[20], 1'b0);
and o21 (outp[21], 1'b0);
and o22 (outp[22], 1'b0);
and o23 (outp[23], 1'b0);
and o24 (outp[24], 1'b0);
and o25 (outp[25], 1'b0);
and o26 (outp[26], 1'b0);
and o27 (outp[27], 1'b0);
and o28 (outp[28], 1'b0);
and o29 (outp[29], 1'b0);
and o30 (outp[30], 1'b0);
and o31 (outp[31], 1'b0);

 
 endmodule