module UART_RX_TOP #(parameter DATA_WIDTH=8)(
input CLK,RST_n,
input PAR_EN,PAR_TYP,
input RX_IN,
input [5:0] prescale,
output data_valid,
output [DATA_WIDTH-1:0] P_DATA,
output stp_err,par_err

	);
//internal wires of FSM
wire par_chk_en,strt_chk_en,stp_chk_en;
wire strt_glitch;
wire deser_en,dat_samp_en;
wire enable_edge,enable_bit;
wire [3:0] bit_cnt;
 wire sampled_bit;
//FSM instantiation
wire  [5:0] edge_cnt;
 FSM  fsm_2 (CLK,RST_n,PAR_EN,par_err,stp_err,strt_glitch,
RX_IN,
bit_cnt,edge_cnt,prescale,
par_chk_en,
strt_chk_en,
stp_chk_en,
deser_en, 
data_valid,
 enable_edge,enable_bit,
dat_samp_en
	);
 //data sampler instantiation
 DATA_SAMPLING  dt_sam (CLK,RST_n,RX_IN,prescale,dat_samp_en,
edge_cnt,
sampled_bit
	);
//de serializer 
 DE_SERIALIZER #(DATA_WIDTH) de_ser (CLK,RST_n,sampled_bit,deser_en,bit_cnt,edge_cnt,prescale,P_DATA

	);
 //edge bit counter
 EDGE_BIT_COUNTER edge_bit (CLK,RST_n,enable_edge,enable_bit,PAR_EN,prescale,edge_cnt,bit_cnt

	);
 //parity chk
  PARITY_CHECK  par_chk (CLK,RST_n,P_DATA,par_chk_en,PAR_TYP,sampled_bit,edge_cnt,prescale,par_err

	);
  //strt chk
 STR_CHECK str_chk (CLK,RST_n,strt_chk_en,sampled_bit,edge_cnt,prescale,strt_glitch
	);
 //stp check
  STOP_CHECK  stp_chk (CLK,RST_n,stp_chk_en,sampled_bit,edge_cnt,prescale,stp_err
	);
  endmodule
