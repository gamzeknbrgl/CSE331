`define DELAY1 40
module registers_testbench ();

	wire [31:0] read_data_1, read_data_2;
	reg [31:0] write_data;
	reg [4:0] read_reg_1, read_reg_2, write_reg;
	reg signal_reg_write, clk;
	
registers registerblock(read_data_1,read_data_2,write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

initial begin
write_data=32'b11001110011111111111111111110000; read_reg_1=5'b00001; read_reg_2=5'b00010; write_reg=5'b00011; signal_reg_write=1; clk=1;
#`DELAY1;
clk=0;
#`DELAY1;
write_data=32'b11001110011111111111111111110000; read_reg_1=5'b00011; read_reg_2=5'b00010; write_reg=5'b00011; signal_reg_write=1; clk=1;
#`DELAY1;
clk=0;
end

initial begin
$monitor("read_data1=%32b, read_data2=%32b, write_reg=%5b, signal_reg_write=%1b",read_data_1,read_data_2,write_reg, signal_reg_write);
end

endmodule
