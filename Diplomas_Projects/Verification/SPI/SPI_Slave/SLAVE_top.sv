import uvm_pkg::*;
`include "uvm_macros.svh"
import SLAVE_test_pkg::*;
module SLAVE_top();
  // Clock generation
  bit clk;
  initial begin
    forever #1 clk=~clk;
  end
  // Instantiate the interface and DUT
 SLAVE_if s_if (clk);
 SLAVE dut ( s_if);
  SPI_SLAVE_golden golden ( s_if);
  bind SLAVE SLAVE_sva sva_inst (s_if);
initial begin
//......configuration database................//
 uvm_config_db #(virtual SLAVE_if) ::set (null,"uvm_test_top","SLAVE_IF",s_if);
//............uvm run task...............//
  run_test("SLAVE_test");
end
endmodule
