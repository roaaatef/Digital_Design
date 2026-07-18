package shared_pkg;
	/*......................parameters....................*/
parameter FIFO_WIDTH = 16;
parameter FIFO_DEPTH = 8;
parameter ADDR_SIZE=3;
	bit test_finished;
	event ev;
integer  error_count=0;
integer correct_count=0;
endpackage 