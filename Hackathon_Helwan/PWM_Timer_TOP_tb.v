`timescale 1ns / 1ps

module PWM_Timer_TOP_tb;

  // Inputs
  reg clk = 0;
  reg rst = 0;

  // Wishbone signals
  reg i_wb_cyc, i_wb_stb, i_wb_we;
  reg [15:0] i_wb_adr, i_wb_data;
  wire o_wb_ack;
  wire [15:0] o_wb_data;

  // External DC
  reg [15:0] i_DC = 0;
  reg i_DC_valid = 0;
  reg i_extclk = 0;

  // Output
  wire o_pwm;

  // Instantiate DUT
  PWM_Timer_TOP DUT (
    .i_clk(clk),
    .i_rst(rst),
    .i_wb_cyc(i_wb_cyc),
    .i_wb_stb(i_wb_stb),
    .i_wb_we(i_wb_we),
    .i_wb_adr(i_wb_adr),
    .i_wb_data(i_wb_data),
    .o_wb_ack(o_wb_ack),
    .o_wb_data(o_wb_data),
    .i_extclk(i_extclk),
    .i_DC(i_DC),
    .i_DC_valid(i_DC_valid),
    .O_PWM(o_pwm)
  );

  // Clock generation (50 MHz)
  always #10 clk = ~clk;
  always #5 i_extclk = ~i_extclk;

  // Monitor for debugging
  initial begin
    $monitor("Time = %0t | o_pwm = %b | o_wb_data = %h", $time, o_pwm, o_wb_data);
  end

  // Wishbone Write Task
  task wb_write(input [15:0] addr, input [15:0] data);
    begin
      @(posedge clk);
      i_wb_cyc <= 1; i_wb_stb <= 1; i_wb_we <= 1;
      i_wb_adr <= addr; i_wb_data <= data;
      @(posedge clk);
      while (!o_wb_ack) @(posedge clk);
      i_wb_cyc <= 0; i_wb_stb <= 0; i_wb_we <= 0;
    end
  endtask

  // Wishbone Read Task
  task wb_read(input [15:0] addr);
    begin
      @(posedge clk);
      i_wb_cyc <= 1; i_wb_stb <= 1; i_wb_we <= 0;
      i_wb_adr <= addr;
      @(posedge clk);
      while (!o_wb_ack) @(posedge clk);
      $display("WB Read Addr %h = %h", addr, o_wb_data);
      i_wb_cyc <= 0; i_wb_stb <= 0;
    end
  endtask

  initial begin
    // Initialize
    i_wb_cyc = 0; i_wb_stb = 0; i_wb_we = 0;
    rst <= 1;
    #50;
    rst <= 0;

    // -------------------------
    // Test 1: PWM Mode, 50% duty
    $display("\nTest 1: PWM 50%% duty");
    wb_write(16'h0004, 16'd100);    // Period
    wb_write(16'h0006, 16'd50);     // DC
    wb_write(16'h0000, 8'b00010111); // [1]=1 PWM, [2]=1 enable, [4]=1 output enable, [6]=0, [7]=0
    #2000;

    // Test 2: PWM Mode, 25% duty
    $display("\nTest 2: PWM 25%% duty");
    wb_write(16'h0006, 16'd25);     // New DC
    #2000;

    // -------------------------
    // Test 3: Timer Mode with interrupt
    $display("\nTest 3: Timer Mode + Interrupt");
    wb_write(16'h0000, 8'b10000000); // Reset timer
    wb_write(16'h0004, 16'd50);      // Period = 50
    wb_write(16'h0000, 8'b00001110); // [1]=0 timer, [2]=1 enable, [3]=1 repeat, [4]=1 output
    #1500;
    wb_read(16'h0000);               // Should show interrupt = 1 (bit 5)
    wb_write(16'h0000, 8'b00000000); // Clear interrupt (write with bit 5 cleared)
    wb_read(16'h0000);               // Should show interrupt = 0

    // -------------------------
    // Test 4: Down Clocking
    $display("\nTest 4: Down Clocking with Divisor = 2");
    wb_write(16'h0002, 16'd2);       // Divisor
    wb_write(16'h0004, 16'd100);     // Period
    wb_write(16'h0006, 16'd50);      // DC
    wb_write(16'h0000, 8'b00010110); // PWM + enable + output
    #4000;

    $display("Change Divisor = 10");
    wb_write(16'h0002, 16'd10);
    #4500;

    // -------------------------
    // Test 5: Edge Case - DC > Period
    $display("\nTest 5: Invalid DC > Period");
    wb_write(16'h0004, 16'd50);      // Period
    wb_write(16'h0006, 16'd80);      // DC (invalid)
    wb_write(16'h0000, 8'b00010110); // Enable PWM
    #2000;

    // -------------------------
    // Test 6: Divisor = 0 (no division)
    $display("\nTest 6: Divisor = 0");
    wb_write(16'h0002, 16'd0);       // No division
    #2500;
    // Test 7: Down Clocking
    $display("\nTest 4: handle DC =0 and Down Clocking with Divisor = 2");
    wb_write(16'h0002, 16'd2);       // Divisor
    wb_write(16'h0004, 16'd100);     // Period
    wb_write(16'h0006, 16'd0);      // DC
    wb_write(16'h0000, 8'b00010110); // PWM + enable + output
    #4000;
    $display("\nAll tests completed.");
    $stop;
  end

endmodule
