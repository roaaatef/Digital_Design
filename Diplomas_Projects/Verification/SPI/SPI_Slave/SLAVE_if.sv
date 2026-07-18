interface SLAVE_if (clk);

/*...............................inputs and outputs..................*/
  input clk;
logic            MOSI, rst_n, SS_n, tx_valid;
logic     [7:0] tx_data;
logic [9:0] rx_data;
logic       rx_valid, MISO;
////////////////////////////////
logic [9:0] rx_data_exp;
logic rx_valid_exp;
logic MISO_exp;
modport DUT (input clk,SS_n,rst_n,tx_valid,MOSI,tx_data,output rx_data,rx_valid,MISO);
modport GOLDEN (input clk,SS_n,rst_n,tx_valid,MOSI,tx_data,output rx_data_exp,rx_valid_exp,MISO_exp );
endinterface 
