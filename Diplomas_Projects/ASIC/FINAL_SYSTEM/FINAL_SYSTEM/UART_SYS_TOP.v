module UART_SYS_TOP #(parameter DATA_WIDTH=8)(
input RX_IN,
input RX_CLK,TX_CLK,
input parity_en,parity_typ,
input [5:0] prescale,
input RST,
input FIFO_EMPTY,
input [DATA_WIDTH-1:0] FIFO_DATA,
output BUSY,
output RX_VALID,
output [DATA_WIDTH-1:0] RX_P_DATA,
output TX_OUT,
output PAR_ERR,STP_ERR
	);

/*............................TX.......................*/
 UART_TX_TOP #(DATA_WIDTH) tx (.CLK(TX_CLK),.RST(RST),.FIFO_EMPTY(FIFO_EMPTY),.PAR_EN(parity_en),.PAR_TYP(parity_typ),
.P_DATA(FIFO_DATA),
.TX_OUT(TX_OUT),.busy(BUSY)
	);
 /*.........................RX......................*/
 UART_RX_TOP #(DATA_WIDTH) rx ( .CLK(RX_CLK),.RST_n(RST),
.PAR_EN(parity_en),.PAR_TYP(parity_typ),
.RX_IN(RX_IN),
 .prescale(prescale),
.data_valid(RX_VALID),
.P_DATA(RX_P_DATA),.par_err(PAR_ERR),.stp_err(STP_ERR)
	);
endmodule