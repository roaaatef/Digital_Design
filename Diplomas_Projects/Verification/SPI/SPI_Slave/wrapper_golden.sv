module wrapper_golden (SPI_WRAPPER_if.golden w_if);
	wire  MOSI, SS_n, clk, rst_n;
wire MISO_exp;

wire [9:0] rx_data_din;
wire       rx_valid;
wire       tx_valid;
wire [7:0] tx_data_dout;

RAM_golden   RAM_instance_g   (rx_data_din,clk,rst_n,rx_valid,tx_data_dout,tx_valid);
SPI_SLAVE_golden SLAVE_instance_g (MOSI,MISO_exp,SS_n,clk,rst_n,rx_data_din,rx_valid,tx_data_dout,tx_valid);

endmodule