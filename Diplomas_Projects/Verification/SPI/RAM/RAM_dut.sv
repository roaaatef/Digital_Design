module RAM (RAM_if.DUT r_if);

reg [r_if.WORD_SIZE-1:0] MEM [r_if.MEM_DEPTH-1:0];

reg [r_if.ADDR_SIZE-1:0] Rd_Addr, Wr_Addr;

always @(posedge r_if.clk) begin
    if (~r_if.rst_n) begin
        r_if.dout <= 0;
        r_if.tx_valid <= 0;
        Rd_Addr<=0;
         Wr_Addr<=0;
    end
    else   begin                                        
        if (r_if.rx_valid) begin
            case (r_if.din[9:8])
                2'b00 :  begin
                    Wr_Addr <= r_if.din[7:0];
                    r_if.tx_valid<=0;
                end
                2'b01 :  begin
                    MEM[Wr_Addr] <= r_if.din[7:0];
                    r_if.tx_valid<=0;
                end
                2'b10 :  begin
                    Rd_Addr <= r_if.din[7:0];
                    r_if.tx_valid<=0;
                end
                2'b11 :  begin
                    r_if.dout <= MEM[Rd_Addr];
                    r_if.tx_valid<=1;
                end
                default : r_if.dout <= 0;
            endcase
      end
end
end

endmodule