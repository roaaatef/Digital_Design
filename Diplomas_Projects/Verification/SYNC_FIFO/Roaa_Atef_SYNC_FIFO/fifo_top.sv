module fifo_top();
bit clk;
  initial begin
    clk=0;
    forever #1 clk=~clk;
  end
  fifo_if f_if (clk);
  FIFO dut (f_if);
  FIFO_tb tb(f_if);
  monitor mon (f_if);
    /*...............reset assertion.......*/
  always_comb begin
    if (f_if.rst_n == 0)
      o_1: assert final (dut.count == 0 && dut.rd_ptr == 0 && dut.wr_ptr == 0&&f_if.underflow==0&&f_if.overflow==0&&f_if.wr_ack==0&&f_if.full==0&&f_if.empty==1);
  end

endmodule