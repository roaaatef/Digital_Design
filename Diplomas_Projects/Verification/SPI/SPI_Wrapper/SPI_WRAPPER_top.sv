import uvm_pkg::*;
`include "uvm_macros.svh"
import WRAPPER_test_pkg::*;
module SPI_WRAPPER_top();
  // Clock generation
  bit clk;
  initial begin
    forever #1 clk=~clk;
  end
  // .................................wrapper......................//
  SPI_WRAPPER_if w_if (clk);
  WRAPPER dut_w (w_if);
  wrapper_golden gm (w_if);
  bind WRAPPER wrapper_sva sva_inst_w ( .clk(w_if.clk), .rst_n(w_if.rst_n), .SS_n(w_if.SS_n), .MOSI(w_if.MOSI), .MISO(w_if.MISO));
  //.......................RAM.................................//
 RAM_if r_if (clk);
  //
  //........................SLAVE.......................//
 SLAVE_if s_if (clk);
/////////////////////////////////////////////////////////
//...........................assign signals................................//
/*............................SLAVE assigning...................*/
assign s_if.MOSI = dut_w.SLAVE_instance.MOSI;
assign s_if.rst_n = dut_w.SLAVE_instance.rst_n;
assign s_if.SS_n = dut_w.SLAVE_instance.SS_n;
assign s_if.rx_valid = dut_w.SLAVE_instance.rx_valid;
assign s_if.tx_valid = dut_w.SLAVE_instance.tx_valid;
assign s_if.rx_data = dut_w.SLAVE_instance.rx_data;
assign s_if.tx_data = dut_w.SLAVE_instance.tx_data;
assign s_if.MISO = dut_w.SLAVE_instance.MISO;
/*............................ golden SLAVE assigning...................*/
assign s_if.rx_valid_exp = gm.SLAVE_instance_g.rx_valid_exp;
assign s_if.rx_data_exp = gm.SLAVE_instance_g.rx_data_exp;
assign s_if.MISO_exp = gm.SLAVE_instance_g.MISO_exp;
/*............................RAM assigning...................*/
assign r_if.rst_n= dut_w.RAM_instance.rst_n;
assign r_if.rx_valid= dut_w.RAM_instance.rx_valid;
assign r_if.tx_valid= dut_w.RAM_instance.tx_valid;
assign r_if.din= dut_w.RAM_instance.din;
assign r_if.dout= dut_w.RAM_instance.dout;
/*............................golden RAM assigning...................*/
assign r_if.tx_valid_exp= gm.RAM_instance_g.tx_valid_exp;
assign r_if.dout_exp= gm.RAM_instance_g.dout_exp;
///////////////////////////////////////////////////////
 bind SLAVE SLAVE_sva sva_inst_s  (
 .clk(dut_w.SLAVE_instance.clk),
.MOSI(dut_w.SLAVE_instance.MOSI), 
.rst_n(dut_w.SLAVE_instance.rst_n), 
.SS_n(dut_w.SLAVE_instance.SS_n), 
.tx_valid(dut_w.SLAVE_instance.tx_valid),
.tx_data(dut_w.SLAVE_instance.tx_data),
.rx_data(dut_w.SLAVE_instance.rx_data),
.rx_valid(dut_w.SLAVE_instance.rx_valid), 
.MISO(dut_w.SLAVE_instance.MISO)
);
    bind RAM RAM_sva sva_inst_r (  .clk(r_if.clk),.din(r_if.din),
 .rst_n(r_if.rst_n), .rx_valid(r_if.rx_valid),.dout(r_if.dout),
.tx_valid(r_if.tx_valid));
initial begin
  //......configuration database slave................//
 uvm_config_db #(virtual SLAVE_if) ::set (null,"uvm_test_top","SLAVE_IF",s_if);
//......configuration database ram................//
 uvm_config_db #(virtual RAM_if) ::set (null,"uvm_test_top","RAM_IF",r_if);
 //......configuration database wrapper................//
 uvm_config_db #(virtual SPI_WRAPPER_if) ::set (null,"uvm_test_top","WR_IF",w_if);

//............uvm run task...............//
  run_test("wrapper_test");
end
endmodule