module mips32testbench ();

reg clk;
mips32 m(clk);
initial begin
$display("For all the results please check data.mem and registers.mem files also all the instructions are in the instruction.mem file");
$display("lb");
clk=1;  
#1000;
clk=0;
#1000;
$display("lbu");
clk=1;  
#1000;
clk=0;
#1000;
$display("lh");
clk=1;  
#1000;
clk=0;
#1000;
$display("lhu");
clk=1;  
#1000;
clk=0;
#1000;
$display("lui");
clk=1;  
#1000;
clk=0;
#1000;
$display("lw");
clk=1;  
#1000;
clk=0;
#1000;
$display("sb");
clk=1;  
#1000;
clk=0;
#1000;
$display("sh");
clk=1;  
#1000;
clk=0;
#1000;
$display("sw");
clk=1;  
#1000;
clk=0;
#1000;


end

initial begin

$monitor("instruction:%32b \n Signals MemRead: %1b, MemWrite:%1b, RegWrite: %1b, Halfword: %1b, Byte:%1b, Extend(zero or sign): %1b  \n rs content:%32b, rt content:%32b \n  adderResult:%32b \n dataMemory output:%32b ", m.instruction, m.MemRead, m.MemWrite, m.RegWrite, m.HWsig, m.ByteSig, m.SignSig, m.readData1, m.readData2,m.adderResult, m.data_out );
end

endmodule
