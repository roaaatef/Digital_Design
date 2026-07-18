module CMP_UNIT #(parameter IN_DATA_WIDTH=16, ALU_OUT_WIDTH=16)
(
input CLK,RST,CMP_EN,
input [IN_DATA_WIDTH-1:0] A,B,
input [1:0] CMP_IN,
output reg CMP_flag,
output reg [ALU_OUT_WIDTH-1:0] CMP_OUT
);
//
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		CMP_OUT<='b0;
	end
	else  if (CMP_EN) begin
		case(CMP_IN)
		2'b00:CMP_OUT<='b0;
		2'b01:begin
		if(A==B)
        CMP_OUT<='b1;
        else begin
        	CMP_OUT<='b0;
        end
        end
		2'b10:begin
		if(A>B)
		CMP_OUT<='b10;
		else begin
			CMP_OUT<='b0;
		end
		end
		2'b11:begin
		if(A<B)
		CMP_OUT<='b11;
		else begin
			CMP_OUT<='b0;
		end
		end
		endcase
	end
	else begin
		CMP_OUT<='b0;
	end
end
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		CMP_flag<=1'b0;
	end
	else if (CMP_EN) begin
	
		CMP_flag<=1'b1;
	end
	else begin
		CMP_flag<=1'b0;
	end
end
endmodule

