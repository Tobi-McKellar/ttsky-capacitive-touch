/*
 * Copyright (c) 2025 Tobi McKellar
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_tobi_mckellar_top (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Outputs from the capacitivetouch module
    wire cap_out;
    wire cap_oe;
    wire btn;

    // Instantiate your VHDL module
    capacitivetouch uut (
        .clk    (clk),
        .reset  (rst_n),
        .cap_in (uio_in[0]),
        .cap_out(cap_out),
        .cap_oe (cap_oe),
        .btn    (btn)
    );

    // Assign output signals
    assign uio_out[0] = cap_out;
    assign uio_oe[0]  = cap_oe;       // 1 = output, 0 = input
    assign uo_out[0]  = btn;

    // Set all other uio pins to input (0 OE, 0 out)
    assign uio_out[7:1] = 7'b0;
    assign uio_oe[7:1]  = 7'b0;

    // Set unused dedicated outputs to 0
    assign uo_out[7:1]  = 7'b0;

endmodule
