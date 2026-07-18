module FIFO_RD #(parameter BUS_WIDTH=4)
(
input RINC,
input RD_CLK,RD_RST,
input [BUS_WIDTH-1:0] WR_SYNC,
output   [BUS_WIDTH-2:0] RADDR,
output  reg [BUS_WIDTH-1:0] RD_PTR,
output  EMPTY
	);
/*......other signals...*/
reg  [BUS_WIDTH-1:0] RD_PTR_bin;
wire [BUS_WIDTH-1:0] RD_GRAY_PTR_COMB;
/*................pointer increment....*/
always @(posedge RD_CLK or negedge RD_RST) begin 
	if(~RD_RST) begin
		 RD_PTR_bin<= 0;
	end 
	else if (RINC&!EMPTY) begin
		RD_PTR_bin<=RD_PTR_bin+1 ;
	end
end
/*...............gray ptr registering...............*/
always @(posedge RD_CLK or negedge RD_RST) begin 
	if(~RD_RST) begin
		 RD_PTR<= 0;
	end 
	else  begin
		RD_PTR<=RD_GRAY_PTR_COMB ;
	end
end
/*...... RADDR generation......*/
assign RADDR=RD_PTR_bin[BUS_WIDTH-2:0];
/*......GRAY ENCDING.....*/
 assign RD_GRAY_PTR_COMB = RD_PTR_bin ^ (RD_PTR_bin >> 1);
 /*.....EMPTY FLAG generation....*/
assign EMPTY=(WR_SYNC[BUS_WIDTH-1:0] ==RD_GRAY_PTR_COMB[BUS_WIDTH-1:0])?1:0;
endmodule