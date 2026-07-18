module sync_bus #(parameter BUS_WIDTH=8)
	(
	input CLK_DESTINATION,
	input RST_DESTINATION,
input [BUS_WIDTH-1:0] unsync_bus,
input enable_pulse_comb,
output reg [BUS_WIDTH-1:0] sync_bus

	);
always @(posedge CLK_DESTINATION or negedge RST_DESTINATION) begin : proc_
	if(~RST_DESTINATION) begin
		 sync_bus<= 0;
	end 
	else begin
	    if(enable_pulse_comb)
	    	sync_bus<=unsync_bus;
	    else
	    	sync_bus<=sync_bus;
	end
end
endmodule