module spr_tb();
parameter MEM_WIDTH=16;
parameter MEM_DEPTH=1024;
parameter ADDR_SIZE=10;
reg clk,rst;
reg rd_en,wr_en,blk_select,addr_en,dout_en;
reg [MEM_WIDTH-1:0] din;
reg [ADDR_SIZE-1:0] addr;
wire parity_out;
wire [MEM_WIDTH-1:0] dout;
////////////////////
spr SPR (clk,rst,din,addr,wr_en,rd_en,blk_select,addr_en,dout_en,dout,parity_out);
//////////////////////////////////
initial begin
	clk=0;
	 forever 
	 #1 clk=~clk;
end
integer i;
initial begin
	$readmemh("mem.dat",SPR.mem);
	rst=1;
	rd_en=0;
	wr_en=1;
	dout_en=0;
	blk_select=1;
addr=10'd1020;
din=16'd20;
addr_en=0;
	@(negedge clk);
	rst=0;

	rd_en=0;
	
		for(i=0;i<30;i=i+1)
	begin
		blk_select=$random;
		
		addr=$random;
		wr_en=$random;
addr_en=$random;
dout_en=$random;
		din=$random;
		@(negedge clk);
	end
////////////////////////////////////////////////////////////////////////////////////////////
	wr_en=0;
	

	for(i=0;i<30;i=i+1) begin
		blk_select=$random;
		addr=$random;
		rd_en=$random;
		addr_en=$random;
dout_en=$random;
		
		@(negedge clk);
	end
	
	$stop;
end
endmodule 