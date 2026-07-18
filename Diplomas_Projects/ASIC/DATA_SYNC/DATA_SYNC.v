module DATA_SYNC #(parameter BUS_WIDTH=8,parameter NUM_STAGES=2)
	(
	input CLK_DESTINATION,    
	input RST_DESTINATION,
	input bus_enable, 
input [BUS_WIDTH-1:0] unsync_bus,
output [BUS_WIDTH-1:0] sync_bus,
output enable_pulse,
output enable_pulse_comb	
);
/*...........enable sync inst....*/
wire sync_en;
 enable_sync#(NUM_STAGES)en (CLK_DESTINATION,bus_enable,RST_DESTINATION,sync_en
);
/*........pulse generator....*/
 pulse_generator pulse  (sync_en,CLK_DESTINATION,RST_DESTINATION,enable_pulse,enable_pulse_comb

);
/*....mux...*/

 sync_bus #(BUS_WIDTH) SYNC
	( CLK_DESTINATION,RST_DESTINATION,unsync_bus, enable_pulse_comb,sync_bus);
endmodule