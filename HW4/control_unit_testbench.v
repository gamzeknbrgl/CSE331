`define DELAY2 20
module control_unit_testbench();

	wire HWsig,ByteSig,SignSig,MemRead,MemWrite,RegWrite;
	wire ALUSrc, ALUCtrl, RegDest, BEQSig, LuiSig, JALSig, Branch;
	wire [1:0]ShiftSig;
	wire [1:0]WriteData;
	wire [2:0]ALUOP;
	wire [1:0]Jump;
	reg [5:0] opcode; 
	
control_unit res(HWsig,ByteSig,SignSig,MemRead,MemWrite,RegWrite,WriteData, RegDest, 
Branch, BEQSig, Jump, JALSig, ALUOP, ALUCtrl, ALUSrc, LuiSig, ShiftSig, opcode);

initial begin
opcode=6'b100000;
#`DELAY2;
opcode=6'b100100;
#`DELAY2;
opcode=6'b100001;
#`DELAY2;
opcode=6'b100101;
#`DELAY2;
opcode=6'b001111;
#`DELAY2;
opcode=6'b100011;
#`DELAY2;
opcode=6'b101000;
#`DELAY2;
opcode=6'b101001;
#`DELAY2;
opcode=6'b101011;

end

initial begin
$monitor("opcode=%6b , regwrite=%1b, memwrite=%1b, memread=%1b, signsig=%1b, bytesig=%1b,  hwsig=%1b"
, opcode, RegWrite, MemWrite, MemRead, SignSig, ByteSig, HWsig);
end

endmodule