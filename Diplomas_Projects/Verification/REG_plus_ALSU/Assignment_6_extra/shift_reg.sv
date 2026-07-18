////////////////////////////////////////////////////////////////////////////////
// Author: Kareem Waseem
// Course: Digital Verification using SV & UVM
//
// Description: Shift register Design 
// 
////////////////////////////////////////////////////////////////////////////////
module shift_reg (shift_reg_if.DUT shiftregif);


always @(*) begin

      if (shiftregif.mode) // rotate
         if (shiftregif.direction) // left
            shiftregif.dataout = {shiftregif.datain[4:0], shiftregif.datain[5]};
         else
            shiftregif.dataout = {shiftregif.datain[0], shiftregif.datain[5:1]};
      else // shift
         if (shiftregif.direction) // left
            shiftregif.dataout = {shiftregif.datain[4:0], shiftregif.serial_in};
         else
            shiftregif.dataout = {shiftregif.serial_in, shiftregif.datain[5:1]};
end
endmodule