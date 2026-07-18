module EDGE_BIT_COUNTER (
input CLK,RST_n,
input enable_edge,enable_bit,
input PAR_EN,
input [5:0] prescale,
output reg [5:0] edge_cnt,
output reg [3:0] bit_cnt

	);
//edge count logic
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		
	 edge_cnt<=6'd0;
	end
	else if (prescale==6'd8) begin
	 if (enable_edge&edge_cnt!=6'd7) begin
		   edge_cnt<=edge_cnt+1;
	end
	else begin
		edge_cnt<=6'd0;
	end
	end
	else if (prescale==6'd16) begin
		 if (enable_edge&edge_cnt!=6'd15) begin
		   edge_cnt<=edge_cnt+1;
	end
	else begin
		edge_cnt<=6'd0;
	end
	end
	else if (prescale==6'd32) begin
		 if (enable_edge&edge_cnt!=6'd31) begin
		   edge_cnt<=edge_cnt+1;
	end
	else begin
		edge_cnt<=6'd0;
	end
	end
end
//bit count logic
always @(posedge CLK or negedge RST_n) begin
	if (!RST_n) begin
		
	 bit_cnt<=4'd0;
	end
	else if(PAR_EN) begin
	 if (prescale==6'd8) begin

	 if (enable_bit&bit_cnt!=4'd11&edge_cnt==6'd7) begin
		   bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd11&edge_cnt<6'd7&edge_cnt>=6'd0) begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	else if (prescale==6'd16) begin
		 if (enable_bit&bit_cnt!=4'd11&edge_cnt==6'd15) begin
		   bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd11&edge_cnt<6'd15&edge_cnt>=6'd0)begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	else if (prescale==6'd32) begin
		 if (enable_bit&bit_cnt!=4'd11&edge_cnt==6'd31) begin
		   bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd11&edge_cnt<6'd31&edge_cnt>=6'd0) begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	end
		else  begin
	 if (prescale==6'd8) begin
	 if (enable_bit&bit_cnt!=4'd10&edge_cnt==6'd7) begin
		   bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd10&edge_cnt<6'd7&edge_cnt>=6'd0)begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	else if (prescale==6'd16) begin
		 if (enable_bit&bit_cnt!=4'd10&edge_cnt==6'd15) begin
		 bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd10&edge_cnt<6'd15&edge_cnt>=6'd0)begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	else if (prescale==6'd32) begin
		 if (enable_bit&bit_cnt!=4'd10&edge_cnt==6'd31)begin   	   
		 	bit_cnt<=bit_cnt+1;
	end
	else if (enable_bit&bit_cnt!=4'd10&edge_cnt<6'd31&edge_cnt>=6'd0)begin
		bit_cnt<=bit_cnt;
	end
	else begin
		bit_cnt<=4'd0;
	end
	end
	end
end

endmodule
