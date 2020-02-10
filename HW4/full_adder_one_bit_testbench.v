`define DELAY 20
module full_adder_one_bit_testbench();
reg a,b,c_in;
wire sum,c_out;

full_adder_one_bit obfa(sum,c_out,a,b,c_in);

initial begin
a=1'b0; b=1'b0; c_in=1'b0;
#`DELAY;
a=1'b0; b=1'b0; c_in=1'b1;
#`DELAY;
a=1'b0; b=1'b1; c_in=1'b0;
#`DELAY;
a=1'b0; b=1'b1; c_in=1'b1;
#`DELAY;
a=1'b1; b=1'b0; c_in=1'b0;
#`DELAY;
a=1'b1; b=1'b0; c_in=1'b1;
#`DELAY;
a=1'b1; b=1'b1; c_in=1'b0;
#`DELAY;
a=1'b1; b=1'b1; c_in=1'b1;
end
initial begin
$monitor("time=%2d, a=%1b, b=%1b, c_in=%1b, sum=%1b, c_out=%1b",$time,a,b,c_in,sum,c_out);
end

endmodule

