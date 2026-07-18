import shared_pkg::*;
module alsu_sva (alsu_if.DUT a_if);
/*.......................................OUT assertion............................*/
  a1 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (a_if.bypass_A & a_if.bypass_B&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == $past(a_if.A,2)));
 c1 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (a_if.bypass_A & a_if.bypass_B
&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == $past(a_if.A,2)) );

   a2 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (a_if.bypass_A & !a_if.bypass_B
  ) |-> ##2 (a_if.out == $past(a_if.A,2)) );
 c2 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (a_if.bypass_A 
   & !a_if.bypass_B) |-> ##2 (a_if.out == $past(a_if.A,2)) );

   a3 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & a_if.bypass_B
) |-> ##2 (a_if.out == $past(a_if.B,2)));
 c3 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & a_if.bypass_B
) |-> ##2 (a_if.out == $past(a_if.B,2)) );

  a4 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & (((a_if.red_op_A || a_if.red_op_B) & (a_if.opcode != OR & a_if.opcode != XOR)) 
      || (a_if.opcode == INVALID_6 & a_if.opcode == INVALID_7))) |-> ##2 (a_if.out == 0) );
 c4 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & (((a_if.red_op_A || a_if.red_op_B) & (a_if.opcode != OR & a_if.opcode != XOR)) 
      || (a_if.opcode == INVALID_6 & a_if.opcode == INVALID_7))) |-> ##2 (a_if.out == 0) );

    a5 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A 
      & !a_if.bypass_B & a_if.opcode == OR & a_if.red_op_A & a_if.red_op_B&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == |$past(a_if.A,2))&(a_if.leds==0) );
 c5 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A 
   & !a_if.bypass_B & a_if.opcode == OR & a_if.red_op_A & a_if.red_op_B&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == |$past(a_if.A,2))&(a_if.leds==0) );

    a6 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A 
      & !a_if.bypass_B & a_if.opcode == OR & !a_if.red_op_A & a_if.red_op_B) |-> ##2 (a_if.out == |$past(a_if.B,2))&(a_if.leds==0) );
 c6 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A
  & !a_if.bypass_B & a_if.opcode == OR & !a_if.red_op_A & a_if.red_op_B) |-> ##2 (a_if.out == |$past(a_if.B,2))&(a_if.leds==0) );

    a7 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
      & a_if.opcode == OR & a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == |$past(a_if.A,2))&(a_if.leds==0) );
 c7 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == OR & a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == |$past(a_if.A,2))&(a_if.leds==0) );

    a8 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
     & a_if.opcode == OR & !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.A,2) | $past(a_if.B,2)))&(a_if.leds==0) );
 c8 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == OR & !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.B,2) | $past(a_if.A,2)))&(a_if.leds==0) );

   a9 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
      & a_if.opcode == XOR & a_if.red_op_A & a_if.red_op_B&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == ^$past(a_if.A,2)) &(a_if.leds==0));
 c9 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == XOR & a_if.red_op_A & a_if.red_op_B&INPUT_PRIORITY == "A") |-> ##2 (a_if.out == ^$past(a_if.A,2))&(a_if.leds==0) );

    a10 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
      & a_if.opcode == XOR & !a_if.red_op_A & a_if.red_op_B) |-> ##2 (a_if.out == ^$past(a_if.B,2))&(a_if.leds==0) );
 c10 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == XOR & !a_if.red_op_A & a_if.red_op_B) |-> ##2 (a_if.out == ^$past(a_if.B,2))&(a_if.leds==0) );

    a11 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
     & a_if.opcode == XOR & a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ^$past(a_if.A,2))&(a_if.leds==0) );
 c11 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == XOR & a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ^$past(a_if.A,2)) &(a_if.leds==0));

    a12 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
      & a_if.opcode == XOR & !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.B,2) ^ $past(a_if.A,2)))&(a_if.leds==0) );
 c12 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   & a_if.opcode == XOR & !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.B,2) ^ $past(a_if.A,2)))&(a_if.leds==0));

    a13 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
      &a_if.opcode == ADD& !a_if.red_op_A & !a_if.red_op_B&FULL_ADDER=="ON") |-> ##2 (a_if.out == ($past(a_if.B,2) + $past(a_if.A,2) + $past(a_if.cin,2))) &(a_if.leds==0));
 c13 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   &a_if.opcode == ADD& !a_if.red_op_A & !a_if.red_op_B&FULL_ADDER=="ON") |-> ##2 (a_if.out == ($past(a_if.A,2) + $past(a_if.B,2)+ $past(a_if.cin,2))) &(a_if.leds==0));

     a14 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
      &a_if.opcode == MULT& !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.B,2) * $past(a_if.A,2)))&(a_if.leds==0) );
 c14 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B 
   &a_if.opcode == MULT& !a_if.red_op_A & !a_if.red_op_B) |-> ##2 (a_if.out == ($past(a_if.B,2) * $past(a_if.A,2)))&(a_if.leds==0) );

      a15 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==SHIFT&a_if.direction==1)|-> ##2 (a_if.out=={$past(a_if.out[4:0],1),$past(a_if.serial_in,2)})&(a_if.leds==0) );
       c15 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==SHIFT&a_if.direction==1)|-> ##2 (a_if.out=={$past(a_if.out[4:0],1),$past(a_if.serial_in,2)})&(a_if.leds==0) );


       a16 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==SHIFT&a_if.direction==0)|-> ##2 (a_if.out=={$past(a_if.serial_in,2),$past(a_if.out[5:1],1)})&(a_if.leds==0) );
       c16 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==SHIFT&a_if.direction==0)|-> ##2 (a_if.out=={$past(a_if.serial_in,2),$past(a_if.out[5:1],1)}) &(a_if.leds==0));

             a17 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
               &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==ROTATE&a_if.direction==1)|-> ##2 (a_if.out == {$past(a_if.out[4:0],1), $past(a_if.out[5],1)})&(a_if.leds==0) );
       c17 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==ROTATE&a_if.direction==1)|-> ##2 (a_if.out=={$past(a_if.out[4:0],1), $past(a_if.out[5],1)}) &(a_if.leds==0));

       a18 : assert property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B&!a_if.red_op_A 
         & !a_if.red_op_B&a_if.opcode==ROTATE&a_if.direction==0)|-> ##2 (  a_if.out == {$past(a_if.out[0],1), $past(a_if.out[5:1],1)}) &(a_if.leds==0));
       c18 : cover property   (@(posedge a_if.clk) disable iff(a_if.rst) (!a_if.bypass_A & !a_if.bypass_B
         &!a_if.red_op_A & !a_if.red_op_B&a_if.opcode==ROTATE&a_if.direction==0)|-> ##2 (  a_if.out == {$past(a_if.out[0],1), $past(a_if.out[5:1],1)})&(a_if.leds==0) );

a19: assert property (@(posedge a_if.clk)  disable iff(a_if.rst) ( (((a_if.red_op_A || a_if.red_op_B) & (a_if.opcode != OR & a_if.opcode != XOR)) 
      || (a_if.opcode == INVALID_6 & a_if.opcode == INVALID_7))) |-> ##2 (a_if.leds==~$past(a_if.leds,1)));

c19:cover property (@(posedge a_if.clk) disable iff(a_if.rst) ( (((a_if.red_op_A || a_if.red_op_B) & (a_if.opcode != OR & a_if.opcode != XOR)) 
      || (a_if.opcode == INVALID_6 & a_if.opcode == INVALID_7))) |-> ##2 (a_if.leds==~$past(a_if.leds,1)));
/*.......................................reset assertion.....................*/
/*...............reset assertion.......*/
always_comb begin
  if(a_if.rst)   
o_1:assert final (a_if.out==0&&a_if.leds==0);
end
endmodule	
