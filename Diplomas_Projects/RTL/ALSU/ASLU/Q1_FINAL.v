module ALSUU (clk,rst,A,B,red_op_A,red_op_B,cin,serial_in,opcode,bypass_A,bypass_B,direction,out,leds);
parameter INPUT_PRIORITY ="A"; parameter FULL_ADDER ="ON";
input [2:0] A,B,opcode;
input clk,rst,cin,serial_in,red_op_A,red_op_B,bypass_A,bypass_B,direction;
output  reg [5:0] out; output reg [15:0]leds;
wire [2:0] A_DFF,B_DFF,opcode_DFF; 
//reg [5:0] out_DFF;
wire cin_dff,serial_in_dff,red_op_A_dff,red_op_B_dff,bypass_A_dff,bypass_B_dff,direction_df;
 wire invalid_opcode = (opcode == 3'b110) || (opcode == 3'b111);
 wire invalid_red_op = (red_op_A || red_op_B) && !(opcode == 3'b000 || opcode == 3'b001);
 wire invalid_case = invalid_opcode || invalid_red_op;
D_FF  #(3) dff1(clk,rst,A,A_DFF);
D_FF  #(3) dff2(clk,rst,B,B_DFF);
D_FF  #(3) dff3(clk,rst,opcode,opcode_DFF);
D_FF  #(1) dff5(clk,rst,cin,cin_dff);
D_FF  #(1) dff6(clk,rst,serial_in,serial_in_dff);
D_FF  #(1) dff7(clk,rst,red_op_A,red_op_A_dff);
D_FF  #(1) dff8(clk,rst,red_op_B,red_op_B_dff);
D_FF  #(1) dff9(clk,rst,bypass_A,bypass_A_dff);
D_FF  #(1) dff10(clk,rst,bypass_B,bypass_B_dff);
D_FF  #(1) dff11(clk,rst,direction,direction_dff);
/////////////////////////////////
always @(posedge clk or posedge rst) begin
if(rst) begin
	out<=0;
end
else begin
	if((bypass_A_dff==1)&&(bypass_B_dff==0))
begin
out=A_DFF;
end
else if ((bypass_B_dff==1)&&(bypass_A_dff==0))
begin
out=B_DFF;
end
else if (bypass_A_dff&&bypass_B_dff)
begin
 if (INPUT_PRIORITY =="A")
 out=A_DFF;
 else 
 out=B_DFF;
end
else 
begin
if((red_op_A_dff==1)&&(red_op_B_dff==0)) begin
case (opcode_DFF) 
3'b000: out =&A_DFF;
3'b001:out=^A_DFF ;
3'b010:  begin
if (FULL_ADDER =="ON")
out=A_DFF+B_DFF+cin_dff;
else 
out=A_DFF+B_DFF;
end
3'b011:out=A_DFF*B_DFF;
3'b100: begin
if(direction_dff)
out={out[4:0],serial_in_dff};
else
out={serial_in_dff,out[5:1]};
end
3'b101: begin 
if(direction_dff)
out={out [4:0],out[5]} ;
else
 out={out [0],out[5:1]};
end
3'b110:out=6'b0;
3'b111:out=6'b0;
endcase
end
else if  ((red_op_B_dff==1)&&(red_op_A_dff==0))begin
	case (opcode_DFF) 
3'b000: out =&B_DFF;
3'b001:out=^B_DFF ;
3'b010:  begin
if (FULL_ADDER =="ON")
out=A_DFF+B_DFF+cin_dff;
else 
out=A_DFF+B_DFF;
end
3'b011:out=A_DFF*B_DFF;
3'b100: begin
if(direction_dff)
out={out[4:0],serial_in_dff};
else
out={serial_in_dff,out[5:1]};
end
3'b101: begin 
if(direction_dff)
out={out [4:0],out[5]} ;
else
 out={out [0],out[5:1]};
end
3'b110:out=6'b0;
3'b111:out=6'b0;
endcase
end	
else if (red_op_A_dff&&red_op_B_dff) begin
	case (opcode_DFF) 
3'b000: begin 
if(INPUT_PRIORITY =="A") 
out=&A_DFF;
else begin
	out =&B_DFF;
end
end
3'b001: begin 
if(INPUT_PRIORITY =="A") 
out ={5'b0, ^A_DFF};
else begin
	out ={5'b0, ^B_DFF};
end
end
3'b010: begin
if (FULL_ADDER =="ON")
out=A_DFF+B_DFF+cin_dff;
else 
out=A_DFF+B_DFF;
end
3'b011:out=A_DFF*B_DFF;
3'b100: begin
if(direction_dff)
out={out[4:0],serial_in_dff};
else
out={serial_in_dff,out[5:1]};
end
3'b101:begin 
if(direction_dff)
out={out [4:0],out[5]} ;
else
 out={out [0],out[5:1]};
end
3'b110:out=6'b0;
3'b111:out=6'b0;
endcase
end
else begin
	case (opcode_DFF) 
3'b000: out =A_DFF&B_DFF;
3'b001:out=A_DFF^B_DFF;
3'b010:  begin
if (FULL_ADDER =="ON")
out=A_DFF+B_DFF+cin_dff;
else 
out=A_DFF+B_DFF;
end
3'b011:out=A_DFF*B_DFF;
3'b100:begin
if(direction_dff)
out={out[4:0],serial_in_dff};
else
out={serial_in_dff,out[5:1]};
end
3'b101:begin 
if(direction_dff)
out={out [4:0],out[5]} ;
else
 out={out [0],out[5:1]};
end
3'b110:out=6'b0;
3'b111:out=6'b0;
endcase
end
end
end
end
//D_FF  #(6) dff4(clk,rst,out_DFF,out);
 always @(posedge clk or posedge rst) begin
        if (rst)
            leds <= 16'b0;  // Reset LEDs
        else if (invalid_case)
            leds <= ~leds;  // Toggle all bits to make them blink
        else
            leds <= 16'b0;  // Turn off LEDs for valid cases
    end
endmodule