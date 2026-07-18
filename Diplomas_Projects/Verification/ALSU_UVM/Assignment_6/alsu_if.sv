import shared_pkg::*;

interface alsu_if (clk);
  input clk;
logic  cin, rst, red_op_A, red_op_B, bypass_A, bypass_B, direction, serial_in;
OP_CODE opcode;
logic signed [2:0] A, B;
logic [15:0] leds;
logic signed [5:0] out;
logic signed [5:0] expected_out;
logic [15:0] leds_expected;
modport DUT (input clk,cin,rst,red_op_A,red_op_B,bypass_A,bypass_B,direction,serial_in,opcode,A,B,output leds,out);
   modport GOLDEN (
        input clk, cin, rst, red_op_A, red_op_B, bypass_A, bypass_B,
        direction, serial_in, opcode, A, B,
        output expected_out, leds_expected
    );
endinterface 
