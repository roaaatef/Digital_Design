////////////////////////////////////////////////////////////////////////////////
// Author: Kareem Waseem
// Course: Digital Verification using SV & UVM
//
// Description: FIFO Design 
// 
////////////////////////////////////////////////////////////////////////////////
module FIFO(fifo_if.DUT f_if);

  localparam max_fifo_addr = $clog2(f_if.FIFO_DEPTH);
  reg [f_if.FIFO_WIDTH-1:0] mem [f_if.FIFO_DEPTH-1:0];
  reg [max_fifo_addr-1:0] wr_ptr=0; 
   reg [max_fifo_addr-1:0] rd_ptr=0;
  reg [max_fifo_addr:0] count=0;

  /*.........................................................*/
  always @(posedge f_if.clk or negedge f_if.rst_n) begin
    if (!f_if.rst_n) begin
      wr_ptr <= 0;
   

      f_if.overflow <= 0;
      f_if.wr_ack <= 0;
    end
    else if (f_if.wr_en && count < f_if.FIFO_DEPTH) begin
      mem[wr_ptr] <= f_if.data_in;
      f_if.wr_ack <= 1;
      wr_ptr <= wr_ptr + 1;
    end
    else begin
      f_if.wr_ack <= 0;
      if (f_if.full && f_if.wr_en)
        f_if.overflow <= 1;
      else
        f_if.overflow <= 0;
    end
  end

  always @(posedge f_if.clk or negedge f_if.rst_n) begin
  	
    if (!f_if.rst_n) begin
      rd_ptr <= 0;
      f_if.data_out <= 0;
      f_if.underflow <= 0;
    end
    else if (f_if.rd_en && count != 0) begin
      f_if.data_out <= mem[rd_ptr];
      rd_ptr <= rd_ptr + 1;
    end
    else begin
      if (f_if.empty && f_if.rd_en)
        f_if.underflow <= 1;
      else
        f_if.underflow <= 0;
    end
  end

  always @(posedge f_if.clk or negedge f_if.rst_n) begin
    if (!f_if.rst_n) begin
      count <= 0;
    end
    else begin
      if (({f_if.wr_en, f_if.rd_en} == 2'b10) && !f_if.full)
        count <= count + 1;
      else if (({f_if.wr_en, f_if.rd_en} == 2'b11) && f_if.empty)
        count <= count + 1;
      else if (({f_if.wr_en, f_if.rd_en} == 2'b01) && !f_if.empty)
        count <= count - 1;
      else if (({f_if.wr_en, f_if.rd_en} == 2'b11) && f_if.full)
        count <= count - 1;
    end
  end

  assign f_if.full        = (count == f_if.FIFO_DEPTH) ? 1 : 0;
  assign f_if.empty       = (count == 0) ? 1 : 0;
  assign f_if.almostfull  = (count == f_if.FIFO_DEPTH - 1) ? 1 : 0;
  assign f_if.almostempty = (count == 1) ? 1 : 0;

  /*.......................................assertions....................*/
`ifdef SIM
  /*...............reset assertion.......*/
  always_comb begin
    if (f_if.rst_n == 0)
      o_1: assert final (count == 0 && rd_ptr == 0 && wr_ptr == 0&&f_if.underflow==0&&f_if.overflow==0&&f_if.wr_ack==0&&f_if.full==0&&f_if.empty==1);
  end

  a1 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && !f_if.full) |=> f_if.wr_ack);
  c1 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && !f_if.full) |=> f_if.wr_ack);

  a2 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && f_if.full) |=> f_if.overflow);
  c2 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && f_if.full) |=> f_if.overflow);

  a3 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.rd_en && f_if.empty) |=> f_if.underflow);
  c3 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.rd_en && f_if.empty) |=> f_if.underflow);

  a4 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (!count) |-> f_if.empty);
  c4 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (!count) |-> f_if.empty);

  a5 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == f_if.FIFO_DEPTH) |-> f_if.full);
  c5 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == f_if.FIFO_DEPTH) |-> f_if.full);

  a6 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == f_if.FIFO_DEPTH - 1) |-> f_if.almostfull);
  c6 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == f_if.FIFO_DEPTH - 1) |-> f_if.almostfull);

  a7 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == 1) |-> f_if.almostempty);
  c7 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (count == 1) |-> f_if.almostempty);

  a8 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && wr_ptr == 7&&!f_if.full) |=> (wr_ptr == 0));
  c8 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.wr_en && wr_ptr == 7&&!f_if.full) |=> (wr_ptr == 0));

  a9 : assert property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.rd_en && rd_ptr == 7&&!f_if.empty) |=> (rd_ptr == 0));
  c9 : cover property (@(posedge f_if.clk) disable iff (!f_if.rst_n)
                        (f_if.rd_en && rd_ptr == 7&&!f_if.empty) |=> (rd_ptr == 0));
`endif

endmodule
