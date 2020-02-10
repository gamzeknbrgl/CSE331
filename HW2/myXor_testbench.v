`define DELAY 20
module myXor_testbench(); 
reg a, b;
wire outp;

myXor x1 (outp, a, b);

initial begin
a = 1'b0; b = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, outp=%1b", $time, a, b, outp);
end
 
endmodule