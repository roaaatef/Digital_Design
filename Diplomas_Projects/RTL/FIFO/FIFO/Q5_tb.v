module fifo_tb();
parameter FIFO_WIDTH=16;
parameter FIFO_DEPTH=512;
reg clk_a,clk_b,rst;
reg wen_a,ren_b;
wire [FIFO_WIDTH-1:0] dout_b;
reg [FIFO_WIDTH-1:0] din_a;
wire full,empty;
/////////////////
FIFO fifo (din_a,wen_a,ren_b,clk_a,clk_b,rst,dout_b,full,empty);
////////////////////////////////////////////////
initial begin
	clk_a=0;
	clk_b=0;
	forever
	begin
		#1 clk_a=~clk_a; clk_b=~clk_b;
	end
end
initial begin
$readmemh("mem.dat",fifo.fifo);
	rst=1;
	wen_a=1;
	ren_b=0;
	din_a=16'd20;
	@(negedge clk_a);
	rst=0;
	wen_a=0;
	ren_b=1;
	repeat(2) begin
@(negedge clk_a);
	end
wen_a=1;
ren_b=0;
din_a=16'd20;
	repeat(512) begin
		//din_a=$random;
@(negedge clk_a);
	end
	din_a=16'd5;
	@(negedge clk_a);
	wen_a=0;
	ren_b=1;
	repeat(12) begin
@(negedge clk_a);
	end
wen_a=1;
ren_b=0;
	repeat(13) begin
		din_a=$random;
@(negedge clk_a);
	end
	wen_a=0;
ren_b=1;
	repeat(513) begin
		din_a=$random;
@(negedge clk_a);
	end
	$stop;
end
endmodule
