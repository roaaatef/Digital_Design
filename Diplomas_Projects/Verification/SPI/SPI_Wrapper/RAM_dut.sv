module RAM  #(
    parameter ADDR_SIZE=8,
parameter MEM_DEPTH=256,
parameter WORD_SIZE=8
    )
(
      input bit clk,
 input logic  [9:0] din,
 input logic  rst_n, rx_valid,
 output logic [WORD_SIZE-1:0] dout,
 output logic   tx_valid
);

reg [WORD_SIZE-1:0] MEM [MEM_DEPTH-1:0];

reg [ADDR_SIZE-1:0] Rd_Addr, Wr_Addr;

always @(posedge clk) begin
    if (~rst_n) begin
        dout <= 0;
        tx_valid <= 0;
        Rd_Addr<=0;
         Wr_Addr<=0;
    end
    else   begin                                        
        if (rx_valid) begin
            case (din[9:8])
                2'b00 :  begin
                    Wr_Addr <= din[7:0];
                    tx_valid<=0;
                end
                2'b01 :  begin
                    MEM[Wr_Addr] <= din[7:0];
                    tx_valid<=0;
                end
                2'b10 :  begin
                    Rd_Addr <= din[7:0];
                    tx_valid<=0;
                end
                2'b11 :  begin
                    dout <= MEM[Rd_Addr];
                    tx_valid<=1;
                end
                default : dout <= 0;
            endcase
      end
end
end

endmodule