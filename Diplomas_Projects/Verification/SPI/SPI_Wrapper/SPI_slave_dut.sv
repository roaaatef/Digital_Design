module SLAVE (
      input bit clk,
 input logic            MOSI, rst_n, SS_n, tx_valid,
 input logic     [7:0] tx_data,
 output logic [9:0] rx_data,
output  logic       rx_valid, MISO
    );

localparam IDLE      = 3'b000;
localparam CHK_CMD     = 3'b001;
localparam WRITE  = 3'b010;
localparam READ_ADD  = 3'b011;
localparam READ_DATA = 3'b100;


reg [3:0] counter;
reg       received_address;

reg [2:0] cs, ns;

always @(posedge clk) begin
    if (~rst_n) begin
        cs <= IDLE;
    end
    else begin
        cs <= ns;
    end
end

always @(*) begin
    case (cs)
        IDLE : begin
            if (SS_n)
                ns = IDLE;
            else
                ns = CHK_CMD;
        end
        CHK_CMD : begin
            if (SS_n)
                ns = IDLE;
            else begin
                if (~MOSI)
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
            if (SS_n)
                ns = IDLE;
            else
                ns = WRITE;
        end
        READ_ADD : begin
            if (SS_n)
                ns = IDLE;
            else
                ns = READ_ADD;
        end
        READ_DATA : begin
            if (SS_n)
                ns = IDLE;
            else
                ns = READ_DATA;
        end
    endcase
end

always @(posedge clk) begin
    if (~rst_n) begin 
        rx_data <= 0;
        rx_valid <= 0;
        received_address <= 0;
        MISO <= 0;
        counter <= 0; 
    end
    else begin
        case (cs)
            IDLE : begin
                rx_valid <= 0;            
            end
            CHK_CMD : begin
                counter <= 10;      
            end
            WRITE : begin
                if (counter > 0) begin
                    rx_data[counter-1] <= MOSI;
                    counter <= counter - 1;
                end
                else begin
                    rx_valid <= 1;
                end
            end
            READ_ADD : begin
                if (counter > 0) begin
                    rx_data[counter-1] <= MOSI;
                    counter <= counter - 1;
                end
                else begin
                    rx_valid <= 1;
                    received_address <= 1;
                end
            end
            READ_DATA : begin
         
                if (tx_valid) begin
                    
                    if (counter > 0) begin
                        MISO <= tx_data[counter-1];
                        counter <= counter - 1;
                    end
                    else begin
                        received_address <= 0;
                       
                    end
                end
                else begin
                    if (counter > 0) begin
                        rx_data[counter-1] <= MOSI;
                        counter <= counter - 1;
                    end
                    else begin
                        rx_valid <= 1;
                         counter <= 9;
                    end
                end
            end
        endcase
    end
end
`ifdef SIM
ass_state_idle_to_chk_cmd : assert property   (@(posedge clk) disable iff (!rst_n) (cs==IDLE ) |=> cs==CHK_CMD [->1]);
cv_state_idle_to_chk_cmd : cover property   (@(posedge clk) disable iff (!rst_n) (cs==IDLE ) |=> cs==CHK_CMD [->1]) ;

ass_state_chk_cmd1 : assert property  (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && !MOSI ) |=> cs==WRITE );
cv_state_chk_cmd1 : cover property    (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && !MOSI ) |=> cs==WRITE) ;

ass_state_chk_cmd2 : assert property  (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && MOSI && !received_address ) |=> cs==READ_ADD );
cv_state_chk_cmd2: cover property    (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && MOSI  && !received_address) |=> cs==READ_ADD) ;

ass_state_chk_cmd3 : assert property  (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && MOSI && received_address ) |=> cs==READ_DATA );
cv_state_chk_cmd3: cover property    (@(posedge clk) disable iff (!rst_n) (cs==CHK_CMD && MOSI  && received_address) |=> cs==READ_DATA) ;

ass_state_WRITE_to_IDLE : assert property  (@(posedge clk) disable iff (!rst_n) (cs==WRITE && SS_n ) |=> cs==IDLE );
cv_state_WRITE_to_IDLE: cover property    (@(posedge clk) disable iff (!rst_n) (cs==WRITE  && SS_n  ) |=> cs==IDLE) ;

ass_state_READ_ADD_to_IDLE : assert property  (@(posedge clk) disable iff (!rst_n) (cs==READ_ADD && SS_n ) |=> cs==IDLE );
cv_state_READ_ADD_to_IDLE: cover property    (@(posedge clk) disable iff (!rst_n) (cs==READ_ADD  && SS_n  ) |=> cs==IDLE) ;

ass_state_READ_DATA_to_IDLE : assert property  (@(posedge clk) disable iff (!rst_n) (cs==READ_DATA && SS_n ) |=> cs==IDLE );
cv_state_READ_DATA_to_IDLE: cover property    (@(posedge clk) disable iff (!rst_n) (cs==READ_DATA  && SS_n  ) |=> cs==IDLE) ;
`endif
endmodule