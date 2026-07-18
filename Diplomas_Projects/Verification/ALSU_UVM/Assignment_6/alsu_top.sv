import uvm_pkg::*;
`include "uvm_macros.svh"
import alsu_test_pkg::*;
module alsu_top();
  // Clock generation
  bit clk;
  initial begin
    forever #1 clk=~clk;
  end
  // Instantiate the interface and DUT
 alsu_if a_if (clk);
  ALSU dut ( a_if);
  golden_design ex ( a_if);
  bind ALSU alsu_sva sva_inst (a_if);
initial begin
//......configuration database................//
 uvm_config_db #(virtual alsu_if) ::set (null,"uvm_test_top","ALSU_IF",a_if);
//............uvm run task...............//
  run_test("alsu_test");
end
endmodule
