module pulse_generator (
input sync_en,
input CLK_DESTINATION,
input RST_DESTINATION,
output  reg enable_pulse,
output enable_pulse_comb
);
reg PULSE_FLOP;
always @(posedge CLK_DESTINATION or negedge RST_DESTINATION) begin 
	if(!RST_DESTINATION) begin
		 PULSE_FLOP<= 0;
		 enable_pulse<=0;
	end 
	else begin
		 PULSE_FLOP<=sync_en ;
		 enable_pulse<=enable_pulse_comb;
		end

end
	assign enable_pulse_comb=!PULSE_FLOP&&sync_en;
endmodule