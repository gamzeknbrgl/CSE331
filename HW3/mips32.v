module mips32(clk);

input clk;
wire [31:0] result;
wire [31:0] result1,data_out;
wire [31:0] PC;
wire HWsig,ByteSig,WriteSrc,SignSig,MemRead,MemWrite,RegWrite;
wire [2:0] ALUOp,alu_select;
//readdata1= rs content , readdata2= rt content
wire [31:0] readData1, readData2, aluSecondOperand, signORzero,adderResult,instruction,sign_extend_imm16, zero_extend_imm16, conc;
wire c_out;
wire [4:0] readReg1, write_reg;

//program counter
pc programCounter(PC,instruction,clk);

//instruction memory
instruction_memory instr(instruction,PC,clk);

//control unit
control_unit control(HWsig,ByteSig,WriteSrc,SignSig,MemRead,MemWrite,RegWrite,instruction[31:26]);
//write register => rt
or o1(write_reg[4], instruction[20], 1'b0);
or o2(write_reg[3], instruction[19], 1'b0);
or o3(write_reg[2], instruction[18], 1'b0);
or o4(write_reg[1], instruction[17], 1'b0);
or o5(write_reg[0], instruction[16], 1'b0);

//register block
registers register(readData1,readData2,result,instruction[25:21],instruction[20:16],write_reg,RegWrite,clk);

//sign ext imm or sign extend zero selection for adder
sign_extend_imm signExt(sign_extend_imm16,instruction[15:0]);

zero_extend_imm zeroExt(zero_extend_imm16,instruction[15:0]);

mux_2x1_32_bit zeroORsignExtImm16(signORzero,zero_extend_imm16,sign_extend_imm16,SignSig);
//sum of zero or sign extend + readdata1 (rs register's content)
full_adder_32_bit fa(adderResult,c_out,readData1,signORzero,1'b0);
//data memory 
data_memory dataMem(data_out,adderResult,readData2,MemRead,MemWrite,ByteSig, HWsig, clk);

//Selection between memory output or lui instruction's extended result 
assign conc={instruction[15:0],16'b0};
mux_2x1_32_bit res1ORres2(result,data_out,conc,WriteSrc);

endmodule
