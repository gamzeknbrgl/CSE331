`define DELAY 20
module mux_2x1_testbench();
reg d0,d1,s;
wire outp;

mux_2x1 result(outp,d0,d1,s);

initial begin
d0=1'b0; d1=1'b0; s=1'b0;
#`DELAY;
d0=1'b0; d1=1'b0; s=1'b1;
#`DELAY;
d0=1'b0; d1=1'b1; s=1'b0;
#`DELAY;
d0=1'b0; d1=1'b1; s=1'b1;
#`DELAY;
d0=1'b1; d1=1'b0; s=1'b0;
#`DELAY;
d0=1'b1; d1=1'b0; s=1'b1;
#`DELAY;
d0=1'b1; d1=1'b1; s=1'b0;
#`DELAY;
d0=1'b1; d1=1'b1; s=1'b1;
end
initial begin
$monitor("time=%2d, d0=%1b, d1=%1b, s=%1b, output=%1b",$time,d0,d1,s,outp);
end

endmodule

