package SLAVE_driver_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  import SLAVE_seq_item_pkg::*;
  import SLAVE_config_pkg::*;

  class SLAVE_driver extends uvm_driver #(SLAVE_seq_item);
    `uvm_component_utils(SLAVE_driver)

    virtual SLAVE_if SLAVE_vif;
    SLAVE_seq_item stim_seq_item;

    function new(string name = "SLAVE_driver", uvm_component parent = null);
      super.new(name, parent);
    endfunction

    task run_phase(uvm_phase phase);
      super.run_phase(phase);
      forever begin
        stim_seq_item = SLAVE_seq_item::type_id::create("stim_seq_item");
        seq_item_port.get_next_item(stim_seq_item); 
       SLAVE_vif.rst_n=stim_seq_item.rst_n;
       SLAVE_vif.SS_n=stim_seq_item.SS_n;
       SLAVE_vif.tx_valid=stim_seq_item.tx_valid;
       SLAVE_vif.MOSI=stim_seq_item.MOSI;
       SLAVE_vif.tx_data=stim_seq_item.tx_data;
          @(negedge SLAVE_vif.clk);
         seq_item_port.item_done();
        `uvm_info("run_phase", stim_seq_item.convert2string_stimulus(), UVM_HIGH)
      end
    endtask

  endclass
endpackage 
