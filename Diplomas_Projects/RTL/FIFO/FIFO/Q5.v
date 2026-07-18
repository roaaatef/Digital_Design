module FIFO(din_a,wen_a,ren_b,clk_a,clk_b,rst,dout_b,full,empty);
parameter FIFO_WIDTH=16;
parameter FIFO_DEPTH=512;
input clk_a,clk_b,rst;
input wen_a,ren_b;
output reg [FIFO_WIDTH-1:0] dout_b;
input [FIFO_WIDTH-1:0] din_a;
output full,empty;
//////////////////////////
reg [9:0] rd_ptr,wr_ptr;
reg [FIFO_WIDTH-1:0] fifo [FIFO_DEPTH-1:0];
//////////////////////////////////////
  assign full  = ((wr_ptr[8:0] == rd_ptr[8:0])&&(wr_ptr[9]!=rd_ptr[9])) ?1'b1:1'b0;
    assign empty = (wr_ptr == rd_ptr)?1'b1:1'b0;
always @ (posedge clk_a ) begin
	if(rst) begin
		wr_ptr<=0;
	end
	else if ((wen_a)&&(!full)) begin
		fifo[wr_ptr[8:0]]<=din_a;
		wr_ptr<=wr_ptr+1'd1;

	end
end
always @(posedge clk_b) begin
	if(rst) begin
		rd_ptr<=0;
		dout_b<=0;
	end
	else if ((ren_b)&&(!empty)) begin
		dout_b<=fifo[rd_ptr[8:0]];
		rd_ptr<=rd_ptr+1'd1;
	end
end
endmodule
