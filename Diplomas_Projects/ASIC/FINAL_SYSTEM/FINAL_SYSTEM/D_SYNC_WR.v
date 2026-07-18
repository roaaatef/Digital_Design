module D_SYNC_WR
	#(parameter NUM_STAGES=2,parameter BUS_WIDTH=4)
(
input RD_CLK,
input [BUS_WIDTH-1:0] GRAY_WPTR,
input RD_RST,
output  reg [BUS_WIDTH-1:0] WR_PTR_SYNC
	);
reg [NUM_STAGES-1:0] SYNC_REG [BUS_WIDTH-1:0];
integer I;
always @(posedge RD_CLK or negedge RD_RST) begin 
	if(!RD_RST) begin
		for(I=0;I<BUS_WIDTH;I=I+1) begin
			SYNC_REG[I]<=0;
		end
		
	end 
	else begin
		for (I=0;I<BUS_WIDTH;I=I+1) begin
        SYNC_REG[I] <={GRAY_WPTR[I],SYNC_REG [I] [NUM_STAGES-1:1]};
    end
	end
end
always @(*) begin 
for (I=0;I<BUS_WIDTH;I=I+1) begin
	WR_PTR_SYNC[I]=SYNC_REG[I][0];
end
end
endmodule 

