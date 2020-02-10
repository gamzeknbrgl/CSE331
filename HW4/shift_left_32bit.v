module shift_left_32bit(out,a,b);
input [31:0]a;
input [31:0]b;
output [31:0] out;
wire [31:0] out1;
wire [31:0] out2;
wire [31:0] out3;
wire [31:0] out4;

shift_left_0_to_1 s1(out1,a,b);
shift_left_0_to_2 s2(out2,out1,b);
shift_left_0_to_4 s3(out3,out2,b);
shift_left_0_to_8 s4(out4,out3,b);
shift_left_0_to_16 s5(out,out4,b);

endmodule
