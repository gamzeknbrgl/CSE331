module pc_testbench ();

reg branch,jump,clk,ALUZero;
reg [31:0] instruction;
wire [31:0] PC;

nextPC ProgramCounter(PC,branch,jump,instruction,ALUZero,clk);

initial begin
branch=1'b1; jump=1'b1; instruction=32'b00000000001000100001100000100000; ALUZero=32'b00000000000000000000000000000001; clk=1'b1;
#100
clk=0;
#100
clk=1;
end

initial begin
$monitor("PC=%32b",PC);
end

endmodule


