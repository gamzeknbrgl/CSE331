`define DELAY 20
module mux4x1_testbench(); 
reg a, b, i0, i1, i2, i3;
wire outp;

mux4x1 x1 (outp, i0, i1, i2, i3, a, b);

initial begin

#`DELAY;
a = 1'b0; b = 1'b0; i0= 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0; i2= 1'b1;
#`DELAY;
a = 1'b0; b = 1'b1; i1= 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1; i3= 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, s1 =%1b, s0=%1b, outp=%b", $time, a, b, outp );
end
 
endmodule