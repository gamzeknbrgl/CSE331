`define DELAY 20
module ALU_1Bit_testbench(); 
reg ai, bi, aluop0, aluop1, aluop2, lessi, cin;
wire outp, cout;

ALU_1Bit a1(outp,cout, aluop0, aluop1, aluop2, ai,bi,lessi, cin);


initial begin
$display("Test Results");
$display("And:");
ai = 1'b0; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0; 
#`DELAY;
ai = 1'b1; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
ai = 1'b0; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;  
#`DELAY;
ai = 1'b1; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
$display("Or:");
ai = 1'b0; bi = 1'b0; aluop0= 1'b1; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0; 
#`DELAY;
ai = 1'b1; bi = 1'b0; aluop0= 1'b1; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
ai = 1'b0; bi = 1'b1; aluop0= 1'b1; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;  
#`DELAY;
ai = 1'b1; bi = 1'b1; aluop0= 1'b1; aluop1= 1'b0; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
$display("Add:");
#`DELAY;
ai = 1'b0; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b0; cin= 1'b0; 
#`DELAY;
ai = 1'b1; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
ai = 1'b0; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b0; cin= 1'b0;  
#`DELAY;
ai = 1'b1; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b0; cin= 1'b0;
#`DELAY;
$display("Substract:");
#`DELAY;
ai = 1'b0; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1; 
#`DELAY;
ai = 1'b1; bi = 1'b0; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;
#`DELAY;
ai = 1'b0; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;  
#`DELAY;
ai = 1'b1; bi = 1'b1; aluop0= 1'b0; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;
#`DELAY;
$display("Set-on-less-than:");
#`DELAY;
ai = 1'b0; bi = 1'b0; aluop0= 1'b1; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1; 
#`DELAY;
ai = 1'b1; bi = 1'b0; aluop0= 1'b1; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;
#`DELAY;
ai = 1'b0; bi = 1'b1; aluop0= 1'b1; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;  
#`DELAY;
ai = 1'b1; bi = 1'b1; aluop0= 1'b1; aluop1= 1'b1; aluop2= 1'b1; cin= 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, ai =%1b, bi=%1b, outp=%1b, cout=%1b, cin: %1b", $time, ai, bi, outp, cout,cin );
end
 
endmodule