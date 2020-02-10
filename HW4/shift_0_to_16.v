module shift_0_to_16(out,a,b);
input [31:0] a;
input [31:0] b;
output [31:0] out;

mux_2x1 m0(out[0],a[0],a[16],b[4]);
mux_2x1 m1(out[1],a[1],a[17],b[4]);
mux_2x1 m2(out[2],a[2],a[18],b[4]);
mux_2x1 m3(out[3],a[3],a[19],b[4]);
mux_2x1 m4(out[4],a[4],a[20],b[4]);
mux_2x1 m5(out[5],a[5],a[21],b[4]);
mux_2x1 m6(out[6],a[6],a[22],b[4]);
mux_2x1 m7(out[7],a[7],a[23],b[4]);
mux_2x1 m8(out[8],a[8],a[24],b[4]);
mux_2x1 m9(out[9],a[9],a[25],b[4]);
mux_2x1 m10(out[10],a[10],a[26],b[4]);
mux_2x1 m11(out[11],a[11],a[27],b[4]);
mux_2x1 m12(out[12],a[12],a[28],b[4]);
mux_2x1 m13(out[13],a[13],a[29],b[4]);
mux_2x1 m14(out[14],a[14],a[30],b[4]);
mux_2x1 m15(out[15],a[15],1'b0,b[4]);
mux_2x1 m16(out[16],a[16],1'b0,b[4]);
mux_2x1 m17(out[17],a[17],1'b0,b[4]);
mux_2x1 m18(out[18],a[18],1'b0,b[4]);
mux_2x1 m19(out[19],a[19],1'b0,b[4]);
mux_2x1 m20(out[20],a[20],1'b0,b[4]);
mux_2x1 m21(out[21],a[21],1'b0,b[4]);
mux_2x1 m22(out[22],a[22],1'b0,b[4]);
mux_2x1 m23(out[23],a[23],1'b0,b[4]);
mux_2x1 m24(out[24],a[24],1'b0,b[4]);
mux_2x1 m25(out[25],a[25],1'b0,b[4]);
mux_2x1 m26(out[26],a[26],1'b0,b[4]);
mux_2x1 m27(out[27],a[27],1'b0,b[4]);
mux_2x1 m28(out[28],a[28],1'b0,b[4]);
mux_2x1 m29(out[29],a[29],1'b0,b[4]);
mux_2x1 m30(out[30],a[30],1'b0,b[4]);
mux_2x1 m31(out[31],a[31],1'b0,b[4]);

endmodule