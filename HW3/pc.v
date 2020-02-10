module pc(PC,instruction,clk);

input clk;
input [31:0] instruction;
output reg [31:0] PC;
wire [31:0] nextPC;

initial begin
	PC<=32'b00000000000000000000000000000000;
end
//Incrementing PC
assign nextPC=PC+1;
//Write the next PC to PC
always@ (posedge clk)begin
	PC = nextPC;
end
endmodule
