`timescale 1us/1ps 
module ALU_TOP_TB();
// declare signals
parameter IN_DATA_WIDTH=16;
 parameter ALU_OUT_WIDTH=16;
parameter ARITH_OUT_WIDTH=32;
reg CLK_tb,RST_tb;
reg signed [IN_DATA_WIDTH-1:0] A_tb,B_tb;
reg [3:0] ALU_FUN_tb;
wire ARITH_flag_tb,LOGIC_flag_tb,SHIFT_flag_tb,CMP_flag_tb;
wire [ALU_OUT_WIDTH-1:0] LOGIC_OUT_tb;
wire [ALU_OUT_WIDTH-1:0] SHIFT_OUT_tb;
wire[ALU_OUT_WIDTH-1:0] CMP_OUT_tb;
wire  signed [ARITH_OUT_WIDTH-1:0] ARITH_OUT_tb;
//
  ALU_TOP alu ( .CLK(CLK_tb),.RST(RST_tb),.A(A_tb),.B(B_tb),
.ALU_FUN(ALU_FUN_tb),
.ARITH_flag(ARITH_flag_tb),.LOGIC_flag(LOGIC_flag_tb),.SHIFT_flag(SHIFT_flag_tb),.CMP_flag(CMP_flag_tb),
 .LOGIC_OUT(LOGIC_OUT_tb),
 .SHIFT_OUT(SHIFT_OUT_tb), .CMP_OUT(CMP_OUT_tb), .ARITH_OUT(ARITH_OUT_tb)

);
wire [3:0] flags ={ARITH_flag_tb,LOGIC_flag_tb,SHIFT_flag_tb,CMP_flag_tb};
//
always 
begin
#4 CLK_tb=1'b1;
#6 CLK_tb=1'b0;
	end
//
initial 
begin
	$dumpfile("ALU_TOP.vcd");
	$dumpvars;
	CLK_tb=1'b0;
    RST_tb=1'b1;
    A_tb='sb0;
    B_tb='sb0;
    ALU_FUN_tb=4'b1000;
    #2;
    //test the reset
    RST_tb=1'b0;
    #8;
    if (ARITH_OUT_tb!='sb0&&CMP_OUT_tb!='b0&&SHIFT_OUT_tb!='b0&&LOGIC_OUT_tb!='b0&&ARITH_flag_tb!=1'b0&&LOGIC_flag_tb!=1'b0&&SHIFT_flag_tb!=1'b0&&CMP_flag_tb!=1'b0)
    begin
    	$display("reset is not working");
    end
    else begin
    	$display("reset is working");
    end
                               /*ARITHMETIC TESTS*/
//ADDITION OPERATION TESTS
    $display("***test case 1 --Addition--NEG+NEG***");
    A_tb=-'d10;
    B_tb=-'d20;
    RST_tb=1'b1;
    ALU_FUN_tb=4'b0000;
    #10;
    if(ARITH_OUT_tb!=A_tb+B_tb&&flags!=4'b1000)
    begin
    	$display("Addition %d + %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Addition %d + %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
$display("***test case 2 --Addition--POS+NEG***");
    A_tb='d10;
    B_tb=-'d20;
    #10;
    if(ARITH_OUT_tb!=A_tb+B_tb&&flags!=4'b1000)
    begin
    	$display("Addition %d + %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Addition %d + %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
$display("***test case 3 --Addition--NEG+POS***");
    A_tb=-'d10;
    B_tb='d20;
    #10;
    if(ARITH_OUT_tb!=A_tb+B_tb&&flags!=4'b1000)
    begin
    	$display("Addition %d + %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Addition %d + %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
$display("***test case 4 --Addition--POS+POS***");
    A_tb='d10;
    B_tb='d20;
    #10;
    if(ARITH_OUT_tb!=A_tb+B_tb&&flags!=4'b1000)
    begin
    	$display("Addition %d + %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Addition %d + %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
//SUBTRACTION OPERATION TESTS
     $display("***test case 5 --Subtraction--NEG+NEG***");
    A_tb=-'d30;
    B_tb=-'d40;
    ALU_FUN_tb=4'b0001;
    #10;
    if(ARITH_OUT_tb!=A_tb-B_tb&&flags!=4'b1000)
    begin
    	$display("Subtraction %d - %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Subtraction %d - %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
     $display("***test case 6 --Subtraction--POS+NEG***");
    A_tb='d30;
    B_tb=-'d40;
    #10;
    if(ARITH_OUT_tb!=A_tb-B_tb&&flags!=4'b1000)
    begin
    	$display("Subtraction %d - %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Subtraction %d - %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 7 --Subtraction--NEG+POS***");
    A_tb=-'d30;
    B_tb='d40;
    #10;
    if(ARITH_OUT_tb!=A_tb-B_tb&&flags!=4'b1000)
    begin
    	$display("Subtraction %d - %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Subtraction %d - %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 8 --Subtraction--POS+POS***");
    A_tb='d30;
    B_tb='d40;
    #10;
    if(ARITH_OUT_tb!=A_tb-B_tb&&flags!=4'b1000)
    begin
    	$display("Subtraction %d - %d is failed",A_tb,B_tb);
    end
    else begin
    	$display("Subtraction %d - %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    //MULTIPLICATION OPERATION
    $display("***test case 9 --Multiplication--NEG+NEG***");
    A_tb=-'d10;
    B_tb=-'d20;
    ALU_FUN_tb=4'b0010;
    #10;
    if(ARITH_OUT_tb!=A_tb*B_tb&&flags!=4'b1000)
    begin
        $display("Multiplication %d * %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Multiplication %d * %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 10 --Multiplication--POS+NEG***");
    A_tb='d10;
    B_tb=-'d20;
    #10;
    if(ARITH_OUT_tb!=A_tb*B_tb&&flags!=4'b1000)
    begin
        $display("Multiplication %d * %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Multiplication %d * %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 11 --Multiplication--NEG+POS***");
    A_tb=-'d10;
    B_tb='d20;
    #10;
    if(ARITH_OUT_tb!=A_tb*B_tb&&flags!=4'b1000)
    begin
        $display("Multiplication %d * %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Multiplication %d * %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 12 --Multiplication--POS+POS***");
    A_tb='d10;
    B_tb='d20;
    #10;
    if(ARITH_OUT_tb!=A_tb*B_tb&&flags!=4'b1000)
    begin
        $display("Multiplication %d * %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Multiplication %d * %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    //DIVISION OPERATION
    $display("***test case 13 --Division--NEG+NEG***");
    A_tb=-'d100;
    B_tb=-'d20;
    ALU_FUN_tb=4'b0011;
    #10;
    if(ARITH_OUT_tb!=A_tb/B_tb&&flags!=4'b1000)
    begin
        $display("Division %d / %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Division %d / %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 14 --Division--POS+NEG***");
    A_tb='d100;
    B_tb=-'d20;
    #10;
    if(ARITH_OUT_tb!=A_tb/B_tb&&flags!=4'b1000)
    begin
        $display("Division %d / %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Division %d / %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 15 --Division--NEG+POS***");
    A_tb=-'d100;
    B_tb='d20;
    #10;
    if(ARITH_OUT_tb!=A_tb/B_tb&&flags!=4'b1000)
    begin
        $display("Division %d / %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Division %d / %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
    $display("***test case 16 --Division--POS+POS***");
    A_tb='d100;
    B_tb='d20;
    
    #10;
    if(ARITH_OUT_tb!=A_tb/B_tb&&flags!=4'b1000)
    begin
        $display("Division %d / %d is failed",A_tb,B_tb);
    end
    else begin
        $display("Division %d / %d is passed and the out is :%d at time = %0t",A_tb,B_tb,ARITH_OUT_tb,$time);
    end
                                /*LOGIC TESTS*/
    //AND OPERATION
    $display("***test case 17 --AND--***");
    A_tb='b01010011;
    B_tb='b01011100;
    ALU_FUN_tb=4'b0100;
    #10;
    if(LOGIC_OUT_tb!=A_tb&B_tb&&flags!=4'b0100)
    begin
        $display("ANDING %b & %b is failed",A_tb,B_tb);
    end
    else begin
        $display("ANDING %b & %b is passed and the out is :%b at time = %0t",A_tb,B_tb,LOGIC_OUT_tb,$time);
    end
    //OR OPERATION
    $display("***test case 18 --OR--***");
    A_tb='b01010011;
    B_tb='b01011100;
    ALU_FUN_tb=4'b0101;
    #10;
    if(LOGIC_OUT_tb!=A_tb|B_tb&&flags!=4'b0100)
    begin
        $display("ORING %b | %b is failed",A_tb,B_tb);
    end
    else begin
        $display("ORING %b | %b is passed and the out is :%b at time = %0t",A_tb,B_tb,LOGIC_OUT_tb,$time);
    end
    //NAND OPERATION
    $display("***test case 19 --NAND--***");
    A_tb='b00110011;
    B_tb='b00111100;
    ALU_FUN_tb=4'b0110;
    #10;
    if(LOGIC_OUT_tb!=~(A_tb&B_tb)&&flags!=4'b0100)
    begin
        $display("NANDING ~(%b & %b) is failed",A_tb,B_tb);
    end
    else begin
        $display("NANDING ~(%b & %b) is passed and the out is :%b at time = %0t",A_tb,B_tb,LOGIC_OUT_tb,$time);
    end
    //NOR OPERATION
    $display("***test case 20 --NOR--***");
    A_tb='b01010011;
    B_tb='b01011100;
    ALU_FUN_tb=4'b0111;
    #10;
    if(LOGIC_OUT_tb!=~(A_tb|B_tb)&&flags!=4'b0100)
    begin
        $display("NORING ~(%b | %b) is failed",A_tb,B_tb);
    end
    else begin
        $display("NORING ~(%b | %b) is passed and the out is :%b at time = %0t",A_tb,B_tb,LOGIC_OUT_tb,$time);
    end
                                       /*COMPARE TESTS*/
    //EQUAL OPERATION
    $display("***test case 21 --EQUAL--***");
    A_tb=-'d20;
    B_tb=-'d20;
    ALU_FUN_tb=4'b1001;
    #10;
    if(CMP_OUT_tb!='b1&&flags!=4'b0001)
    begin
        $display("test case 21 is failed");
    end
    else begin
        $display("test case 21 is passed and the out is :%d at time = %0t",CMP_OUT_tb,$time);
    end
    //GREATER OPERATION
$display("***test case 22 --GREATER--***");
    A_tb='d20;
    B_tb='d2;
    ALU_FUN_tb=4'b1010;
    #10;
    if(CMP_OUT_tb!='b10&&flags!=4'b0001)
    begin
        $display("test case 22 is failed");
    end
    else begin
        $display("test case 22 is passed and the out is :%d at time = %0t",CMP_OUT_tb,$time);
    end
    //  LESS THAN OPERATION
    $display("***test case 23 --LESS THAN--***");
    A_tb='d2;
    B_tb='d20;
    ALU_FUN_tb=4'b1011;
    #10;
    if(CMP_OUT_tb!='b11&&flags!=4'b0001)
    begin
        $display("test case 23 is failed");
    end
    else begin
        $display("test case 23 is passed and the out is :%d at time = %0t",CMP_OUT_tb,$time);
    end
                                       /*SHIFT TESTS*/
    //A SHIFT RIGHT
    $display("***test case 24 --A SHIFT RIGHT--***");
    A_tb='b10100011;
    B_tb='d20;
    ALU_FUN_tb=4'b1100;
    #10;
    if(SHIFT_OUT_tb!=A_tb>>1&&flags!=4'b0010)
    begin
        $display("test case 24 is failed");
    end
    else begin
        $display("test case 24 is passed and the out is :%b at time = %0t",SHIFT_OUT_tb,$time);
    end
    //A SHIFT LEFT
    $display("***test case 25 --A SHIFT LEFT--***");
    A_tb='b10100011;
    B_tb='d20;
    ALU_FUN_tb=4'b1101;
    #10;
    if(SHIFT_OUT_tb!=A_tb<<1&&flags!=4'b0010)
    begin
        $display("test case 25 is failed");
    end
    else begin
        $display("test case 25 is passed and the out is :%b at time = %0t",SHIFT_OUT_tb,$time);
    end
     //B SHIFT RIGHT
    $display("***test case 26 --B SHIFT RIGHT--***");
    A_tb='b10100011;
    B_tb='b00110111;
    ALU_FUN_tb=4'b1110;
    #10;
    if(SHIFT_OUT_tb!=B_tb>>1&&flags!=4'b0010)
    begin
        $display("test case 26 is failed");
    end
    else begin
        $display("test case 26 is passed and the out is :%b at time = %0t",SHIFT_OUT_tb,$time);
    end
 //B SHIFT LEFT
    $display("***test case 27 --B SHIFT LEFT--***");
    A_tb='b10100011;
    B_tb='b00110111;
    ALU_FUN_tb=4'b1111;
    #10;
    if(SHIFT_OUT_tb!=B_tb<<1&&flags!=4'b0010)
    begin
        $display("test case 27 is failed");
    end
    else begin
        $display("test case 27 is passed and the out is :%b at time = %0t",SHIFT_OUT_tb,$time);
    end
                                /*NOP TEST*/

    $display("***test case 28 --NOP--***");
    A_tb='b10100011;
    B_tb='d20;
    ALU_FUN_tb=4'b1000;
    #10;
    if(CMP_OUT_tb!='b0&&flags!=4'b0001)
    begin
        $display("test case 28 is failed");
    end
    else begin
        $display("test case 28 is passed and the out is :%b at time = %0t",CMP_OUT_tb,$time);
    end
   

$stop;
end
endmodule
