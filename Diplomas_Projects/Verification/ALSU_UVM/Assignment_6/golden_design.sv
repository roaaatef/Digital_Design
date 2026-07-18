import shared_pkg::*;
module golden_design (alsu_if.GOLDEN a_if);
	reg red_op_A_reg_ex, red_op_B_reg_ex, bypass_A_reg_ex, bypass_B_reg_ex, direction_reg_ex, serial_in_reg_ex;
reg  [1:0] cin_reg_ex;
reg [2:0] opcode_reg_ex;
reg signed [2:0] A_reg_ex, B_reg_ex;
wire invalid_red_op_ex, invalid_opcode_ex, invalid_ex;
//Invalid handling
assign invalid_red_op_ex = (red_op_A_reg_ex || red_op_B_reg_ex) & (opcode_reg_ex[1] || opcode_reg_ex[2]);
assign invalid_opcode_ex = opcode_reg_ex[1] & opcode_reg_ex[2];
assign invalid = invalid_red_op_ex || invalid_opcode_ex;
//Registering input signals
always @(posedge a_if.clk or posedge a_if.rst) begin
  if(a_if.rst) begin
     cin_reg_ex <= 0;
     red_op_B_reg_ex <= 0;
     red_op_A_reg_ex <= 0;
     bypass_B_reg_ex <= 0;
     bypass_A_reg_ex <= 0;
     direction_reg_ex <= 0;
     serial_in_reg_ex <= 0;
     opcode_reg_ex <= 0;
     A_reg_ex <= 0;
     B_reg_ex <= 0;
  end else begin
     cin_reg_ex <= a_if.cin;
     red_op_B_reg_ex <= a_if.red_op_B;
     red_op_A_reg_ex <= a_if.red_op_A;
     bypass_B_reg_ex <= a_if.bypass_B;
     bypass_A_reg_ex <= a_if.bypass_A;
     direction_reg_ex <= a_if.direction;
     serial_in_reg_ex <= a_if.serial_in;
     opcode_reg_ex <= a_if.opcode;
     A_reg_ex <= a_if.A;
     B_reg_ex <= a_if.B;
  end
end

//leds output blinking 
always @(posedge a_if.clk or posedge a_if.rst) begin
  if(a_if.rst) begin
     a_if.leds_expected <= 0;
  end else begin
      if (invalid)
        a_if.leds_expected <= ~a_if.leds_expected;
      else
        a_if.leds_expected <= 0;
  end
end

//ALSU output processing
always @(posedge a_if.clk or posedge a_if.rst) begin
  if(a_if.rst) begin
    a_if.expected_out <= 0;
  end
  else begin
    if (bypass_A_reg_ex && bypass_B_reg_ex)
      a_if.expected_out <= (INPUT_PRIORITY == "A")? A_reg_ex: B_reg_ex;
    else if (bypass_A_reg_ex)
      a_if.expected_out<= A_reg_ex;
    else if (bypass_B_reg_ex)
      a_if.expected_out <= B_reg_ex;
    else if (invalid) 
        a_if.expected_out <= 0;
    else begin
        case ( opcode_reg_ex)
          3'h0: begin 
            if (red_op_A_reg_ex && red_op_B_reg_ex)
              a_if.expected_out <= (INPUT_PRIORITY == "A")? |A_reg_ex: |B_reg_ex;
            else if (red_op_A_reg_ex) 
              a_if.expected_out <= |A_reg_ex;
            else if (red_op_B_reg_ex)
              a_if.expected_out <= |B_reg_ex;
            else 
              a_if.expected_out <= A_reg_ex | B_reg_ex;
          end
          3'h1: begin
            if (red_op_A_reg_ex && red_op_B_reg_ex)
              a_if.expected_out <= (INPUT_PRIORITY == "A")? ^A_reg_ex: ^B_reg_ex;
            else if (red_op_A_reg_ex) 
              a_if.expected_out <= ^A_reg_ex;
            else if (red_op_B_reg_ex)
              a_if.expected_out <= ^B_reg_ex;
            else 
              a_if.expected_out <= A_reg_ex ^ B_reg_ex;
          end
          3'h2: begin
            if(FULL_ADDER=="ON")
          a_if.expected_out <= A_reg_ex + B_reg_ex+cin_reg_ex;
        else
           a_if.expected_out <= A_reg_ex + B_reg_ex;
       end
          3'h3: a_if.expected_out <= A_reg_ex * B_reg_ex;
          3'h4: begin
            if (direction_reg_ex)
              a_if.expected_out <= {a_if.expected_out[4:0], serial_in_reg_ex};
            else
              a_if.expected_out <= {serial_in_reg_ex, a_if.expected_out[5:1]};
          end
          3'h5: begin
            if (direction_reg_ex)
              a_if.expected_out <= {a_if.expected_out[4:0], a_if.expected_out[5]};
            else
              a_if.expected_out <= {a_if.expected_out[0], a_if.expected_out[5:1]};
          end
        endcase
    end 
  end
end
endmodule
