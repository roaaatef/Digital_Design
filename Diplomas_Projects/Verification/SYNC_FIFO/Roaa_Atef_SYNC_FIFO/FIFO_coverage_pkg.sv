
package FIFO_coverage_pkg;
  import FIFO_transaction_pkg::*;

  class FIFO_coverage;
    FIFO_transaction  F_cvg_txn;

    covergroup fifo_cg;
      WR_EN: coverpoint F_cvg_txn.wr_en { bins zero = {0}; bins one = {1}; }
      RD_EN: coverpoint F_cvg_txn.rd_en { bins zero = {0}; bins one = {1}; }
      WR_ACK: coverpoint F_cvg_txn.wr_ack { bins zero = {0}; bins one = {1}; }
      FULL: coverpoint F_cvg_txn.full { bins zero = {0}; bins one = {1}; }
      OVER_FLOW: coverpoint F_cvg_txn.overflow { bins zero = {0}; bins one = {1}; }
      EMPTY: coverpoint F_cvg_txn.empty { bins zero = {0}; bins one = {1}; }
      ALMOST_EMPTY: coverpoint F_cvg_txn.almostempty { bins zero = {0}; bins one = {1}; }
      ALMOST_FULL: coverpoint F_cvg_txn.almostfull { bins zero = {0}; bins one = {1}; }
      UNDER_FLOW: coverpoint F_cvg_txn.underflow { bins zero = {0}; bins one = {1}; }
      //================= CROSS COVERAGES =================//
      c1 : cross WR_EN, RD_EN, WR_ACK {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(WR_ACK.zero);
        illegal_bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(WR_ACK.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(WR_ACK.zero);
        illegal_bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(WR_ACK.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(WR_ACK.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(WR_ACK.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(WR_ACK.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(WR_ACK.one);
        option.cross_auto_bin_max = 0;
      }

      c2 : cross WR_EN, RD_EN, FULL {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(FULL.zero);
        bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(FULL.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(FULL.zero);
        illegal_bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(FULL.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(FULL.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(FULL.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(FULL.zero);
        illegal_bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(FULL.one);
        option.cross_auto_bin_max = 0;
      }

      c3 : cross WR_EN, RD_EN, EMPTY {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(EMPTY.zero);
        bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(EMPTY.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(EMPTY.zero);
        bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(EMPTY.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(EMPTY.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(EMPTY.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(EMPTY.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(EMPTY.one);
        option.cross_auto_bin_max = 0;
      }

      c4 : cross WR_EN, RD_EN, OVER_FLOW {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(OVER_FLOW.zero);
        illegal_bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(OVER_FLOW.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(OVER_FLOW.zero);
        illegal_bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(OVER_FLOW.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(OVER_FLOW.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(OVER_FLOW.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(OVER_FLOW.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(OVER_FLOW.one);
        option.cross_auto_bin_max = 0;
      }

      c5 : cross WR_EN, RD_EN, UNDER_FLOW {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(UNDER_FLOW.zero);
        illegal_bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(UNDER_FLOW.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(UNDER_FLOW.zero);
        bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(UNDER_FLOW.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(UNDER_FLOW.zero);
       illegal_bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(UNDER_FLOW.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(UNDER_FLOW.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(UNDER_FLOW.one);
        option.cross_auto_bin_max = 0;
      }

      c6 : cross WR_EN, RD_EN, ALMOST_FULL {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(ALMOST_FULL.zero);
        bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(ALMOST_FULL.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(ALMOST_FULL.zero);
        bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(ALMOST_FULL.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(ALMOST_FULL.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(ALMOST_FULL.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(ALMOST_FULL.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(ALMOST_FULL.one);
        option.cross_auto_bin_max = 0;
      }

      c7 : cross WR_EN, RD_EN, ALMOST_EMPTY {
        bins zero_zero_zero = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(ALMOST_EMPTY.zero);
        bins zero_zero_one  = binsof(WR_EN.zero) && binsof(RD_EN.zero) && binsof(ALMOST_EMPTY.one);
        bins zero_one_zero  = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(ALMOST_EMPTY.zero);
        bins zero_one_one   = binsof(WR_EN.zero) && binsof(RD_EN.one) && binsof(ALMOST_EMPTY.one);
        bins one_zero_zero  = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(ALMOST_EMPTY.zero);
        bins one_zero_one   = binsof(WR_EN.one) && binsof(RD_EN.zero) && binsof(ALMOST_EMPTY.one);
        bins one_one_zero   = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(ALMOST_EMPTY.zero);
        bins one_one_one    = binsof(WR_EN.one) && binsof(RD_EN.one) && binsof(ALMOST_EMPTY.one);
        option.cross_auto_bin_max = 0;
      }

    endgroup : fifo_cg

    function new();
      fifo_cg = new();
      F_cvg_txn = new();
    endfunction

    function void sampled_data(FIFO_transaction F_txn);
      F_cvg_txn = F_txn;
      fifo_cg.sample();
    endfunction

  endclass : FIFO_coverage

endpackage : FIFO_coverage_pkg
