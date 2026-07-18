module RAM ( 
input clk, 
input write, 
input read, 
input [7:0] data_in, 
input [15:0] address, 
output reg [8:0] data_out 
); 
// Declare a 9-bit associative array using the logic data type & the key of int datatype 
logic [8:0] RAM [int];
always @(posedge clk) begin 
if (write) 
RAM[address] = {~^data_in, data_in}; 
else if (read) 
data_out =  RAM[address]; 
end 
endmodule 
