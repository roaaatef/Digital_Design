module LOGIC_UNIT #(parameter IN_DATA_WIDTH=16,parameter ALU_OUT_WIDTH=16)
(
input CLK,RST,LOG_EN,
input [IN_DATA_WIDTH-1:0] A,B,
input [1:0] LOGIC_IN,
output  reg [ALU_OUT_WIDTH-1:0] Logic_OUT,
output reg  Logic_flag  
	);
//
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		Logic_OUT<='b0;
	end
	else  if (LOG_EN) begin
		case(LOGIC_IN)
		2'b00:Logic_OUT<=A&B;
		2'b01:Logic_OUT<=A|B;
		2'b10:Logic_OUT<=~(A&B);
		2'b11:Logic_OUT<=~(A|B);
		endcase
	end
	else begin
		Logic_OUT<='b0;
	end
end
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		Logic_flag<=1'b0;
	end
	else if (LOG_EN) begin
	
		Logic_flag<=1'b1;
	end
	else begin
		Logic_flag<=1'b0;
	end
end
endmodule