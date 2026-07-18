module D_SYNC_RD
	#(parameter NUM_STAGES=2,parameter BUS_WIDTH=4)
(
input WR_CLK,
input [BUS_WIDTH-1:0] GRAY_RPTR,
input WR_RST,
output reg [BUS_WIDTH-1:0] RD_PTR_SYNC
	);
reg [NUM_STAGES-1:0] SYNC_REG [BUS_WIDTH-1:0];
integer I;
always @(posedge WR_CLK or negedge WR_RST) begin 
	if(!WR_RST) begin
		for(I=0;I<BUS_WIDTH;I=I+1) begin
			SYNC_REG[I]<=0;
		end
		
	end 
	else begin
		for (I=0;I<BUS_WIDTH;I=I+1) begin
        SYNC_REG[I] <={SYNC_REG [I] [NUM_STAGES-2:0],GRAY_RPTR[I]};
    end
	end
end
always @(*) begin 
for (I=0;I<BUS_WIDTH;I=I+1) begin
	RD_PTR_SYNC[I]=SYNC_REG[I][NUM_STAGES-1];
end
end
endmodule 
