module FIFO_TOP #( parameter DATA_WIDTH=8,parameter ADDR_WIDTH=3,parameter BUS_WIDTH=4)
(
input RD_CLK,WR_CLK,RD_RST,WR_RST,
input WINC,RINC,
input [DATA_WIDTH-1:0] WDATA,
output FULL,EMPTY,
output [DATA_WIDTH-1:0] RDATA
	);
/*.....FIFO MEM......*/
//internal signals//
wire [ADDR_WIDTH-1:0] WADDR,RADDR;
 FIFO_MEM fifo_mem
( .WADDR(WADDR),.RADDR(RADDR), .WDATA(WDATA),.WR_CLK(WR_CLK),.RST(WR_RST),.WINC(WINC),.WFULL(FULL),.RDATA(RDATA));
/*.........RD SYNC......*/
//internal signals//
wire  [BUS_WIDTH-1:0] GRAY_RPTR,RD_PTR_SYNC;
 D_SYNC_RD sync_read
(.WR_CLK(WR_CLK),.GRAY_RPTR(GRAY_RPTR),.WR_RST(WR_RST),.RD_PTR_SYNC(RD_PTR_SYNC));
/*.........WR SYNC......*/
//internal signals//
wire [BUS_WIDTH-1:0] GRAY_WPTR,WR_PTR_SYNC;
 D_SYNC_WR sync_write
(.RD_CLK(RD_CLK),.GRAY_WPTR(GRAY_WPTR),.RD_RST(RD_RST),.WR_PTR_SYNC(WR_PTR_SYNC));
/*.......FIFO RD.......*/
FIFO_RD  rd
( .RINC(RINC),.RD_CLK(RD_CLK),.RD_RST(RD_RST),.WR_SYNC(WR_PTR_SYNC),.RADDR(RADDR),.RD_PTR(GRAY_RPTR),.EMPTY(EMPTY));
/*......FIFO WR......*/ 
FIFO_WR wr
(.WINC(WINC),.WR_CLK(WR_CLK),.WR_RST(WR_RST),.RD_SYNC(RD_PTR_SYNC),.WADDR(WADDR), .WR_PTR(GRAY_WPTR),.FULL(FULL)
	);
endmodule 