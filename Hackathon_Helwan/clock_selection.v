module clk_selection (
    input wire sel,                // CTRL[0] — select input
    input wire clk_a,              // WISH_CLK
    input wire clk_b,              // external_CLK
    output wire clk_out            // selected clock
);

    assign clk_out = (sel) ? clk_b : clk_a;

endmodule
