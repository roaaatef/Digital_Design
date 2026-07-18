
package FIFO_scoreboard_pkg;

  import FIFO_transaction_pkg::*;
  import shared_pkg::*;

  class FIFO_scoreboard;

    // ---------------- Signals ----------------
    reg   [FIFO_WIDTH-1:0] data_out_ref;
   reg [FIFO_WIDTH-1:0] mem_ref [$];

    // ---------------- Reference Model ----------------
    function void reference_model(FIFO_transaction F);
  if(!F.rst_n) begin
    mem_ref.delete();
    data_out_ref = 0;
  end
  else begin
    if (F.wr_en && F.rd_en) begin
      if(mem_ref.size() == 0)
        mem_ref.push_back(F.data_in);
      else if (mem_ref.size() == FIFO_DEPTH)
        data_out_ref = mem_ref.pop_front();
      else begin
        data_out_ref = mem_ref.pop_front();
        mem_ref.push_back(F.data_in);
      end
    end
    else if (F.wr_en && !F.rd_en) begin
      if (mem_ref.size() != FIFO_DEPTH)
        mem_ref.push_back(F.data_in);
    end
    else if (!F.wr_en && F.rd_en) begin
      if (mem_ref.size() != 0)
        data_out_ref = mem_ref.pop_front();
    end
  end
endfunction


    // ---------------- Check Data ----------------
    task check_data(FIFO_transaction f);
      reference_model(f);

      if (f.data_out != data_out_ref) begin
        error_count++;
        $display("...................ERROR.........................");
        $display("data_in: %b | wr_en: %b | rd_en: %b", f.data_in, f.wr_en, f.rd_en);
       $display("data_out=%b data_out_ref=%b", f.data_out, data_out_ref);
        $display("time : %t ", $time);
      end
      else begin
        correct_count++;
           $display("...................PASSED.........................");
        $display(" data_in=%b wr_en=%b rd_en=%b", f.data_in, f.wr_en, f.rd_en);
        $display("data_out=%b data_out_ref=%b", f.data_out, data_out_ref);
      end
  endtask

  endclass

endpackage
