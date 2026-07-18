module FIFO_MEM #(parameter ADDR_WIDTH=3,parameter DATA_WIDTH=8,parameter DEPTH=8)
(
input [ADDR_WIDTH-1:0] WADDR,RADDR,
input [DATA_WIDTH-1:0] WDATA,
input WR_CLK,RST,
input WINC,WFULL,
output [DATA_WIDTH-1:0] RDATA
	);
/*.............FIFO...*/
reg [DATA_WIDTH-1:0] FIFO [DEPTH-1:0];
/////////////////////////////
/*.........logic....*/
/*.........writing operation.....*/
integer i;
always @(posedge WR_CLK or negedge RST) begin
	if(~RST) begin
		  for(i=0;i<DEPTH;i=i+1) begin 
     FIFO[i] <= {DATA_WIDTH{1'b0}} ;
 end
   end
	else if (!WFULL&WINC) begin
		FIFO[WADDR]<=WDATA;
	end
end
assign RDATA=FIFO[RADDR];
endmodule