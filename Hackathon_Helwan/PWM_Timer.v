module PWM_TIMER (
    input [15:0] I_DC_PWM,     // External DC
    input [15:0] DC_PWM,       // Register DC
    input [15:0] PERIOD_PWM,   // Period
    input [7:0 ] CTRL_PWM,     // Control register
    input        i_DC_valid_PWM,
    input        CLK_PWM,
    input        RST_PWM,

    output reg   O_PWM1,
    output reg [7:0] CTRL_out  // Modified CTRL with interrupt bit cleared (bit 5)
);

    // Internal signals
    reg [15:0] main_counter1;
    reg        Out_TIMER;
    reg        Out_PWM1;
    reg [15:0] dc_val;
    reg        irq_flag;

    // Duty cycle selection (combinational)
    always @(*) begin
        dc_val = (CTRL_PWM[6]) ? I_DC_PWM : DC_PWM;
    end

    // Unified sequential block for all stateful behavior
    always @(posedge CLK_PWM or posedge RST_PWM) begin
        if (RST_PWM) begin
            main_counter1 <= 0;
            Out_TIMER     <= 0;
            Out_PWM1      <= 0;
            irq_flag      <= 0;
        end
        else if (CTRL_PWM[7]) begin  // Soft reset
            main_counter1 <= 0;
            Out_TIMER     <= 0;
            Out_PWM1      <= 0;
            irq_flag      <= 0;
        end
        else begin
            // Default
            Out_TIMER <= 0;

            // === Timer Mode ===
            if (!CTRL_PWM[1] && CTRL_PWM[2]) begin
                if (!CTRL_PWM[3] && irq_flag && CTRL_PWM[5]) begin
                    // One-shot mode, waiting for interrupt to be cleared
                    main_counter1 <= main_counter1;  // Hold
                end
                else begin
                    if (main_counter1 < PERIOD_PWM) begin
                        main_counter1 <= main_counter1 + 1;
                    end
                    else begin
                        Out_TIMER     <= 1;
                        irq_flag      <= 1;

                        if (CTRL_PWM[3])  // Continuous mode
                            main_counter1 <= 0;
                        else              // One-shot mode
                            main_counter1 <= PERIOD_PWM;
                    end
                end
            end

            // === PWM Mode ===
            else if (CTRL_PWM[1] && CTRL_PWM[2]) begin
                if ( dc_val == 'd0) begin
                    Out_PWM1 <= 'b0;
                    main_counter1 <= main_counter1 + 1;
                    if (main_counter1 == PERIOD_PWM)
                        main_counter1 <= 0;
                end
                else if (dc_val < PERIOD_PWM) begin // DC > Period handle this error by reset counter in next else
                    Out_PWM1 <= (main_counter1 <= dc_val);
                    main_counter1 <= main_counter1 + 1;
                    if (main_counter1 == PERIOD_PWM)
                        main_counter1 <= 0;
                end
                else begin
                    Out_PWM1 <= 0;
                    main_counter1 <= 0;
                end
            end
            // === Interrupt Clear Logic ===
            if (!CTRL_PWM[5])
                irq_flag <= 0;
        end
    end

    // Combinational CTRL update with IRQ bit logic
    always @(*) begin
        if (CTRL_PWM[5] == 1'b0)
            CTRL_out = CTRL_PWM & 8'b11011111;  // Clear interrupt bit (bit 5)
        else
            CTRL_out = (irq_flag) ? (CTRL_PWM | 8'b00100000) : CTRL_PWM;  // Set bit 5 if irq_flag is high
    end

    always @(*) begin
            if (CTRL_PWM[4]) begin
                O_PWM1 = (CTRL_PWM[1]) ? Out_PWM1 : Out_TIMER;
            end
            else begin
                O_PWM1 = 0;
            end
    end
endmodule
