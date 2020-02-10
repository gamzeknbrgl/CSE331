module mux_2x1(outp,d0,d1,s);
input d0,d1,s;
output outp;
wire d1_and_s, d0_and_not_s, not_s;

not(not_s,s);
and(d0_and_not_s,d0,not_s);
and(d1_and_s,d1,s);
or(outp,d1_and_s,d0_and_not_s);

endmodule
