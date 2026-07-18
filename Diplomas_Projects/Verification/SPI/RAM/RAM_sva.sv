
module RAM_sva (RAM_if.DUT r_if);
/*.......................................concurrent assertions............................*/
///////////////////////////////////////FIRST ASSERTION////////////////////////////////
a_1:assert property (@(posedge r_if.clk) disable iff (!r_if.rst_n) ((r_if.din[9:8]==2'b00||r_if.din[9:8]==2'b01||r_if.din[9:8]==2'b10)&&r_if.rx_valid)
  |=>r_if.tx_valid==0);
c_1: cover property (@(posedge r_if.clk) disable iff (!r_if.rst_n) ((r_if.din[9:8]==2'b00||r_if.din[9:8]==2'b01||r_if.din[9:8]==2'b10)&&r_if.rx_valid)
  |=>r_if.tx_valid==0);
////////////////////////////////////SECOND ASSERTION////////////////////////////
a_2:assert property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b11&&r_if.rx_valid)
  |=>r_if.tx_valid==1  ##1 r_if.tx_valid==0 [->1]);
c_2: cover property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b11&&r_if.rx_valid)
  |=>r_if.tx_valid==1  ##1 r_if.tx_valid==0[->1]);
////////////////////////////////////THIRD ASSERTION/////////////////////////////////
a_3:assert property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b00&r_if.rx_valid)
  |=>r_if.din[9:8] ==2'b01 [->1]);
c_3: cover property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b00&r_if.rx_valid)
  |=>r_if.din[9:8] ==2'b01 [->1]);
///////////////////////////////////FOURTH ASSERTION////////////////////////////////
a_4:assert property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b10&r_if.rx_valid)
  |=>r_if.din[9:8]  ==2'b11 [->1]);
c_4: cover property (@(posedge r_if.clk) disable iff (!r_if.rst_n) (r_if.din[9:8]==2'b10&r_if.rx_valid)
  |=>r_if.din[9:8]  ==2'b11 [->1]);
/*.......................................reset assertion.....................*/
reset_a:assert property (@(posedge r_if.clk)  (!r_if.rst_n) |=>(r_if.dout==0&&r_if.tx_valid==0));
reset_c: cover property (@(posedge r_if.clk)  (!r_if.rst_n) |=>(r_if.dout==0&&r_if.tx_valid==0));

endmodule	
