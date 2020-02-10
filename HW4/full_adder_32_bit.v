module full_adder_32_bit(sum,cout,a,b,cin);
input [31:0] a;
input [31:0] b;
input cin;
output [31:0] sum;
output cout;
wire b0,b1,b2,b3,b4,b5,b6,b7,b8, b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24, b25,b26,b27,b28,b29,b30,b31;
wire cin1,cin2,cin3,cin4,cin5,cin6,cin7,cin8,cin9,cin10,cin11,cin12,cin13,cin14,cin15,cin16,cin17,cin18,cin19,cin20,cin21,cin22,cin23,cin24,cin25,cin26,cin27,cin28,cin29,cin30,cin31;
myXor x1(b0,b[0],cin);
myXor x2(b1,b[1],cin);
myXor x3(b2,b[2],cin);
myXor xx4(b3,b[3],cin);
myXor x5(b4,b[4],cin);
myXor x6(b5,b[5],cin);
myXor x7(b6,b[6],cin);
myXor x8(b7,b[7],cin);
myXor x9(b8,b[8],cin);
myXor x10(b9,b[9],cin);
myXor x11(b10,b[10],cin);
myXor x12(b11,b[11],cin);
myXor x13(b12,b[12],cin);
myXor x14(b13,b[13],cin);
myXor x15(b14,b[14],cin);
myXor x16(b15,b[15],cin);
myXor x17(b16,b[16],cin);
myXor x18(b17,b[17],cin);
myXor x19(b18,b[18],cin);
myXor x20(b19,b[19],cin);
myXor x21(b20,b[20],cin);
myXor x22(b21,b[21],cin);
myXor x23(b22,b[22],cin);
myXor x24(b23,b[23],cin);
myXor x25(b24,b[24],cin);
myXor x26(b25,b[25],cin);
myXor x27(b26,b[26],cin);
myXor x28(b27,b[27],cin);
myXor x29(b28,b[28],cin);
myXor x30(b29,b[29],cin);
myXor x31(b30,b[30],cin);
myXor x32(b31,b[31],cin);

full_adder_one_bit res0(sum[0],cin1,a[0],b0,cin);
full_adder_one_bit res1(sum[1],cin2,a[1],b1,cin1);
full_adder_one_bit res2(sum[2],cin3,a[2],b2,cin2);
full_adder_one_bit res3(sum[3],cin4,a[3],b3,cin3);
full_adder_one_bit res4(sum[4],cin5,a[4],b4,cin4);
full_adder_one_bit res5(sum[5],cin6,a[5],b5,cin5);
full_adder_one_bit res6(sum[6],cin7,a[6],b6,cin6);
full_adder_one_bit res7(sum[7],cin8,a[7],b7,cin7);
full_adder_one_bit res8(sum[8],cin9,a[8],b8,cin8);
full_adder_one_bit res9(sum[9],cin10,a[9],b9,cin9);
full_adder_one_bit res10(sum[10],cin11,a[10],b10,cin10);
full_adder_one_bit res11(sum[11],cin12,a[11],b11,cin11);
full_adder_one_bit res12(sum[12],cin13,a[12],b12,cin12);
full_adder_one_bit res13(sum[13],cin14,a[13],b13,cin13);
full_adder_one_bit res14(sum[14],cin15,a[14],b14,cin14);
full_adder_one_bit res15(sum[15],cin16,a[15],b15,cin15);
full_adder_one_bit res16(sum[16],cin17,a[16],b16,cin16);
full_adder_one_bit res17(sum[17],cin18,a[17],b17,cin17);
full_adder_one_bit res18(sum[18],cin19,a[18],b18,cin18);
full_adder_one_bit res19(sum[19],cin20,a[19],b19,cin19);
full_adder_one_bit res20(sum[20],cin21,a[20],b20,cin20);
full_adder_one_bit res21(sum[21],cin22,a[21],b21,cin21);
full_adder_one_bit res22(sum[22],cin23,a[22],b22,cin22);
full_adder_one_bit res23(sum[23],cin24,a[23],b23,cin23);
full_adder_one_bit res24(sum[24],cin25,a[24],b24,cin24);
full_adder_one_bit res25(sum[25],cin26,a[25],b25,cin25);
full_adder_one_bit res26(sum[26],cin27,a[26],b26,cin26);
full_adder_one_bit res27(sum[27],cin28,a[27],b27,cin27);
full_adder_one_bit res28(sum[28],cin29,a[28],b28,cin28);
full_adder_one_bit res29(sum[29],cin30,a[29],b29,cin29);
full_adder_one_bit res30(sum[30],cin31,a[30],b30,cin30);
full_adder_one_bit res31(sum[31],cout,a[31],b31,cin31);

endmodule




