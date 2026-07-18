module FIFO_WR #(parameter BUS_WIDTH=4)
(
input WINC,
input WR_CLK,WR_RST,
input [BUS_WIDTH-1:0] RD_SYNC,
output  [BUS_WIDTH-2:0] WADDR,
output [BUS_WIDTH-1:0] WR_PTR,
output  FULL
	);
/*......other signals...*/
reg [BUS_WIDTH-1:0] WR_PTR_bin;
/*................pointer increment....*/
always @(posedge WR_CLK or negedge WR_RST) begin 
	if(~WR_RST) begin
		 WR_PTR_bin<= 0;
		
	end 
	else if (WINC) begin
		WR_PTR_bin<=WR_PTR_bin+1 ;
		
	end
end
/*...... RADDR generation......*/
assign WADDR=WR_PTR_bin[BUS_WIDTH-2:0];
/*......GRAY ENCDING.....*/
 assign WR_PTR = WR_PTR_bin ^ (WR_PTR_bin >> 1);
 /*.....FULL FLAG generation....*/
assign FULL=((RD_SYNC[BUS_WIDTH-3:0] ==WR_PTR[BUS_WIDTH-3:0])&(WR_PTR[BUS_WIDTH-1]!=RD_SYNC[BUS_WIDTH-1])&(WR_PTR[BUS_WIDTH-2]!=RD_SYNC[BUS_WIDTH-2]))?1:0;
endmodule
