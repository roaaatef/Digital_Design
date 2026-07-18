module ALSU_tb();
parameter INPUT_PRIORITY ="A"; parameter FULL_ADDER ="ON";
reg [2:0] A,B,opcode;
reg clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction;
wire [5:0] out_dut; wire[15:0]leds_dut;
////////////////////////////////////////////////////////
ALSUU alsu (clk,rst,A,B,red_op_A,red_op_B,cin,serial_in,opcode,bypass_A,bypass_B,direction,out_dut,leds_dut);
////////////////////////////////////////////////////////////////
initial begin
clk=0;
forever 
#1 clk=~clk;
end
///////////////////////////
integer i;
initial begin
rst=1;
A=0; B=0; opcode=0;
cin=0; serial_in=0; red_op_A=0; red_op_B=0; bypass_A=0; bypass_B=0; direction=0; 
@(negedge clk);
if((out_dut!=6'b0)||(leds_dut!=16'b0)) begin
$display ("error");
$stop;
end
else begin
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end
rst=0; bypass_A=1; bypass_B=1;

for(i=0;i<10;i=i+1) begin
A=$random; B=$random; opcode=$urandom_range(0,5);
repeat (2) begin
@(negedge clk);
end
if(out_dut!=A) begin
$display("error");
$stop;
end
else
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end
bypass_A=0; bypass_B=0; opcode=3'b0;
for(i=0;i<10;i=i+1) begin
A=$random; B=$random; red_op_A=$random; red_op_B =$random;
repeat (2) begin
@(negedge clk);
end
if(((red_op_A==1)&&(out_dut!=&A))||((red_op_B==1)&&(out_dut!=&B))) begin
$display("error");
$stop;
end
else if ((red_op_A==1)&&(red_op_B==1)&&(out_dut!=&A)) begin
$display("error");
$stop;
end
else if((red_op_A==0)&&(red_op_B==0)&&(out_dut != {3'b0, A & B})) begin
$display("error");
$stop;
end
else begin
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end
end
opcode=3'b001; 
for (i=0;i<10;i=i+1) begin
A=$random; B=$random; 
red_op_A=$random; red_op_B =$random;
repeat (2) begin
@(negedge clk);
end
if((red_op_A==1)&&(red_op_B==0)&&(out_dut!={5'b0, ^A})) begin
$display("error");
$stop;
end
	 else if ((red_op_B==1)&&(red_op_A==0)&&(out_dut!={5'b0, ^B})) begin
$display("error");
$stop;
end
else if ((red_op_A==1)&&(red_op_B==1)&&(out_dut!={5'b0, ^A})) begin
$display("error");
$stop;
end
else if((red_op_A==0)&&(red_op_B==0)&&(out_dut != {3'b0, A ^ B})) begin
$display("error");
$stop;
end
else begin
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end
end
red_op_A=0; red_op_B=0; opcode=3'b010;
for (i=0;i<10;i=i+1) begin
A=$random; B=$random; cin=$random;
repeat (2) begin
@(negedge clk);
end
if(out_dut!=(A+B+cin)) begin
$display("error");
$stop;	
end
else 
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);

end
opcode =3'b011;
for (i=0;i<10;i=i+1) begin
A=$random; B=$random; 
repeat (2) begin
@(negedge clk);
end
if(out_dut!=A*B) begin
$display("error");
$stop;	
end
else 
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);

end
opcode=3'b100;
for (i=0;i<10;i=i+1) begin
	A=$random; B=$random; serial_in=$random; direction=$random;
	repeat (2) begin
@(negedge clk);
end
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end
opcode=3'b101;
for (i=0;i<10;i=i+1) begin
	A=$random; B=$random; serial_in=$random; direction=$random;
	repeat (2) begin
@(negedge clk);
end
$display ("rst=%b,A=%b,B=%b,opcode=%b,cin=%b,serial_in=%b,red_op_A=%b,red_op_B=%b,bypass_A=%b,bypass_B=%b,direction=%b,out_dut=%b,leds_dut=%b",rst,A,B,opcode,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction,out_dut,leds_dut);
end

$stop;
end
endmodule