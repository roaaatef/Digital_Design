module Register_file #(parameter ADDR=4,parameter DATA_WIDTH=8,parameter WIDTH=8,parameter DEPTH=16) (
input [DATA_WIDTH-1:0] WrData,
input REF_CLK,RST,
input WrEn,RdEn,
input [ADDR-1:0] Address,
output reg  [DATA_WIDTH-1:0] RdData,
output reg RdData_Valid ,
output [DATA_WIDTH-1:0] REG0,
output [DATA_WIDTH-1:0] REG1,
output [DATA_WIDTH-1:0] REG2,
output [DATA_WIDTH-1:0] REG3
);
reg [WIDTH-1:0] Reg_File [DEPTH-1:0];
integer i;
always @(posedge REF_CLK or negedge RST)
begin
     if (~RST) 
     begin
     	RdData_Valid <= 1'b0 ;
      for ( i = 0; i < DEPTH; i=i+1) begin
         if (i == 2)
            begin
               Reg_File[i] <= 'b100000_01 ;
            end
         else if (i == 3)
            begin
               Reg_File[i] <= 'b0010_0000 ;
            end  
         else
            begin
               Reg_File[i] <= 'b0 ;
            end            
      end
     end
    else if (WrEn&&RdEn==0)
    begin
    	Reg_File[Address]<=WrData;
    end
     else if (RdEn&&WrEn==0)
    begin
    	RdData<=Reg_File[Address];
         RdData_Valid <= 1'b1 ;
    end
    else begin
         RdData_Valid <= 1'b0 ;
    end
end
assign REG0 = Reg_File[0];
assign REG1=Reg_File[1];
assign REG2=Reg_File[2];
assign REG3=Reg_File[3];
endmodule
