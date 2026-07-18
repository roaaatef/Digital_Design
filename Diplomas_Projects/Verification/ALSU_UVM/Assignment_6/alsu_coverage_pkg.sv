package alsu_coverage_pkg;
	import uvm_pkg::*;
	import alsu_seq_item_pkg::*;
	import shared_pkg::*;
	`include "uvm_macros.svh"	
	class alsu_coverage extends uvm_component;
  		`uvm_component_utils(alsu_coverage)
  		uvm_analysis_export #(alsu_seq_item) coverage_export;
  		uvm_tlm_analysis_fifo #(alsu_seq_item) cov_fifo;
  		alsu_seq_item seq_item_cov;
        /*.............................cover group.............................*/
        covergroup alsu_cg ;
	/*................coverpoint for a maxpos,maxneg,0 values..................*/
	A_cp1: coverpoint seq_item_cov.A 
	{
	bins A_data_0 = {0};
	bins A_data_max = {MAXPOS};
	bins A_data_min = {MAXNEG};
	bins A_data_default=default;
	}
	/*................coverpoint for when takes walkingone..................*/
	A_cp2: coverpoint seq_item_cov.A iff(seq_item_cov.red_op_a)
	{
bins walkingones []={3'b001,3'b010,3'b100};
	}
	/*................coverpoint for b maxpos,maxneg,0 values..................*/
	B_cp1: coverpoint seq_item_cov.B
	{
	bins B_data_0 = {0};
	bins B_data_max = {MAXPOS};
	bins B_data_min = {MAXNEG};
	bins B_data_default=default;
	}
		/*................coverpoint for when takes walkingone..................*/
	B_cp2: coverpoint seq_item_cov.B iff(!seq_item_cov.red_op_a&seq_item_cov.red_op_b)
	{
    bins walkingones []={3'b001,3'b010,3'b100};
	}
	////////////////////////***opcode coverpoint***/////////////////////
	ALU_cp:coverpoint seq_item_cov.op_code 
	{
	bins Bins_shift[] = {SHIFT,ROTATE};
	bins Bins_arith [] = {ADD,MULT};
	bins Bins_bitwise [] = {OR,XOR};
	bins Bins_invalid ={INVALID_6,INVALID_7};
	bins Bins_trans = (OR=>XOR=>ADD=>MULT=>SHIFT=>ROTATE);
	}
	c_cp:coverpoint seq_item_cov.cin
	{
	bins one = {1};
	bins zero = {0};
	}

	direction_cp:coverpoint seq_item_cov.direction
	{
	bins one = {1};
	bins zero = {0};
	}
		serial_cp:coverpoint seq_item_cov.serial_in
	{
	bins one = {1};
	bins zero = {0};
	}
		reda_cp:coverpoint seq_item_cov.red_op_a
	{
	bins one = { 1};
	bins zero = {0};
	}
		redb_cp:coverpoint seq_item_cov.red_op_b
	{
	bins one = {1};
	bins zero = {0};
	}
 c1_cs : cross B_cp1,ALU_cp 
{
bins add_mult_b1 = binsof(ALU_cp.Bins_arith) && binsof(B_cp1.B_data_max);
	bins add_mult_b2= binsof(ALU_cp.Bins_arith)&& binsof(B_cp1.B_data_0);
	bins add_mult_b3 = binsof(ALU_cp.Bins_arith)&&binsof(B_cp1.B_data_min);
option.cross_auto_bin_max=0;
}
 c2_cs : cross A_cp1,ALU_cp 
{
bins add_mult_a1 = binsof(ALU_cp.Bins_arith) && binsof(A_cp1.A_data_max);
	bins add_mult_a2= binsof(ALU_cp.Bins_arith)&& binsof(A_cp1.A_data_0);
	bins add_mult_a3 = binsof(ALU_cp.Bins_arith)&&binsof(A_cp1.A_data_min);
option.cross_auto_bin_max=0;
}
c3_cs : cross ALU_cp,c_cp
{
	bins add = binsof(ALU_cp) intersect {ADD} && (binsof(c_cp.zero)||binsof(c_cp.one));
	option.cross_auto_bin_max=0;
}
c4_cs : cross  ALU_cp,direction_cp
{
	bins sh = binsof (ALU_cp) intersect {SHIFT} && (binsof (direction_cp.zero)||binsof (direction_cp.one));
	bins r = binsof (ALU_cp) intersect {ROTATE} && (binsof (direction_cp.zero)||binsof (direction_cp.one));
	option.cross_auto_bin_max=0;
}
c5_cs : cross  ALU_cp,serial_cp
{
	bins sh = binsof (ALU_cp) intersect {SHIFT} && (binsof (serial_cp.zero)||binsof (serial_cp.one));
	option.cross_auto_bin_max=0;
}
c6_cs : cross  ALU_cp,reda_cp
{
	bins reda = binsof (ALU_cp.Bins_bitwise) && (binsof (reda_cp.one));
	option.cross_auto_bin_max=0;
}
c7_cs : cross  ALU_cp,redb_cp
{
	bins redb = binsof (ALU_cp.Bins_bitwise) && (binsof (redb_cp.one));
	option.cross_auto_bin_max=0;
}
c8_cs : cross ALU_cp,redb_cp,reda_cp
{
bins a1 = binsof(ALU_cp.Bins_shift) &&(binsof(reda_cp.one))&&(binsof(redb_cp.zero));
bins a2 = binsof(ALU_cp.Bins_arith) &&(binsof(reda_cp.one))&&(binsof(redb_cp.zero));
bins b1 = binsof(ALU_cp.Bins_shift) &&(binsof(redb_cp.one))&&(binsof(reda_cp.zero));
bins b2 = binsof(ALU_cp.Bins_arith) &&(binsof(redb_cp.one))&&(binsof(reda_cp.zero));
bins ab1 = binsof(ALU_cp.Bins_shift) &&(binsof(redb_cp.one))&&(binsof(reda_cp.one));
bins ab2 = binsof(ALU_cp.Bins_arith) &&(binsof(redb_cp.one))&&(binsof(reda_cp.one));
option.cross_auto_bin_max=0;	
}
endgroup
/*................................................*/
  		function new(string name = "alsu_coverage", uvm_component parent = null) ;
    		super.new(name, parent);
    		alsu_cg = new();
  		endfunction

  		function void build_phase(uvm_phase phase);
		    super.build_phase(phase);
		    coverage_export = new("coverage_export", this);
		    cov_fifo = new("cov_fifo", this);
		endfunction

		function void connect_phase(uvm_phase phase);
		    super.connect_phase(phase);
		    coverage_export.connect(cov_fifo.analysis_export);
		endfunction

  		task run_phase(uvm_phase phase);
		    super.run_phase(phase);
		    forever begin
			    cov_fifo.get(seq_item_cov);
			     if (!(seq_item_cov.rst||seq_item_cov.bypass_a||seq_item_cov.bypass_b)) begin
			   alsu_cg.sample();
			end
    		end
  		endtask
	endclass
endpackage 