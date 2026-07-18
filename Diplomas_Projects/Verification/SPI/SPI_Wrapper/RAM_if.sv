interface RAM_if (clk);
parameter ADDR_SIZE=8;
parameter MEM_DEPTH=256;
parameter WORD_SIZE=8;
/*...............................inputs and outputs..................*/
  input clk;
logic  [9:0] din;
logic  rst_n, rx_valid;
logic [WORD_SIZE-1:0] dout;
logic   tx_valid;
logic tx_valid_exp;
logic [WORD_SIZE-1:0] dout_exp;
modport DUT (input clk,din,rst_n,rx_valid,output tx_valid,dout);
modport GOLDEN (input clk,din,rst_n,rx_valid,output tx_valid_exp,dout_exp );
endinterface 
