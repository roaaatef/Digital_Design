module ALU (
input [15:0] A,B,
output reg [15:0] ALU_OUT,
input [3:0] ALU_FUN,
input CLK,
output reg Carry_Flag,
output reg Arith_flag,Logic_flag,CMP_flag,Shift_flag
	);
// RTL code
always @(posedge CLK)
begin
	case(ALU_FUN)
	4'b0000: {Carry_Flag,ALU_OUT}<=A+B;
	4'b0001:  {Carry_Flag,ALU_OUT}<=A-B;
	4'b0010: ALU_OUT<=A*B;
	4'b0011:  begin
	if(B!=0)
	begin
	   ALU_OUT<=A/B;
	end
	end
	4'b0100: ALU_OUT<=A&B;
	4'b0101: ALU_OUT<=A|B;
	4'b0110: ALU_OUT<=~(A&B);
	4'b0111: ALU_OUT<=~(A|B);
	4'b1000: ALU_OUT<=A^B;
	4'b1001: ALU_OUT<=~(A^B);
	4'b1010: begin
		if(A==B) 
		begin
			ALU_OUT<=16'b1;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	4'b1011: begin
		if(A>B)
		begin
			ALU_OUT<=16'b10;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	4'b1100: begin
		if(A<B)
		begin
			ALU_OUT<=16'b11;
		end
		else begin
			ALU_OUT<=16'b0;
		end
	end
	4'b1101: ALU_OUT<=A>>1;
	4'b1110: ALU_OUT<=A<<1;
	default: ALU_OUT<=16'b0;
    endcase
end

always @(posedge CLK) 
begin
	if(ALU_FUN==4'b0000||ALU_FUN==4'b0001||ALU_FUN==4'b0010||ALU_FUN==4'b0011)
	begin
		Arith_flag<=1'b1;
	end
	else begin
		Arith_flag<=1'b0;
	end

end
always @(posedge CLK) 
begin
	if(ALU_FUN==4'b0100||ALU_FUN==4'b0101||ALU_FUN==4'b0110||ALU_FUN==4'b0111||ALU_FUN==4'b1000||ALU_FUN==4'b1001)
	begin
		Logic_flag<=1'b1;
	end
	else begin
		Logic_flag<=1'b0;
	end
end
always @(posedge CLK)
begin
	if(ALU_FUN==4'b1010||ALU_FUN==4'b1011||ALU_FUN==4'b1100)
	begin
		CMP_flag<=1'b1;
	end
	else begin
		CMP_flag<=1'b0;
	end
end
always @(posedge CLK) 
begin
	if(ALU_FUN==4'b1101||ALU_FUN==4'b1110)
	begin
		Shift_flag<=1'b1;
	end
	else begin
		Shift_flag<=1'b0;
	end
end

endmodule