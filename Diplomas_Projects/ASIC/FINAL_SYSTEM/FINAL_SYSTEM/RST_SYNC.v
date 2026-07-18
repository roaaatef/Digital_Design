module RST_SYNC #(parameter NUM_STAGES=2)
(
input RST,
input CLK,
output  reg RST_SYNC	
);
/*..................SYNCHRONIZER STAGES.....*/
reg [NUM_STAGES-1:0] SYNC_REG ;
/*................LOGIC.............*/
always @(posedge CLK or negedge RST) begin 
	if(!RST) begin
	SYNC_REG<=0;
end
	else begin
		SYNC_REG<={1'b1,SYNC_REG[NUM_STAGES-1:1]};
	end	
end
always @(*) begin
	RST_SYNC=SYNC_REG[0];
end
endmodule
