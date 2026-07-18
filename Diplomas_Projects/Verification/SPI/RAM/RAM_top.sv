import uvm_pkg::*;
`include "uvm_macros.svh"
import RAM_test_pkg::*;
module RAM_top();
  // Clock generation
  bit clk;
  initial begin
    forever #1 clk=~clk;
  end
  // Instantiate the interface and DUT
 RAM_if r_if (clk);
 RAM dut ( r_if);
  RAM_golden golden ( r_if);
  bind RAM RAM_sva sva_inst (r_if);
initial begin
//......configuration database................//
 uvm_config_db #(virtual RAM_if) ::set (null,"uvm_test_top","RAM_IF",r_if);
//............uvm run task...............//
  run_test("RAM_test");
end
endmodule
