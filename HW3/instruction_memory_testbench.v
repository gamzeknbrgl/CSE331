`define DELAY2 1000
module instruction_memory_testbench ();

	wire [31:0] instruction;
	
	reg [31:0] PC;
	reg clk;
	
instruction_memory instructionmem(instruction, PC, clk );

initial begin
PC=32'b00000000000000000000000000000000; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000001; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000010; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000001; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;


end

initial begin
$monitor("instruction=%32b, PC=%32b",instruction,PC);
end

endmodule