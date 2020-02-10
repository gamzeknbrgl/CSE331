`define DELAY 20
module sign_extend_imm_testbench ();

reg [15:0] inp;
wire [31:0] outp;
	
	
sign_extend_imm result(outp,inp);
initial begin
inp=16'b1111010101010101;
#`DELAY;
inp=16'b0000101010101010;
end
initial begin
$monitor("time = %2d, input =%16b, output=%32b", $time, inp, outp );
end
endmodule