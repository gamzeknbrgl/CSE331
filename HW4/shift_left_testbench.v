`define DELAY 20
module shift_left_testbench(); 
reg	[31:0] a, b;
wire	[31:0] result;

shift_left_32bit ss (result, a, b);

initial begin
a = 32'b00000000000000001111111111111111;
b = 32'b00000000000000000000000000011110;
 #`DELAY;
a = 32'b00000000000000001111111111111111;
b = 32'b00000000000000000000000000011111;
 #`DELAY;

end
 
initial
begin
$monitor("time = %2d, a =%32b, b=%32b, result=%32b", $time, a, b,  result);
end
 
endmodule