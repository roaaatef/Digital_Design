module DATA_SAMPLING (
input CLK,RST_n,
input RX_IN,
input [5:0] prescale,
input data_samp_en,
input [5:0] edge_cnt,
output reg sampled_bit
	);
reg bit1,bit2;
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		sampled_bit<=1'b0;
		{bit1,bit2}<=2'b00;
	end
	else if (data_samp_en&edge_cnt==((prescale/2)-1)) begin
		bit1<=RX_IN;
	end
	else if (data_samp_en&edge_cnt==((prescale/2))) begin
		bit2<=RX_IN;
	end
	else begin
	case({bit1,bit2,RX_IN})
		 3'b000,3'b001,3'b010,3'b100: sampled_bit<=1'b0;
		 3'b110,3'b101,3'b011,3'b111:sampled_bit<=1'b1;
		 endcase	
	end	
end

endmodule
