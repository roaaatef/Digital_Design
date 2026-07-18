module FIFO_MEM #(parameter ADDR_WIDTH=3,parameter DATA_WIDTH=8,parameter DEPTH=8)
(
input [ADDR_WIDTH-1:0] WADDR,RADDR,
input [DATA_WIDTH-1:0] WDATA,
input WR_CLK,
input WINC,WFULL,
output [DATA_WIDTH-1:0] RDATA
	);
/*.............FIFO...*/
reg [DATA_WIDTH-1:0] FIFO [DEPTH-1:0];
wire WEN;
/////////////////////////////
assign WEN =!WFULL&WINC ;
/*.........logic....*/
/*.........writing operation.....*/
always @(posedge WR_CLK) begin
	if (WEN) begin
		FIFO[WADDR]<=WDATA;
	end
end
assign RDATA=FIFO[RADDR];
endmodule