module control_unit(HWsig,ByteSig,WriteSrc,SignSig,MemRead,MemWrite,RegWrite,op);
input [5:0]op;
output HWsig,ByteSig,WriteSrc,SignSig,MemRead,MemWrite,RegWrite;

wire op5not, op4not, op3not, op2not, op1not, op0not;
wire and_regwrite1, and_regwrite2, and_regwrite3;
wire and_memwrite1, and_memwrite2;
wire and_memread1, and_memread2;
wire and_signsig1, and_signsig2, and_signsig3;
wire and_bytesig1, and_bytesig2;
wire and_hwsig1, and_hwsig2;

not(op5not,op[5]);
not(op4not,op[4]);
not(op3not,op[3]);
not(op2not,op[2]);
not(op1not,op[1]);
not(op0not,op[0]);

and(and_regwrite1, op5not, op4not, op[3], op[2], op[1], op[0]);
and(and_regwrite2, op[5],op4not,op3not,op1not);
and(and_regwrite3, op[5],op4not,op3not, op2not, op[0]);
or(RegWrite, and_regwrite1, and_regwrite2, and_regwrite3);

and(and_memwrite1, op[5], op4not, op[3], op2not, op1not);
and(and_memwrite2, op[5],op4not, op[3],op2not, op[0]);
or(MemWrite, and_memwrite1, and_memwrite2);

 
and(and_memread1, op[5], op4not, op3not, op1not);
and(and_memread2, op[5], op4not, op3not, op2not, op[0]);
or(MemRead, and_memread1, and_memread2);

and(and_signsig1, op[5], op4not, op2not, op[1], op[0]);
and(and_signsig2, op[5], op4not, op3not, op[2], op1not);
and(and_signsig3, op[5], op4not, op[3], op2not, op1not);
or(SignSig, and_signsig1, and_signsig2, and_signsig3);

and(WriteSrc, op5not, op4not, op[3],op[2],op[1], op[0]);

and(and_bytesig1, op[5],op4not, op3not, op1not, op0not);
and(and_bytesig2, op[5],op4not, op2not, op1not, op0not);
or(ByteSig, and_bytesig1, and_bytesig2);

and(and_hwsig1, op[5], op4not, op3not, op1not, op[0]);
and(and_hwsig2, op[5], op4not, op2not, op1not, op[0]);
or(HWsig, and_hwsig1, and_hwsig2);

endmodule