module enable_sync
#(parameter NUM_STAGES=2)
(
input CLK_DESTINATION,
input bus_enable,
input RST_DESTINATION,
output  sync_en
	);
reg [NUM_STAGES-1:0] SYNC_REG;
always @(posedge CLK_DESTINATION or negedge RST_DESTINATION) begin 
	if(!RST_DESTINATION) begin
		SYNC_REG<=0;
	end 
	else begin
        SYNC_REG<={bus_enable,SYNC_REG[NUM_STAGES-1:1]};
	end
end
assign sync_en =SYNC_REG[0] ;
endmodule
