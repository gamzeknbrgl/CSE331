module control_unit(HWsig,ByteSig,SignSig,MemRead,MemWrite,RegWrite,WriteData, RegDest, 
Branch, BEQSig, Jump, JALSig, ALUOP, ALUCtrl, ALUSrc, LuiSig, ShiftSig, op);
input [5:0]op;
output HWsig,ByteSig,SignSig,MemRead,MemWrite,RegWrite,
Branch, BEQSig, JALSig, ALUCtrl, ALUSrc, LuiSig, RegDest;
output [1:0]ShiftSig;
output [1:0]WriteData;
output [2:0]ALUOP;
output [1:0]Jump;

wire op5not, op4not, op3not, op2not, op1not, op0not;
wire beq_and1, beq_and2, beq_or;
wire reg_dest1, reg_dest2, reg_dest3, reg_dest4;
wire jal_and1, jal_and2;
wire alu_src1, alu_src2, alu_src3, alu_src4, alu_src5;
wire sign_sig1, sign_sig2, sign_sig3;
wire wd1, wd2, wd3, wd4, wd5;
wire wd01, wd02, wd03;
wire jump1, jump2;
wire al0, al1, al2, al3, al4, al5, al6, al7, al8, al9, al10;
wire mem_read1, mem_read2;
wire mem_write1, mem_write2;
wire reg_write1, reg_write2, reg_write3, reg_write4, reg_write5, reg_write6;

not(op5not,op[5]);
not(op4not,op[4]);
not(op3not,op[3]);
not(op2not,op[2]);
not(op1not,op[1]);
not(op0not,op[0]);

and(ALUCtrl, op5not, op4not, op3not, op2not, op0not);

and(beq_and1, op5not, op4not, op1not, op0not);
and(beq_and2, op[5],op4not, op[2],op[1], op[0]);
or(BEQSig, beq_and1, beq_and2);

and(reg_dest1, op4not, op2not, op[1], op[0]);
and(reg_dest2, op5not, op4not, op[3]);
and(reg_dest3, op[5], op4not, op3not, op2not, op1not);
and(reg_dest4, op[5], op4not, op[1], op[0]);
or(RegDest, reg_dest1, reg_dest2, reg_dest3, reg_dest4);

and(jal_and1, op4not, op2not, op[1], op[0]);
and(jal_and2, op[5],op4not,op[3],op[1],op[0]);
or(JALSig, jal_and1, jal_and2);

and(alu_src1, op5not, op4not, op[3]);
and(alu_src2, op[5], op4not, op3not, op2not, op1not);
and(alu_src3, op[5], op4not, op2not, op1not, op0not );
and(alu_src4, op[5], op4not, op3not, op[1], op[0]);
and(alu_src5, op[5], op4not, op[2], op[1], op[0]);

and(HWsig, op[5], op4not, op3not, op2not, op1not, op[0]);

and(ByteSig, op[5], op4not, op2not, op1not, op0not);

and(sign_sig1, op4not, op[3], op2not, op1not);
and(sign_sig2, op5not, op4not,op[2], op1not);
and(sign_sig3, op[5], op4not, op2not, op[1], op[0]);
or(SignSig, sign_sig1, sign_sig2, sign_sig3);

and(wd1, op5not, op4not, op1not, op0not );
and(wd2, op5not, op4not, op[3], op2not);
and(wd3, op5not, op4not, op[3], op1not);
and(wd4, op4not, op[3], op2not, op0not);
and(wd5, op[5], op4not, op[3], op[2], op[1], op[0] );
or(WriteData[1], wd1, wd2, wd3, wd4, wd5);

and(wd01, op[5], op4not, op3not, op2not, op1not);
and(wd02, op[5], op4not, op3not, op2not, op[0]);
and(wd03, op[5], op4not, op[3], op[2], op[1], op[0]);
or(WriteData[0], wd01, wd02, wd03);

and(Jump[1],op5not, op4not, op3not, op[2], op1not );

and(jump1, op5not, op4not, op3not, op2not, op[1]);
and(jump2, op5not, op4not, op3not,op[2], op1not);
and(Jump[0], jump1,jump2);

and(LuiSig, op5not, op4not, op[3], op[2], op[1], op[0]);

and(Branch, op5not, op4not, op3not, op[2], op1not);

and(al0, op4not, op2not, op1not, op0not);
and(al1, op5not, op4not, op[3], op2not);
and(al2, op4not, op[3], op2not, op1not, op0not);
and(al3, op[5], op4not, op3not, op2not, op[0]);
and(al4, op[5], op4not, op[3], op[1], op[0]);
or(ALUOP[1], al0, al1, al2, al3, al4);

and(al5, op5not, op4not, op3not, op[2],op1not);
and(al6, op5not, op4not, op[3], op[1]);
and(al7, op4not, op[3],op2not, op[1],op0not );
or(ALUOP[2], al5,al6,al7);

and(al8, op5not, op4not, op3not, op[1]);
and(al9, op4not, op[3], op2not, op[1], op0not);
and(al10, op5not, op4not, op[3], op[2], op[0]);
or(ALUOP[0], al8, al9, al10);

and(mem_read1, op[5], op4not, op3not, op2not, op1not);
and(mem_read2, op[5], op4not, op3not, op2not, op[0]);
or(MemRead, mem_read1, mem_read2);

and(mem_write1, op[5], op4not, op[3], op2not, op1not, op0not);
and(mem_write2, op[5], op4not, op[3], op[1], op[0]);
or(MemWrite, mem_write1, mem_write2);

and(reg_write1, op4not, op3not, op2not, op1not, op0not);
and(reg_write2, op5not, op4not, op2not, op1not);
and(reg_write3, op5not, op4not,op[2]);
and(reg_write4, op4not, op[3], op2not, op[1], op0not);
and(reg_write5, op[5], op4not, op3not, op2not, op[0]);
and(reg_write6, op[5], op4not, op3not, op[2], op[1], op0not);
or(RegWrite, reg_write1, reg_write2, reg_write3, reg_write4, reg_write5, reg_write6);

endmodule