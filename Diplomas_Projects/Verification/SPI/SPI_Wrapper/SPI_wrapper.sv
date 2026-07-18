module WRAPPER (SPI_WRAPPER_if.DUT w_if);



wire [9:0] rx_data_din;
wire       rx_valid;
wire       tx_valid;
wire [7:0] tx_data_dout;

RAM   RAM_instance   (.din(rx_data_din),.clk (w_if.clk),.rst_n(w_if.rst_n),.rx_valid(rx_valid),.dout(tx_data_dout),.tx_valid(tx_valid));
SLAVE SLAVE_instance (.MOSI(w_if.MOSI),.MISO(w_if.MISO),.SS_n(w_if.SS_n),.clk(w_if.clk),.rst_n(w_if.rst_n),.rx_data(rx_data_din),.rx_valid(rx_valid),.tx_data(tx_data_dout),.tx_valid(tx_valid));

endmodule