module PARITY_CHECK (
	input CLK,RST_n,
input [7:0] P_DATA,
input par_chk_en,
input PAR_TYP,
input sampled_bit,
input [5:0] edge_cnt,
input [5:0] prescale,
output  reg par_err

	);
always @(posedge CLK or negedge RST_n) begin
if(!RST_n)begin
	par_err<=1'b0;
end 
else begin
	 if (PAR_TYP&par_chk_en&sampled_bit!=~^P_DATA&edge_cnt==(prescale-2)) begin
		par_err<=1'b1;
	end

		 else if (!PAR_TYP&par_chk_en&sampled_bit!=^P_DATA&edge_cnt==(prescale-2)) begin
		par_err<=1'b1;
	end

		else begin
		par_err<=1'b0;
	end
end

end
endmodule
