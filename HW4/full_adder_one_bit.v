module full_adder_one_bit(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
wire a_xor_b,a_and_b,a_xor_b_and_cin;

myXor x1(a_xor_b,a,b);
myXor x2(sum,a_xor_b,cin);
and a1(a_xor_b_and_cin,a_xor_b,cin);
and a2(a_and_b,a,b);
or out(cout,a_xor_b_and_cin,a_and_b);

endmodule
