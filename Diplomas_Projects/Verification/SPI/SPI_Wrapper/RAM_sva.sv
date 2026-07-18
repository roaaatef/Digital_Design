
module RAM_sva (    input bit clk,
 input logic  [9:0] din,
 input logic  rst_n, rx_valid,
input logic [7:0] dout,
input logic   tx_valid);
/*.......................................concurrent assertions............................*/
///////////////////////////////////////FIRST ASSERTION////////////////////////////////
a_1:assert property (@(posedge clk) disable iff (!rst_n) ((din[9:8]==2'b00||din[9:8]==2'b01||din[9:8]==2'b10)&&rx_valid)
  |=>tx_valid==0);
c_1: cover property (@(posedge clk) disable iff (!rst_n) ((din[9:8]==2'b00||din[9:8]==2'b01||din[9:8]==2'b10)&&rx_valid)
  |=>tx_valid==0);
////////////////////////////////////SECOND ASSERTION////////////////////////////
a_2:assert property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b11&&rx_valid)
  |=>tx_valid==1  ##1 tx_valid==0 [->1]);
c_2: cover property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b11&&rx_valid)
  |=>tx_valid==1  ##1 tx_valid==0[->1]);
////////////////////////////////////THIRD ASSERTION/////////////////////////////////
a_3:assert property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b00&rx_valid)
  |=>din[9:8] ==2'b01 [->1]);
c_3: cover property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b00&rx_valid)
  |=>din[9:8] ==2'b01 [->1]);
///////////////////////////////////FOURTH ASSERTION////////////////////////////////
a_4:assert property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b10&rx_valid)
  |=>din[9:8]  ==2'b11 [->1]);
c_4: cover property (@(posedge clk) disable iff (!rst_n) (din[9:8]==2'b10&rx_valid)
  |=>din[9:8]  ==2'b11 [->1]);
/*.......................................reset assertion.....................*/
reset_a:assert property (@(posedge clk)  (!rst_n) |=>(dout==0&&tx_valid==0));
reset_c: cover property (@(posedge clk)  (!rst_n) |=>(dout==0&&tx_valid==0));

endmodule	
