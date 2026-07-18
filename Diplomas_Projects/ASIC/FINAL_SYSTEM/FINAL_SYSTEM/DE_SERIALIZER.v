module DE_SERIALIZER #(parameter DATA_WIDTH=8) (
input CLK,RST_n,
input sampled_bit,
input deser_en,
input [3:0] bit_cnt,
input [5:0] edge_cnt,
input [5:0] prescale,
output reg [DATA_WIDTH-1:0] P_DATA

	);
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		P_DATA<=8'd0;

	end
	else if (deser_en&bit_cnt!=4'd10&edge_cnt==(prescale-1)) begin
		  P_DATA<={P_DATA[6:0],sampled_bit};

	end

end
endmodule
