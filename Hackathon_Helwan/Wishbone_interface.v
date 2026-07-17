module inter_Wishbone (
    // Wishbone Interface
    input             i_clk_wish,
    input             i_rst_wish,
    input             i_wb_cyc_wish,
    input             i_wb_stb_wish,
    input             i_wb_we_wish,
    input  [15:0]     i_wb_adr_wish,
    input  [15:0]     i_wb_data_wish,
    output reg        o_wb_ack_wish,
    output reg [15:0] o_wb_data_wish,

    // Output to PWM module
    output reg [7:0]  Ctrl_wish,
    output reg [15:0] Divisor_wish,
    output reg [15:0] Period_wish,
    output reg [15:0] DC_wish,
    output            o_clk_to_slave,

    // Input from PWM module (to update CTRL bits like interrupt flag)
    input  [7:0]      ctrl_from_pwm
);

    // Clock forwarding
    assign o_clk_to_slave = i_clk_wish;

    always @(posedge i_clk_wish or posedge i_rst_wish) begin
        if (i_rst_wish) begin
            o_wb_ack_wish  <= 0;
            o_wb_data_wish <= 0;
            Ctrl_wish      <= 0;
            Divisor_wish   <= 0;
            Period_wish    <= 0;
            DC_wish        <= 0;
        end

        // Write operation from Master
        else if (i_wb_cyc_wish && i_wb_stb_wish && i_wb_we_wish) begin
            o_wb_ack_wish <= 1;
            case (i_wb_adr_wish)
                16'h0000: Ctrl_wish    <= i_wb_data_wish[7:0];
                16'h0002: Divisor_wish <= i_wb_data_wish;
                16'h0004: Period_wish  <= i_wb_data_wish;
                16'h0006: DC_wish      <= i_wb_data_wish;
            endcase
        end

        // Read operation from Master
        else if (i_wb_cyc_wish && i_wb_stb_wish && !i_wb_we_wish) begin
            o_wb_ack_wish <= 1;
            case (i_wb_adr_wish)
                16'h0000: o_wb_data_wish <= {8'b0, Ctrl_wish};
                16'h0002: o_wb_data_wish <= Divisor_wish;
                16'h0004: o_wb_data_wish <= Period_wish;
                16'h0006: o_wb_data_wish <= DC_wish;
            endcase
        end

        // Allow PWM to update CTRL allowing
        else begin
         o_wb_ack_wish <= 0;
         Ctrl_wish[5] <= ctrl_from_pwm[5];
        end

    end

endmodule
