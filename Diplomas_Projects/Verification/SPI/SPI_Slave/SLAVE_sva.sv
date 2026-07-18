
module SLAVE_sva (SLAVE_if.DUT s_if);
/*.......................................concurrent assertions............................*/
///////////////////////////////////////write addr  ASSERTION////////////////////////////////
a1: assert property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==0[*3])|-> ##10 s_if.rx_valid==1 ##1 s_if.SS_n==1[->1]);
c1: cover property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==0[*3])|-> ##10 s_if.rx_valid==1 ##1 s_if.SS_n==1[->1]);
///////////////////////////////////////write data  ASSERTION////////////////////////////////
a2: assert property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==0[*2] ##1 s_if.MOSI==1)|-> ##10 s_if.rx_valid==1##1 s_if.SS_n==1[->1]);
c2: cover property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==0[*2] ##1 s_if.MOSI==1)|-> ##10 s_if.rx_valid==1##1 s_if.SS_n==1[->1]);
///////////////////////////////////////read addr  ASSERTION////////////////////////////////
a3: assert property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n)  ##1 s_if.MOSI==1[*2] ##1 s_if.MOSI==0)|-> ##10 s_if.rx_valid==1##1 s_if.SS_n==1[->1]);
c3: cover property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==0[*2] ##1 s_if.MOSI==0)|-> ##10 s_if.rx_valid==1##1 s_if.SS_n==1[->1]);
///////////////////////////////////////read data  ASSERTION////////////////////////////////
a4: assert property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n)  ##1 s_if.MOSI==1[*3] )|-> ##10 s_if.rx_valid==1 ##1 s_if.SS_n==1[->1] );
c4: cover property (@(posedge s_if.clk) disable iff (!s_if.rst_n) ($fell(s_if.SS_n) ##1 s_if.MOSI==1[*3] )|-> ##10 s_if.rx_valid==1##1 s_if.SS_n==1[->1] );
/*.......................................reset assertion.....................*/
reset_a:assert property (@(posedge s_if.clk)  (!s_if.rst_n) |=>(s_if.MISO==0&&s_if.rx_valid==0&&s_if.rx_data==0));
reset_c: cover property (@(posedge s_if.clk)  (!s_if.rst_n) |=>(s_if.MISO==0&&s_if.rx_valid==0&&s_if.rx_data==0));

endmodule	
