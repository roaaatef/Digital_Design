module DE_SERIALIZER (
input CLK,RST_n,
input sampled_bit,
input deser_en,
input [3:0] bit_cnt,
input sampling_done,
output reg [7:0] P_DATA

	);
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		P_DATA<=8'd0;

	end
	else if (deser_en&bit_cnt!=4'd10&sampling_done) begin
		  P_DATA<={P_DATA[6:0],sampled_bit};

	end

end
endmodule
