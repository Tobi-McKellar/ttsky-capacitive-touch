module capacitivetouch
  (input  clk,
   input  reset,
   input  cap_in,
   output cap_out,
   output cap_oe,
   output btn);
  reg [1:0] state;
  wire [14:0] counter;
  wire [14:0] calibration_rise_time;
  wire discharging;
  wire btn_state;
  wire [3:0] btn_state_debouncer;
  wire debounced_btn_state;
  reg sync_ff1;
  reg sync_ff2;
  localparam n6_o = 1'b0;
  wire n8_o;
  wire n14_o;
  wire [31:0] n16_o;
  wire [31:0] n18_o;
  wire [14:0] n19_o;
  wire [31:0] n20_o;
  wire n22_o;
  wire [1:0] n24_o;
  wire [14:0] n26_o;
  wire n29_o;
  wire n32_o;
  wire [31:0] n33_o;
  wire [31:0] n35_o;
  wire [14:0] n36_o;
  wire [1:0] n38_o;
  wire [14:0] n40_o;
  wire [14:0] n41_o;
  wire n43_o;
  wire n45_o;
  wire [31:0] n46_o;
  wire [31:0] n48_o;
  wire [14:0] n49_o;
  wire [31:0] n50_o;
  wire n52_o;
  wire [1:0] n54_o;
  wire [14:0] n56_o;
  wire n59_o;
  wire n62_o;
  wire [31:0] n63_o;
  wire [31:0] n65_o;
  wire [14:0] n66_o;
  wire [31:0] n67_o;
  wire [31:0] n68_o;
  wire [9:0] n70_o;
  wire [9:0] n72_o;
  wire [30:0] n73_o;
  wire [31:0] n74_o;
  wire [31:0] n75_o;
  wire n76_o;
  wire n79_o;
  wire [2:0] n80_o;
  wire n82_o;
  wire n84_o;
  wire n86_o;
  wire n88_o;
  wire [1:0] n90_o;
  wire [14:0] n92_o;
  wire n94_o;
  wire n95_o;
  wire [3:0] n96_o;
  wire [3:0] n97_o;
  wire n98_o;
  wire n101_o;
  wire [3:0] n102_o;
  reg [1:0] n104_o;
  reg [14:0] n106_o;
  reg [14:0] n108_o;
  reg n110_o;
  reg n112_o;
  reg [3:0] n114_o;
  reg n116_o;
  reg [1:0] n150_q;
  reg [14:0] n151_q;
  wire n152_o;
  wire [14:0] n153_o;
  reg [14:0] n154_q;
  reg n155_q;
  reg n156_q;
  reg [3:0] n157_q;
  reg n158_q;
  reg n159_q;
  reg n160_q;
  assign cap_out = n6_o;
  assign cap_oe = n8_o;
  assign btn = debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:20:12  */
  always @*
    state = n150_q; // (isignal)
  initial
    state = 2'b00;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:25:12  */
  assign counter = n151_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:26:12  */
  assign calibration_rise_time = n154_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:28:12  */
  assign discharging = n155_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:29:12  */
  assign btn_state = n156_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:30:12  */
  assign btn_state_debouncer = n157_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:31:12  */
  assign debounced_btn_state = n158_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:33:12  */
  always @*
    sync_ff1 = n159_q; // (isignal)
  initial
    sync_ff1 = 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:34:12  */
  always @*
    sync_ff2 = n160_q; // (isignal)
  initial
    sync_ff2 = 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:38:19  */
  assign n8_o = discharging ? 1'b1 : 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:45:18  */
  assign n14_o = ~reset;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:63:40  */
  assign n16_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:63:40  */
  assign n18_o = n16_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:63:32  */
  assign n19_o = n18_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:65:32  */
  assign n20_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:65:32  */
  assign n22_o = $signed(n20_o) >= $signed(32'b00000000000000000000000000001010);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:65:21  */
  assign n24_o = n22_o ? 2'b01 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:65:21  */
  assign n26_o = n22_o ? 15'b000000000000000 : n19_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:65:21  */
  assign n29_o = n22_o ? 1'b0 : 1'b1;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:62:17  */
  assign n32_o = state == 2'b00;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:72:40  */
  assign n33_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:72:40  */
  assign n35_o = n33_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:72:32  */
  assign n36_o = n35_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:73:21  */
  assign n38_o = sync_ff2 ? 2'b10 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:73:21  */
  assign n40_o = sync_ff2 ? 15'b000000000000000 : n36_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:73:21  */
  assign n41_o = sync_ff2 ? counter : calibration_rise_time;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:73:21  */
  assign n43_o = sync_ff2 ? 1'b1 : discharging;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:71:17  */
  assign n45_o = state == 2'b01;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:81:40  */
  assign n46_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:81:40  */
  assign n48_o = n46_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:81:32  */
  assign n49_o = n48_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:83:32  */
  assign n50_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:83:32  */
  assign n52_o = $signed(n50_o) >= $signed(32'b00000000000000000000000000001010);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:83:21  */
  assign n54_o = n52_o ? 2'b11 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:83:21  */
  assign n56_o = n52_o ? 15'b000000000000000 : n49_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:83:21  */
  assign n59_o = n52_o ? 1'b0 : 1'b1;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:80:17  */
  assign n62_o = state == 2'b10;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:90:36  */
  assign n63_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:90:36  */
  assign n65_o = n63_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:90:28  */
  assign n66_o = n65_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:92:25  */
  assign n67_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:66  */
  assign n68_o = {17'b0, calibration_rise_time};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:91  */
  assign n70_o = calibration_rise_time[9:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:79  */
  assign n72_o = n70_o >> 31'b0000000000000000000000000000011;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:68  */
  assign n73_o = {21'b0, n72_o};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:66  */
  assign n74_o = {1'b0, n73_o};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:66  */
  assign n75_o = n68_o + n74_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:42  */
  assign n76_o = $signed(n67_o) > $signed(n75_o);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:96:25  */
  assign n79_o = n76_o ? 1'b1 : 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:101:79  */
  assign n80_o = btn_state_debouncer[2:0];
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:107:48  */
  assign n82_o = btn_state_debouncer == 4'b1111;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:109:51  */
  assign n84_o = btn_state_debouncer == 4'b0000;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:109:25  */
  assign n86_o = n84_o ? 1'b0 : debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:107:25  */
  assign n88_o = n82_o ? 1'b1 : n86_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n90_o = sync_ff2 ? 2'b10 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n92_o = sync_ff2 ? 15'b000000000000000 : n66_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n94_o = sync_ff2 ? 1'b1 : discharging;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n95_o = sync_ff2 ? n79_o : btn_state;
  assign n96_o = {n80_o, btn_state};
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n97_o = sync_ff2 ? n96_o : btn_state_debouncer;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:91:21  */
  assign n98_o = sync_ff2 ? n88_o : debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:89:17  */
  assign n101_o = state == 2'b11;
  assign n102_o = {n101_o, n62_o, n45_o, n32_o};
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n104_o = n90_o;
      4'b0100: n104_o = n54_o;
      4'b0010: n104_o = n38_o;
      4'b0001: n104_o = n24_o;
      default: n104_o = 2'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n106_o = n92_o;
      4'b0100: n106_o = n56_o;
      4'b0010: n106_o = n40_o;
      4'b0001: n106_o = n26_o;
      default: n106_o = 15'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n108_o = calibration_rise_time;
      4'b0100: n108_o = calibration_rise_time;
      4'b0010: n108_o = n41_o;
      4'b0001: n108_o = calibration_rise_time;
      default: n108_o = 15'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n110_o = n94_o;
      4'b0100: n110_o = n59_o;
      4'b0010: n110_o = n43_o;
      4'b0001: n110_o = n29_o;
      default: n110_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n112_o = n95_o;
      4'b0100: n112_o = btn_state;
      4'b0010: n112_o = btn_state;
      4'b0001: n112_o = btn_state;
      default: n112_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n114_o = n97_o;
      4'b0100: n114_o = btn_state_debouncer;
      4'b0010: n114_o = btn_state_debouncer;
      4'b0001: n114_o = btn_state_debouncer;
      default: n114_o = 4'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:61:13  */
  always @*
    case (n102_o)
      4'b1000: n116_o = n98_o;
      4'b0100: n116_o = debounced_btn_state;
      4'b0010: n116_o = debounced_btn_state;
      4'b0001: n116_o = debounced_btn_state;
      default: n116_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n150_q <= 2'b00;
    else
      n150_q <= n104_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n151_q <= 15'b000000000000000;
    else
      n151_q <= n106_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:41:5  */
  assign n152_o = ~n14_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  assign n153_o = n152_o ? n108_o : calibration_rise_time;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk)
    n154_q <= n153_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n155_q <= 1'b1;
    else
      n155_q <= n110_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n156_q <= 1'b0;
    else
      n156_q <= n112_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n157_q <= 4'b0000;
    else
      n157_q <= n114_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n158_q <= 1'b0;
    else
      n158_q <= n116_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n159_q <= 1'b0;
    else
      n159_q <= cap_in;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/fpga_test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n14_o)
    if (n14_o)
      n160_q <= 1'b0;
    else
      n160_q <= sync_ff1;
endmodule

