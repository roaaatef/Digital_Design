module SYSTEM_TOP
#(
parameter DATA_WIDTH=8,
parameter FUNC=4,
parameter DEPTH=16,
parameter ADDR=4,
parameter NUM_STAGES=2,
parameter ADDR_WIDTH=3,
parameter BUS_WIDTH=4,
parameter DIV_WIDTH=8
	)(
input RX_IN,
output TX_OUT,
input REF_CLK,UART_CLK,
input RST,
output STP_ERR,PAR_ERR
	);
//////////////internal signals needed fro ctrl///////////////
wire ALU_out_valid;
wire RX_D_VLD;
wire RF_RdData_Valid;
wire FIFO_FULL;
wire[15:0] ALU_OUT;
wire[7:0] RX_P_Data,RF_RD_DATA,RF_WrData,FIFO_WR_Data;
wire ALU_EN;
wire WR_INC_FIFO;
wire [3:0] ALU_FUNC;
wire CLK_GATE_EN;
wire [3:0] RF_Address;
wire RF_RdEn;
wire RF_WrEN;
wire clk_div_en;
/*.......................SYSTEM CONTROL UNIT......................*/
 wire RST_SYNC_D1;
 wire RST_SYNC_D2;
 SYS_CTRL  control_unit (
.ALU_out_valid(ALU_out_valid) ,
 .RX_D_VLD(RX_D_VLD),
.RF_RdData_Valid(RF_RdData_Valid),
.CLK(REF_CLK),.RST(RST_SYNC_D1),
.FIFO_FULL(FIFO_FULL),
.ALU_OUT(ALU_OUT),
.RX_P_Data(RX_P_Data),
.RF_RD_DATA(RF_RD_DATA),
.ALU_EN(ALU_EN),
.WR_INC_FIFO(WR_INC_FIFO),
.ALU_FUNC(ALU_FUNC),
.CLK_GATE_EN(CLK_GATE_EN),
 .RF_Address(RF_Address),
.RF_WrEN(RF_WrEN),.RF_RdEn(RF_RdEn),
.RF_WrData(RF_WrData),
.FIFO_WR_Data(FIFO_WR_Data),
 .clk_div_en(clk_div_en)
	);
 /*.....................clock gate....................*/
 wire CLK_GATED;
 CLK_GATE clk_gate (.CLK_EN(CLK_GATE_EN),.CLK(REF_CLK),.GATED_CLK(CLK_GATED)
);
  /*....................REGISTER FILE..................*/
 wire [7:0] DIV_RATIO;
 wire [7:0] UART_CONFIG;
  wire [7:0] A_to_reg,B_to_reg;
 Register_file #(ADDR,DATA_WIDTH,DATA_WIDTH,DEPTH) reg_file (
 .WrData(RF_WrData),
.REF_CLK(REF_CLK),.RST(RST_SYNC_D1),
.WrEn(RF_WrEN),.RdEn(RF_RdEn),
.Address(RF_Address),
.RdData(RF_RD_DATA),
.RdData_Valid(RF_RdData_Valid) ,
.REG0(A_to_reg),.REG1(B_to_reg),.REG2(UART_CONFIG),.REG3(DIV_RATIO)
);
 /*.....................ALU...............................*/
 ALU  #(DATA_WIDTH,FUNC)alu (
.A(A_to_reg),.B(B_to_reg),
 .ALU_OUT(ALU_OUT),
. ALU_FUN(ALU_FUNC),
 .REF_CLK(CLK_GATED),.EN(ALU_EN),.RST(RST_SYNC_D1),
.ALU_OUT_VALID(ALU_out_valid)
);

 /*.............RST DOMAIN 1 CLK SYNC....................*/
  RST_SYNC  #(NUM_STAGES) rst_sync_d1(.RST(RST),.CLK(REF_CLK),.RST_SYNC(RST_SYNC_D1));
/*.............RST DOMAIN 2 CLK SYNC....................*/
  RST_SYNC  #(NUM_STAGES) rst_sync_d2(.RST(RST),.CLK(UART_CLK),.RST_SYNC(RST_SYNC_D2));
/*.....................ASYNC FIFO...........................*/
wire TX_CLK,RX_CLK;
wire RINC;
wire FIFO_EMPTY;
wire [7:0] RD_DATA;
wire [7:0] in_div_ratio;
 FIFO_TOP #(DATA_WIDTH,ADDR_WIDTH,BUS_WIDTH) fifo
(
.RD_CLK(TX_CLK),.WR_CLK(REF_CLK),.RD_RST(RST_SYNC_D2),.WR_RST(RST_SYNC_D1),
.WINC(WR_INC_FIFO),.RINC(RINC),
.WDATA(FIFO_WR_Data),
.FULL(FIFO_FULL),.EMPTY(FIFO_EMPTY),.RDATA(RD_DATA));
/*.................................CHOOSE DIVISON RATIO BLOCK..................*/
input_division_rx_ratio div (
.prescale(UART_CONFIG[7:2]),.in_div_ratio(in_div_ratio)
	);
/*.........................CLOCK DIV RX.......................*/
 CLOCK_DIV  #(DIV_WIDTH)clk_div_1 (.i_ref_clk(UART_CLK),
.i_rst_n(RST_SYNC_D2),
.i_clk_en(clk_div_en),
.i_div_ratio(in_div_ratio),
.o_div_clk(RX_CLK)
	);
 /*.........................CLOCK DIV. TX......................*/
 CLOCK_DIV  #(DIV_WIDTH) clk_div_2 (.i_ref_clk(UART_CLK),
.i_rst_n(RST_SYNC_D2),
.i_clk_en(clk_div_en),
.i_div_ratio(DIV_RATIO),
.o_div_clk(TX_CLK)
	);
 /*...........................DATA SYNC.......................*/
 wire [7:0] RX_DATA;
 wire RX_VALID;
 DATA_SYNC 
	  #(DATA_WIDTH,NUM_STAGES) data_sync (
.CLK_DESTINATION(REF_CLK),    
.RST_DESTINATION(RST_SYNC_D1),
	.bus_enable(RX_VALID), 
.unsync_bus(RX_DATA),
.sync_bus(RX_P_Data),
.enable_pulse(RX_D_VLD)	
);
/*..........................pulse generator..................*/
 BUSY_PULSE_GENERATOR  busy_pulse_gen (
.sync_en(BUSY),
.CLK_DESTINATION(TX_CLK),
.RST_DESTINATION(RST_SYNC_D2),
.enable_pulse(RINC)
);
 /*...........................UART....................*/
  UART_SYS_TOP #(DATA_WIDTH) uart (
.RX_IN(RX_IN),
.RX_CLK(RX_CLK),.TX_CLK(TX_CLK),
.parity_en(UART_CONFIG[0]),.parity_typ(UART_CONFIG[1]),
.prescale(UART_CONFIG[7:2]),
.RST(RST_SYNC_D2),
.FIFO_EMPTY(FIFO_EMPTY),
.FIFO_DATA(RD_DATA),
.BUSY(BUSY),
.RX_VALID(RX_VALID),
.RX_P_DATA(RX_DATA),
.TX_OUT(TX_OUT),
.PAR_ERR(PAR_ERR),.STP_ERR(STP_ERR)
	);
endmodule