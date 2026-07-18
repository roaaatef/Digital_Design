
module SLAVE_sva  (
      input bit clk,
 input logic            MOSI, rst_n, SS_n, tx_valid,
 input logic     [7:0] tx_data,
 input logic [9:0] rx_data,
input  logic       rx_valid, MISO
    );
/*.......................................concurrent assertions............................*/
///////////////////////////////////////write addr  ASSERTION////////////////////////////////
a1: assert property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==0[*3])|-> ##10 rx_valid==1 ##1 SS_n==1[->1]);
c1: cover property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==0[*3])|-> ##10 rx_valid==1 ##1 SS_n==1[->1]);
///////////////////////////////////////write data  ASSERTION////////////////////////////////
a2: assert property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==0[*2] ##1 MOSI==1)|-> ##10 rx_valid==1##1 SS_n==1[->1]);
c2: cover property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==0[*2] ##1 MOSI==1)|-> ##10 rx_valid==1##1 SS_n==1[->1]);
///////////////////////////////////////read addr  ASSERTION////////////////////////////////
a3: assert property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n)  ##1 MOSI==1[*2] ##1 MOSI==0)|-> ##10 rx_valid==1##1 SS_n==1[->1]);
c3: cover property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==0[*2] ##1 MOSI==0)|-> ##10 rx_valid==1##1 SS_n==1[->1]);
///////////////////////////////////////read data  ASSERTION////////////////////////////////
a4: assert property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n)  ##1 MOSI==1[*3] )|-> ##10 rx_valid==1 ##1 SS_n==1[->1] );
c4: cover property (@(posedge clk) disable iff (!rst_n) ($fell(SS_n) ##1 MOSI==1[*3] )|-> ##10 rx_valid==1##1 SS_n==1[->1] );
/*.......................................reset assertion.....................*/
reset_a:assert property (@(posedge clk)  (!rst_n) |=>(MISO==0&&rx_valid==0&&rx_data==0));
reset_c: cover property (@(posedge clk)  (!rst_n) |=>(MISO==0&&rx_valid==0&&rx_data==0));

endmodule	
