module SLAVE (SLAVE_if.DUT s_if);

localparam IDLE      = 3'b000;
localparam CHK_CMD     = 3'b001;
localparam WRITE  = 3'b010;
localparam READ_ADD  = 3'b011;
localparam READ_DATA = 3'b100;


reg [3:0] counter;
reg       received_address;

reg [2:0] cs, ns;

always @(posedge s_if.clk) begin
    if (~s_if.rst_n) begin
        cs <= IDLE;
    end
    else begin
        cs <= ns;
    end
end

always @(*) begin
    case (cs)
        IDLE : begin
            if (s_if.SS_n)
                ns = IDLE;
            else
                ns = CHK_CMD;
        end
        CHK_CMD : begin
            if (s_if.SS_n)
                ns = IDLE;
            else begin
                if (~s_if.MOSI)
                    ns = WRITE;
                else begin
                    if (received_address) 
                        ns = READ_DATA; 
                    else
                        ns = READ_ADD;
                end
            end
        end
        WRITE : begin
            if (s_if.SS_n)
                ns = IDLE;
            else
                ns = WRITE;
        end
        READ_ADD : begin
            if (s_if.SS_n)
                ns = IDLE;
            else
                ns = READ_ADD;
        end
        READ_DATA : begin
            if (s_if.SS_n)
                ns = IDLE;
            else
                ns = READ_DATA;
        end
    endcase
end

always @(posedge s_if.clk) begin
    if (~s_if.rst_n) begin 
        s_if.rx_data <= 0;
        s_if.rx_valid <= 0;
        received_address <= 0;
        s_if.MISO <= 0;
        counter <= 0; 
    end
    else begin
        case (cs)
            IDLE : begin
                s_if.rx_valid <= 0;            
            end
            CHK_CMD : begin
                counter <= 10;      
            end
            WRITE : begin
                if (counter > 0) begin
                    s_if.rx_data[counter-1] <= s_if.MOSI;
                    counter <= counter - 1;
                end
                else begin
                    s_if.rx_valid <= 1;
                end
            end
            READ_ADD : begin
                if (counter > 0) begin
                    s_if.rx_data[counter-1] <= s_if.MOSI;
                    counter <= counter - 1;
                end
                else begin
                    s_if.rx_valid <= 1;
                    received_address <= 1;
                end
            end
            READ_DATA : begin
         
                if (s_if.tx_valid) begin
                  
                    if (counter > 0) begin
                        s_if.MISO <= s_if.tx_data[counter-1];
                        counter <= counter - 1;
                    end
                    else begin
                        received_address <= 0;
                       
                    end
                end
                else begin
                    if (counter > 0) begin
                        s_if.rx_data[counter-1] <= s_if.MOSI;
                        counter <= counter - 1;
                    end
                    else begin
                        s_if.rx_valid <= 1;
                         counter <= 9;
                    end
                end
            end
        endcase
    end
end
`ifdef SIM
ass_state_idle_to_chk_cmd : assert property   (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==IDLE ) |=> cs==CHK_CMD [->1]);
cv_state_idle_to_chk_cmd : cover property   (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==IDLE ) |=> cs==CHK_CMD [->1]) ;

ass_state_chk_cmd1 : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && !s_if.MOSI ) |=> cs==WRITE );
cv_state_chk_cmd1 : cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && !s_if.MOSI ) |=> cs==WRITE) ;

ass_state_chk_cmd2 : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && s_if.MOSI && !received_address ) |=> cs==READ_ADD );
cv_state_chk_cmd2: cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && s_if.MOSI  && !received_address) |=> cs==READ_ADD) ;

ass_state_chk_cmd3 : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && s_if.MOSI && received_address ) |=> cs==READ_DATA );
cv_state_chk_cmd3: cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==CHK_CMD && s_if.MOSI  && received_address) |=> cs==READ_DATA) ;

ass_state_WRITE_to_IDLE : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==WRITE && s_if.SS_n ) |=> cs==IDLE );
cv_state_WRITE_to_IDLE: cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==WRITE  && s_if.SS_n  ) |=> cs==IDLE) ;

ass_state_READ_ADD_to_IDLE : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==READ_ADD && s_if.SS_n ) |=> cs==IDLE );
cv_state_READ_ADD_to_IDLE: cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==READ_ADD  && s_if.SS_n  ) |=> cs==IDLE) ;

ass_state_READ_DATA_to_IDLE : assert property  (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==READ_DATA && s_if.SS_n ) |=> cs==IDLE );
cv_state_READ_DATA_to_IDLE: cover property    (@(posedge s_if.clk) disable iff (!s_if.rst_n) (cs==READ_DATA  && s_if.SS_n  ) |=> cs==IDLE) ;
`endif
endmodule