module wrapper_golden (SPI_WRAPPER_if.golden w_if);



wire [9:0] rx_data_din_exp;
wire       rx_valid_exp;
wire       tx_valid_exp;
wire [7:0] tx_data_dout_exp;

RAM_golden   RAM_instance_g   (.din(rx_data_din_exp),.clk(w_if.clk),.rst_n(w_if.rst_n),.rx_valid(rx_valid_exp),.dout_exp(tx_data_dout_exp),.tx_valid_exp(tx_valid_exp));
SPI_SLAVE_golden SLAVE_instance_g (.MOSI(w_if.MOSI),.MISO_exp(w_if.MISO_exp),.SS_n(w_if.SS_n),.clk(w_if.clk),.rst_n(w_if.rst_n),.rx_data_exp(rx_data_din_exp),.rx_valid_exp(rx_valid_exp),.tx_data(tx_data_dout_exp),.tx_valid(tx_valid_exp));

endmodule