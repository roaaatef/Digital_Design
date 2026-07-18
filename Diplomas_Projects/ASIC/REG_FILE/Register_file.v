module Register_file (
input [15:0] WrData,
input CLK,RST,
input WrEn,RdEn,
input [2:0] Address,
output reg  [15:0] RdData
);

reg [15:0] Reg_File [7:0];
always @(posedge CLK or posedge RST)
begin
     if (RST) 
     begin
     	Reg_File[0]<=16'b0;
        Reg_File[1]<=16'b0;
        Reg_File[2]<=16'b0;
        Reg_File[3]<=16'b0;
        Reg_File[4]<= 16'b0;
        Reg_File[5]<=16'b0;
        Reg_File[6]<=16'b0;
        Reg_File[7]<=16'b0;
     end
    else if (WrEn&&RdEn==0)
    begin
    	Reg_File[Address]<=WrData;
    end
     else if (RdEn&&WrEn==0)
    begin
    	RdData<=Reg_File[Address];
    end
end
endmodule
