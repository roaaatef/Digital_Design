module spr(clk,rst,din,addr,wr_en,rd_en,blk_select,addr_en,dout_en,dout,parity_out);
parameter MEM_WIDTH=16;
parameter MEM_DEPTH=1024;
parameter ADDR_SIZE=10;
parameter ADDR_PIPELINE ="FALSE";
parameter DOUT_PIPELINE="TRUE";
parameter PARITY_ENABLE=1;
////////////////////////////
input clk,rst;
input rd_en,wr_en,blk_select,addr_en,dout_en;
input [MEM_WIDTH-1:0] din;
input [ADDR_SIZE-1:0] addr;
output  reg parity_out;
output   [MEM_WIDTH-1:0] dout;
//////////////////////////////
reg [MEM_WIDTH-1:0] mem[MEM_DEPTH-1:0] ;
//////////////////////////////
reg [ADDR_SIZE-1:0] addr_ff;
wire [ADDR_SIZE-1:0] addr_mem;
reg [MEM_WIDTH-1:0] dout_ff;
reg [MEM_WIDTH-1:0] dout_mem;
////////////////////////////////
assign addr_mem=(ADDR_PIPELINE=="FALSE")?addr:addr_ff;
assign dout=(DOUT_PIPELINE=="FALSE")?dout_mem:dout_ff;
always @(posedge clk) begin
if(rst)
addr_ff<=0;
 else if((addr_en))
begin
addr_ff<=addr;
end
end

always @(posedge clk ) begin
if(rst)
dout_ff<=0;
else if (dout_en)begin
dout_ff<=dout_mem;
end
end
always @(posedge clk) begin
    if(rst) begin
        dout_mem <= 0;
parity_out<=0;
    end 
else begin
        if (blk_select) begin
            if (wr_en) begin
                mem[addr_mem] <= din;
            end
            if (rd_en) begin
                dout_mem <= mem[addr_mem];
            end

if(PARITY_ENABLE==1) begin
parity_out<=^mem[addr_mem];
end
     end  
    end
end
endmodule