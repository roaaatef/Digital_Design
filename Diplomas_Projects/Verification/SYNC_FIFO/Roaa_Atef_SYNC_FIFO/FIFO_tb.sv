import FIFO_transaction_pkg::*;
import shared_pkg::*;
//////////////////////////////////
module FIFO_tb(fifo_if.TEST f_if);
///////////////////////////////////
event ev;
/*.................................assert reset task .....................*/
task assert_reset;
	f_if.rst_n=1;
	@(negedge f_if.clk);
	-> ev;
     f_if.rst_n=0;
     @(negedge f_if.clk);
     -> ev;
     //@( negedge f_if.clk);
     f_if.rst_n=1;
     //@( negedge f_if.clk);
 endtask 
 integer i;
initial begin

	FIFO_transaction fifo_tb;
	fifo_tb=new();
	assert_reset();

for (i=0;i<20000;i=i+1) begin
	assert(fifo_tb.randomize());
	f_if.rst_n=fifo_tb.rst_n;
	f_if.data_in=fifo_tb.data_in;
	f_if.rd_en=fifo_tb.rd_en;
	f_if.wr_en=fifo_tb.wr_en;
	 @( negedge f_if.clk);
	-> ev;
	//@( negedge f_if.clk);
end	
test_finished=1;

end

endmodule
