module myXor_32bit(out,a,b);
input [31:0] a;
input [31:0] b;
output [31:0] out;

myXor O0(out[0],a[0],b[0]);
myXor O1(out[1],a[1],b[1]);
myXor O2(out[2],a[2],b[2]);
myXor O3(out[3],a[3],b[3]);
myXor O4(out[4],a[4],b[4]);
myXor O5(out[5],a[5],b[5]);
myXor O6(out[6],a[6],b[6]);
myXor O7(out[7],a[7],b[7]);
myXor O8(out[8],a[8],b[8]);
myXor O9(out[9],a[9],b[9]);
myXor O10(out[10],a[10],b[10]);
myXor O11(out[11],a[11],b[11]);
myXor O12(out[12],a[12],b[12]);
myXor O13(out[13],a[13],b[13]);
myXor O14(out[14],a[14],b[14]);
myXor O15(out[15],a[15],b[15]);
myXor O16(out[16],a[16],b[16]);
myXor O17(out[17],a[17],b[17]);
myXor O18(out[18],a[18],b[18]);
myXor O19(out[19],a[19],b[19]);
myXor O20(out[20],a[20],b[20]);
myXor O21(out[21],a[21],b[21]);
myXor O22(out[22],a[22],b[22]);
myXor O23(out[23],a[23],b[23]);
myXor O24(out[24],a[24],b[24]);
myXor O25(out[25],a[25],b[25]);
myXor O26(out[26],a[26],b[26]);
myXor O27(out[27],a[27],b[27]);
myXor O28(out[28],a[28],b[28]);
myXor O29(out[29],a[29],b[29]);
myXor O30(out[30],a[30],b[30]);
myXor O31(out[31],a[31],b[31]);

endmodule
