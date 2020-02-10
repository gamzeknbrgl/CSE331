module instruction_memory(instruction,PC,clk);

input clk;
reg [31:0] instructions [31:0];
output reg [31:0] instruction;
input [31:0] PC;

//Reading the instructions from instruction.mem file
	always @(PC)begin
		$readmemb("instruction.mem",instructions);
		instruction<=instructions[PC];
	end	

endmodule
