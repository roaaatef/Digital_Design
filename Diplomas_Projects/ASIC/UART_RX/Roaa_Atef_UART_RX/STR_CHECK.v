module STR_CHECK (
	input CLK,RST_n,
input strt_chk_en,
input sampled_bit,sampling_done,
output reg strt_glitch
	);
always @(posedge CLK or negedge RST_n) begin
if(!RST_n)begin
	strt_glitch<=1'b0;
end
	  else if (strt_chk_en&sampled_bit&sampling_done) begin
		strt_glitch<=1'b1;
	end
	else  begin
		strt_glitch<=1'b0;
	end
end
endmodule
