interface SPI_WRAPPER_if (clk);
/*...............................inputs and outputs..................*/
  input clk;
logic MOSI, SS_n, rst_n;
logic MISO;
logic MISO_exp;
modport DUT (input clk,SS_n,rst_n,MOSI,output MISO);
modport golden (input clk,SS_n,rst_n,MOSI,output MISO_exp);
endinterface 