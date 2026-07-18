module ARITHMETIC_UNIT #(parameter IN_DATA_WIDTH=16,ARITH_OUT_WIDTH=32)
(
input CLK,RST,ARITH_EN,
input [1:0] ARITH_IN,
input  signed [IN_DATA_WIDTH-1:0] A,B,
output reg ARITH_flag,
output reg signed [ARITH_OUT_WIDTH-1:0] ARITH_OUT

	);
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		ARITH_OUT<='b0;
	end
	else  if (ARITH_EN) begin
		case(ARITH_IN)
		2'b00:ARITH_OUT<=A+B;
		2'b01:ARITH_OUT<=A-B;
		2'b10:ARITH_OUT<=A*B;
		2'b11:begin
                      if(B!=0)
                       ARITH_OUT<=A/B;
                      end
		endcase
	end
	else begin
		ARITH_OUT<='b0;
	end
end
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		ARITH_flag<=1'b0;
	end
	else if (ARITH_EN) begin
	
		ARITH_flag<=1'b1;
	end
	else begin
		ARITH_flag<=1'b0;
	end
end
endmodule