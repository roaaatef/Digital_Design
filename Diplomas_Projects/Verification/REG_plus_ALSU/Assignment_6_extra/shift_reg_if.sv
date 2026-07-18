interface shift_reg_if ();

	bit  serial_in, direction, mode;
	logic [5:0] datain;
	logic [5:0] dataout;

	modport DUT (input   serial_in, direction, mode, datain, output dataout);


endinterface

