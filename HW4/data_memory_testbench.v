`define DELAY2 1000
module data_memory_testbench ();

	wire [31:0] data_out;
	
	reg [31:0] address; 
	reg [31:0] write_data; 
	reg memWrite,memRead,clk,bytSig, halfword;
	
data_memory datamem(data_out,address,write_data,memRead,memWrite,bytSig,halfword,clk);

initial begin
address=32'b00000000000000000000000000000111;write_data=32'b11111111111111111111111111111111;memRead=1'b0;memWrite=1'b1;clk=1; bytSig=1'b0; halfword=1'b0;
#`DELAY2;
clk=0;
#`DELAY2;
address=32'b00000000000000000000000000001001;write_data=32'b01111111111111000011111111111110;memRead=1'b0;memWrite=1'b1;clk=1;bytSig=1'b1; halfword=1'b0;
#`DELAY2;
clk=0;
#`DELAY2;
address=32'b00000000000000000000000000000100;write_data=32'b11111111111111111111111111111111;memRead=1'b0;memWrite=1'b1;clk=1;bytSig=1'b0; halfword=1'b1;
#`DELAY2;
clk=0;
#`DELAY2;
address=32'b00000000000000000000000000000001;write_data=32'b01111111111111111111111111111110;memRead=1'b0;memWrite=1'b1;clk=1;bytSig=1'b0; halfword=1'b0;
#`DELAY2;
clk=0;

end

initial begin
$monitor("data_out=%32b, address=%32b , write_data=%32b, memRead=%1b, memWrite=%1b, byte=%1b, half=%1b",data_out,address,write_data,memRead,memWrite,bytSig,halfword);
end

endmodule