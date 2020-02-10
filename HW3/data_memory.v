module data_memory(data_out,address,write_data,memRead,memWrite,bytSig, halfword,clk);
input wire [31:0] address;     
input  [31:0] write_data;     
input wire memWrite, memRead,bytSig, halfword,clk;
output reg [31:0] data_out ;   
reg [31:0] datamem[31:0];  
reg [23:0] p1;
reg [15:0] p2;
reg [31:0]conc0;
reg [31:0] conc1;
reg[31:0]conc;
reg [31:0]conc2;

initial begin
    $readmemb("data.mem",datamem);
end
//Read datamem
always @(address or write_data or memWrite or memRead or bytSig or halfword)begin
 if(memWrite== 0 & memRead == 1 & bytSig== 1 & halfword== 0) begin
  conc0={24'b0,datamem[address][7:0]};
  data_out<=conc0;
  end
 if(memWrite== 0 & memRead == 1 & bytSig== 0 & halfword== 1 )begin
  conc1={16'b0,datamem[address][15:0]};
  data_out<=conc1;
  end
 if(memWrite== 0 & memRead ==  1 & bytSig== 0 & halfword== 0 )begin
  data_out <= datamem[address];
 end
 if(memWrite== 1 & memRead == 0 & bytSig== 1 & halfword== 0) begin
  conc0={datamem[address][31:8],write_data[7:0]};
  datamem[address]=conc0;
  $writememb("data.mem", datamem);
  end
 if(memWrite== 1 & memRead == 0 & bytSig== 0 & halfword== 1 )begin
  conc1={datamem[address][31:16],write_data[15:0]};
  datamem[address] = conc1;
  $writememb("data.mem", datamem);
  end
 if(memWrite== 1 & memRead ==  0 & bytSig== 0 & halfword== 0 )begin
  datamem[address] = write_data;
  $writememb("data.mem", datamem);
 end
 
end
endmodule
//Write datamem