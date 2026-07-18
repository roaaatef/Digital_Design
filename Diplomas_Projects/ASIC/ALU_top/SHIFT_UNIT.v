module SHIFT_UNIT #(parameter IN_DATA_WIDTH=16, ALU_OUT_WIDTH=16)
(
input CLK,RST,SH_EN,
input [IN_DATA_WIDTH-1:0] A,B,
input [1:0] SHIFT_IN,
output  reg [ALU_OUT_WIDTH-1:0] SHIFT_OUT,
output reg  SHIFT_flag
	);
//
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		SHIFT_OUT<='b0;
	end
	else  if (SH_EN) begin
		case(SHIFT_IN)
		2'b00:SHIFT_OUT<=A>>1;
		2'b01:SHIFT_OUT<=A<<1;
		2'b10:SHIFT_OUT<=B>>1;
		2'b11:SHIFT_OUT<=B<<1;
		endcase
	end
	else begin
		SHIFT_OUT<='b0;
	end
end
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		SHIFT_flag<=1'b0;
	end
	else if (SH_EN) begin
	
		SHIFT_flag<=1'b1;
	end
	else begin
		SHIFT_flag<=1'b0;
	end
end
endmodule
