module PARITY_CALC (
input BUSY,
input CLK,RST,
input [7:0] P_DATA,
input FIFO_EMPTY,
input PAR_TYP,
output reg PAR_BIT
);
wire DATA_VALID;
assign DATA_VALID=!FIFO_EMPTY;
always @(posedge CLK or negedge RST) begin
      if(!RST) begin
      	PAR_BIT<=1'b0;
      end
	  else if ((DATA_VALID)&&(PAR_TYP==0)&&!BUSY) begin //even parity
		PAR_BIT<=^P_DATA;	
	end
	else if ((DATA_VALID)&&(PAR_TYP==1)&&!BUSY)  begin //odd parity
		PAR_BIT<=~(^P_DATA);
	end
end
endmodule
