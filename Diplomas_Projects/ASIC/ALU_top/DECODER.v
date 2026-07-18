
module DECODER (
input [1:0] DEC_IN ,
output  reg ARITH_EN,LOG_EN,SH_EN,CMP_EN

);
always @(*)
begin
	case(DEC_IN)
	2'b00: begin
		ARITH_EN=1'b1;
		CMP_EN=1'b0;
		SH_EN=1'b0;
		LOG_EN=1'b0;
	end
	2'b01:begin
		ARITH_EN=1'b0;
		CMP_EN=1'b0;
		SH_EN=1'b0;
		LOG_EN=1'b1;
	end
	2'b10:begin
		ARITH_EN=1'b0;
		CMP_EN=1'b1;
		SH_EN=1'b0;
		LOG_EN=1'b0;
	end
	2'b11:begin
		ARITH_EN=1'b0;
		CMP_EN=1'b0;
		SH_EN=1'b1;
		LOG_EN=1'b0;
	end
	endcase
end
endmodule