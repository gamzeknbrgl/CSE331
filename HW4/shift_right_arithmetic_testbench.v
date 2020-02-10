`define DELAY 20
module shift_right_arithmetic_testbench(); 
reg	[31:0] a, b;
wire	[31:0] result;

shift_right_arithmetic_32bit rs (result, a, b);

initial begin
a = 32'b11111111111111110000000000000000; 
b = 32'b00000000000000000000000000000000;
 #`DELAY;
a = 32'b11111111111111110000000000000000;
b = 32'b00000000000000000000000000000001;
 #`DELAY;

end
 
initial
begin
$monitor("time = %2d, a =%32b, b=%32b, result=%32b", $time, a, b,  result);
end
 
endmodule