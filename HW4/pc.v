module pc(PC,Branch,BEQSig, JALSig,Jump,instruction,ALUZero,clk);

input Branch, BEQSig, JALSig, clk;
input [1:0] Jump;
input [31:0] instruction;
input [31:0] ALUZero;
output reg [31:0] PC;
reg [31:0] nextPC;
wire [31:0] incrPC;
wire [31:0] branch_adress;
wire [31:0] ext_address;
wire [31:0] instruction_addr;
wire [31:0] jump_address;
wire [31:0]select1;
wire [31:0]select2;
reg [31:0]branchEQ;
reg [31:0]branchNOTeq;
//First pc value 
initial begin
	PC<=32'b00000000000000000000000000000000;
end
//Branch Equal
assign select1= {{31{1'b0}},Branch} & !ALUZero & BEQSig;
//Incrementing PC
assign incrPC=PC+1;
//Calculating branch address
assign instruction_addr=instruction[15:0];
assign ext_address={{16{instruction_addr[15]}},instruction_addr[15:0]};
assign branch_adress=incrPC+ext_address;
//If branch equal, choose branch address if not choose incremented PC
always@(branch_adress or incrPC or select1 ) begin
	if(select1[0]==1'b1)
		branchEQ=branch_adress;
	else
		branchEQ=incrPC;
end
//If branch not equal
assign select2= {{31{1'b0}},Branch} & ALUZero & !BEQSig;
always@(branch_adress or incrPC or select2 ) begin
	if(select1[0]==1'b1)
		branchNOTeq=branch_adress;
	else
		branchNOTeq=incrPC;
end
//Calculating jump address
assign jump_address = {incrPC[31:28],2'b0,instruction[25:0]};

always@(Jump or jump_address or branchEQ or branchNOTeq) begin
	//If jump
	if(Jump[0]==1'b1) 
		nextPC=jump_address;
	//If branch not equal
	if(!BEQSig)
		nextPC=branchNOTeq;
	//If branch equal
	if(BEQSig)
		nextPC=branchEQ;
end

//Write the next PC to PC
always@ (posedge clk)begin
	PC = nextPC;
end
endmodule
