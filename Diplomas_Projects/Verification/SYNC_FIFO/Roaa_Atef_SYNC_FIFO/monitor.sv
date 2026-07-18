import FIFO_transaction_pkg::*;
import FIFO_scoreboard_pkg::*;
import FIFO_coverage_pkg::*;
import shared_pkg::*;
////////////////////////////////////////////////////////
module monitor (fifo_if.MONITOR f_if);
        FIFO_scoreboard scr_b=new();
FIFO_coverage cov=new();
FIFO_transaction trans=new();

initial begin

	forever begin
        @ ev;
        @( negedge f_if.clk);
       trans.data_in=f_if.data_in;
       trans.rst_n=f_if.rst_n;
       trans.wr_en=f_if.wr_en;
       trans.rd_en=f_if.rd_en;
       trans.data_out=f_if.data_out;
       trans.wr_ack=f_if.wr_ack;
       trans.overflow=f_if.overflow;
       trans.full=f_if.full;
       trans.empty=f_if.empty;
       trans.almostfull=f_if.almostfull;
       trans.almostempty=f_if.almostempty;
       trans.underflow=f_if.underflow;
       fork
       	begin
       		cov.sampled_data(trans);
       	end
       	begin
       		scr_b.check_data(trans);
       	end
       join
       if(test_finished) begin
       	$display("error count value is : %d & correct count value is : %d",error_count,correct_count);
       	$stop;
       end

	end
end




endmodule