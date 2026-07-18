module STOP_CHECK (
	input CLK,RST_n,
input stp_chk_en,
input sampled_bit,sampling_done,
output reg stp_err
	);
always @(posedge CLK or negedge RST_n) begin
if(!RST_n)begin
	stp_err<=1'b0;
end
	  else if (stp_chk_en&!sampled_bit&sampling_done) begin
		stp_err<=1'b1;
	end
	else  begin
		stp_err<=1'b0;
	end
end
endmodule
