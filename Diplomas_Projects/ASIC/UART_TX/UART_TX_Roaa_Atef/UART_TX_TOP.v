module UART_TX_TOP (
input CLK,RST,
input DATA_VALID,PAR_EN,PAR_TYP,
input [7:0] P_DATA,
output TX_OUT,busy
	);
wire ser_en,ser_done,ser_data;
// serializer
 SERIALIZER ser (.DATA_VALID(DATA_VALID),.BUSY(busy),.P_DATA(P_DATA),.CLK(CLK),.RST(RST),.ser_en(ser_en),.ser_done(ser_done),
.ser_data(ser_data)
	);
 //
 wire [1:0] mux_sel;
 wire par_bit;
 //mux
 MUX mux (
.mux_sel(mux_sel),.ser_data(ser_data),.par_bit(par_bit),
.TX_OUT(TX_OUT)
	);

 //
 //parity calc
PARITY_CALC  par (.CLK(CLK),.BUSY(busy),.RST(RST),
.P_DATA(P_DATA),
.DATA_VALID(DATA_VALID),
.PAR_TYP(PAR_TYP),
.PAR_BIT(par_bit)
);
//
//fsm
 FSM fsm (

 .DATA_VALID(DATA_VALID),.PAR_EN(PAR_EN),.ser_done(ser_done),
.CLK(CLK),.RST(RST),
.BUSY(busy),.ser_en(ser_en),
.MUX_SEL(mux_sel)

	);
 endmodule
