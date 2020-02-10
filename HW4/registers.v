module registers
( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk);
	output reg [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];
	
	//read the file contents
	always @(read_reg_1 or read_reg_2)begin
		$readmemb("registers.mem",registers);
		read_data_1<=registers[read_reg_1];
	   read_data_2<=registers[read_reg_2];
	end	
	//write 
	always @(negedge clk) begin	
		if(signal_reg_write & (write_reg!=5'b00000))
		begin 
			registers[write_reg] = write_data;
		end
			$writememb("registers.mem",registers);
	end
	
endmodule
