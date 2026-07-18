module ALU #(parameter WIDTH=8,parameter FUNC=4) (
input [WIDTH-1:0] A,B,
output reg [15:0] ALU_OUT,
input [FUNC-1:0] ALU_FUN,
input REF_CLK,EN,RST,
output reg ALU_OUT_VALID
	);
// RTL code
always @(posedge REF_CLK or negedge RST)
begin
	if(~RST) begin
		ALU_OUT<=0;
		ALU_OUT_VALID<=0;
	end
	else if (EN) begin
		ALU_OUT_VALID<=1;
	case(ALU_FUN)
	'b0000: ALU_OUT<=A+B;
	'b0001:  ALU_OUT<=A-B;
	'b0010: ALU_OUT<=A*B;
	'b0011:  begin
	if(B!=0)
	begin
	   ALU_OUT<=A/B;
	end
	end
	'b0100: ALU_OUT<=A&B;
	'b0101: ALU_OUT<=A|B;
	'b0110: ALU_OUT<=~(A&B);
	'b0111: ALU_OUT<=~(A|B);
	'b1000: ALU_OUT<=A^B;
	'b1001: ALU_OUT<=~(A^B);
	'b1010: begin
		if(A==B) 
		begin
			ALU_OUT<=16'b1;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	'b1011: begin
		if(A>B)
		begin
			ALU_OUT<=16'b10;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	'b1100: begin
		if(A<B)
		begin
			ALU_OUT<=16'b11;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	'b1101: ALU_OUT<=A>>1;
	'b1110: ALU_OUT<=A<<1;
	default: ALU_OUT<=16'b0;
    endcase
end
end
endmodule