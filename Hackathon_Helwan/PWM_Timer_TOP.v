module PWM_Timer_TOP (
    // Inputs (from Wishbone Master)
    input             i_clk,       // Wishbone clock
                      i_rst,       // Reset (active high)
                      i_wb_cyc,
                      i_wb_stb,
                      i_wb_we,

    input  [15:0]     i_wb_adr,
                      i_wb_data,

    // External DC input and external clock
    input  [15:0]     i_DC,        // External Duty Cycle input
    input             i_DC_valid,  // External DC valid flag
    input             i_extclk,    // External clock input

    // Outputs
    output            o_wb_ack,
    output [15:0]     o_wb_data,
    output            O_PWM        // Final PWM output
);

    // Internal signals
    wire        selected_clk;
    wire        clk_to_divider;
    wire        divided_clk;

    wire [7:0]  CTRL_reg;
    wire [15:0] DC_reg;
    wire [15:0] PERIOD_reg;
    wire [15:0] DIVISOR_reg;

    wire [7:0] ctrl_from_pwm;  // New wire for updated CTRL with interrupt bit

    // Wishbone interface instance
    inter_Wishbone Wishbone_IF (
        .i_clk_wish(i_clk),
        .i_rst_wish(i_rst),
        .i_wb_cyc_wish(i_wb_cyc),
        .i_wb_stb_wish(i_wb_stb),
        .i_wb_we_wish(i_wb_we),
        .i_wb_adr_wish(i_wb_adr),
        .i_wb_data_wish(i_wb_data),

        .o_wb_ack_wish(o_wb_ack),
        .o_wb_data_wish(o_wb_data),

        .Ctrl_wish(CTRL_reg),
        .Divisor_wish(DIVISOR_reg),
        .Period_wish(PERIOD_reg),
        .DC_wish(DC_reg),
        .o_clk_to_slave(clk_to_divider),

        .ctrl_from_pwm(ctrl_from_pwm)  // Added connection for interrupt update
    );

    // Clock Divider instance
    Clock_Divider CLK_DIV (
        .Clk_ref(clk_to_divider),
        .RST(i_rst),
        .Divisor(DIVISOR_reg),
        .Clk_out(divided_clk)
    );

    // Clock selection logic
    clk_selection CLK_SEL (
        .sel(CTRL_reg[0]),     // Select between external or divided clock
        .clk_a(divided_clk),      // Wishbone/Divider clock
        .clk_b(i_extclk),   // External clock
        .clk_out(selected_clk) // Selected output clock
    );

    // PWM Timer instance
    PWM_TIMER PWM (
        .I_DC_PWM(i_DC),
        .i_DC_valid_PWM(i_DC_valid),
        .DC_PWM(DC_reg),
        .PERIOD_PWM(PERIOD_reg),
        .CLK_PWM(selected_clk),
        .CTRL_PWM(CTRL_reg),
        .RST_PWM(i_rst),
        .O_PWM1(O_PWM),
        .CTRL_out(ctrl_from_pwm)   // New output to feedback updated CTRL
    );

endmodule
