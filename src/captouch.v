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
  wire n10_o;
  wire n16_o;
  wire [31:0] n18_o;
  wire [31:0] n20_o;
  wire [14:0] n21_o;
  wire [31:0] n22_o;
  wire n24_o;
  wire [1:0] n26_o;
  wire [14:0] n28_o;
  wire n31_o;
  wire n34_o;
  wire [31:0] n35_o;
  wire [31:0] n37_o;
  wire [14:0] n38_o;
  wire [1:0] n40_o;
  wire [14:0] n42_o;
  wire [14:0] n43_o;
  wire n45_o;
  wire n47_o;
  wire [31:0] n48_o;
  wire [31:0] n50_o;
  wire [14:0] n51_o;
  wire [31:0] n52_o;
  wire n54_o;
  wire [1:0] n56_o;
  wire [14:0] n58_o;
  wire n61_o;
  wire n64_o;
  wire [31:0] n65_o;
  wire [31:0] n67_o;
  wire [14:0] n68_o;
  wire [31:0] n69_o;
  wire [31:0] n70_o;
  wire [9:0] n72_o;
  wire [9:0] n74_o;
  wire [30:0] n75_o;
  wire [31:0] n76_o;
  wire [31:0] n77_o;
  wire n78_o;
  wire n81_o;
  wire [2:0] n82_o;
  wire n84_o;
  wire n86_o;
  wire n88_o;
  wire n90_o;
  wire [1:0] n92_o;
  wire [14:0] n94_o;
  wire n96_o;
  wire n97_o;
  wire [3:0] n98_o;
  wire [3:0] n99_o;
  wire n100_o;
  wire n103_o;
  wire [3:0] n104_o;
  reg [1:0] n106_o;
  reg [14:0] n108_o;
  reg [14:0] n110_o;
  reg n112_o;
  reg n114_o;
  reg [3:0] n116_o;
  reg n118_o;
  reg [1:0] n152_q;
  reg [14:0] n153_q;
  wire n154_o;
  wire [14:0] n155_o;
  reg [14:0] n156_q;
  reg n157_q;
  reg n158_q;
  reg [3:0] n159_q;
  reg n160_q;
  reg n161_q;
  reg n162_q;
  wire n163_o;
  assign cap_out = n163_o;
  assign cap_oe = n10_o;
  assign btn = debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:20:12  */
  always @*
    state = n152_q; // (isignal)
  initial
    state = 2'b00;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:25:12  */
  assign counter = n153_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:26:12  */
  assign calibration_rise_time = n156_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:28:12  */
  assign discharging = n157_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:29:12  */
  assign btn_state = n158_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:30:12  */
  assign btn_state_debouncer = n159_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:31:12  */
  assign debounced_btn_state = n160_q; // (signal)
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:33:12  */
  always @*
    sync_ff1 = n161_q; // (isignal)
  initial
    sync_ff1 = 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:34:12  */
  always @*
    sync_ff2 = n162_q; // (isignal)
  initial
    sync_ff2 = 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:38:19  */
  assign n10_o = discharging ? 1'b1 : 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:45:18  */
  assign n16_o = ~reset;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:63:40  */
  assign n18_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:63:40  */
  assign n20_o = n18_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:63:32  */
  assign n21_o = n20_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:65:32  */
  assign n22_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:65:32  */
  assign n24_o = $signed(n22_o) >= $signed(32'b00000000000000000000000000001010);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:65:21  */
  assign n26_o = n24_o ? 2'b01 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:65:21  */
  assign n28_o = n24_o ? 15'b000000000000000 : n21_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:65:21  */
  assign n31_o = n24_o ? 1'b0 : 1'b1;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:62:17  */
  assign n34_o = state == 2'b00;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:72:40  */
  assign n35_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:72:40  */
  assign n37_o = n35_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:72:32  */
  assign n38_o = n37_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:73:21  */
  assign n40_o = sync_ff2 ? 2'b10 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:73:21  */
  assign n42_o = sync_ff2 ? 15'b000000000000000 : n38_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:73:21  */
  assign n43_o = sync_ff2 ? counter : calibration_rise_time;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:73:21  */
  assign n45_o = sync_ff2 ? 1'b1 : discharging;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:71:17  */
  assign n47_o = state == 2'b01;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:81:40  */
  assign n48_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:81:40  */
  assign n50_o = n48_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:81:32  */
  assign n51_o = n50_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:83:32  */
  assign n52_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:83:32  */
  assign n54_o = $signed(n52_o) >= $signed(32'b00000000000000000000000000001010);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:83:21  */
  assign n56_o = n54_o ? 2'b11 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:83:21  */
  assign n58_o = n54_o ? 15'b000000000000000 : n51_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:83:21  */
  assign n61_o = n54_o ? 1'b0 : 1'b1;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:80:17  */
  assign n64_o = state == 2'b10;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:90:36  */
  assign n65_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:90:36  */
  assign n67_o = n65_o + 32'b00000000000000000000000000000001;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:90:28  */
  assign n68_o = n67_o[14:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:92:25  */
  assign n69_o = {17'b0, counter};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:66  */
  assign n70_o = {17'b0, calibration_rise_time};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:91  */
  assign n72_o = calibration_rise_time[9:0];  // trunc
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:79  */
  assign n74_o = n72_o >> 31'b0000000000000000000000000000011;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:68  */
  assign n75_o = {21'b0, n74_o};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:66  */
  assign n76_o = {1'b0, n75_o};  //  uext
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:66  */
  assign n77_o = n70_o + n76_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:42  */
  assign n78_o = $signed(n69_o) > $signed(n77_o);
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:96:25  */
  assign n81_o = n78_o ? 1'b1 : 1'b0;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:101:79  */
  assign n82_o = btn_state_debouncer[2:0];
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:107:48  */
  assign n84_o = btn_state_debouncer == 4'b1111;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:109:51  */
  assign n86_o = btn_state_debouncer == 4'b0000;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:109:25  */
  assign n88_o = n86_o ? 1'b0 : debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:107:25  */
  assign n90_o = n84_o ? 1'b1 : n88_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n92_o = sync_ff2 ? 2'b10 : state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n94_o = sync_ff2 ? 15'b000000000000000 : n68_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n96_o = sync_ff2 ? 1'b1 : discharging;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n97_o = sync_ff2 ? n81_o : btn_state;
  assign n98_o = {n82_o, btn_state};
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n99_o = sync_ff2 ? n98_o : btn_state_debouncer;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:91:21  */
  assign n100_o = sync_ff2 ? n90_o : debounced_btn_state;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:89:17  */
  assign n103_o = state == 2'b11;
  assign n104_o = {n103_o, n64_o, n47_o, n34_o};
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n106_o = n92_o;
      4'b0100: n106_o = n56_o;
      4'b0010: n106_o = n40_o;
      4'b0001: n106_o = n26_o;
      default: n106_o = 2'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n108_o = n94_o;
      4'b0100: n108_o = n58_o;
      4'b0010: n108_o = n42_o;
      4'b0001: n108_o = n28_o;
      default: n108_o = 15'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n110_o = calibration_rise_time;
      4'b0100: n110_o = calibration_rise_time;
      4'b0010: n110_o = n43_o;
      4'b0001: n110_o = calibration_rise_time;
      default: n110_o = 15'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n112_o = n96_o;
      4'b0100: n112_o = n61_o;
      4'b0010: n112_o = n45_o;
      4'b0001: n112_o = n31_o;
      default: n112_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n114_o = n97_o;
      4'b0100: n114_o = btn_state;
      4'b0010: n114_o = btn_state;
      4'b0001: n114_o = btn_state;
      default: n114_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n116_o = n99_o;
      4'b0100: n116_o = btn_state_debouncer;
      4'b0010: n116_o = btn_state_debouncer;
      4'b0001: n116_o = btn_state_debouncer;
      default: n116_o = 4'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:61:13  */
  always @*
    case (n104_o)
      4'b1000: n118_o = n100_o;
      4'b0100: n118_o = debounced_btn_state;
      4'b0010: n118_o = debounced_btn_state;
      4'b0001: n118_o = debounced_btn_state;
      default: n118_o = 1'bX;
    endcase
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n152_q <= 2'b00;
    else
      n152_q <= n106_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n153_q <= 15'b000000000000000;
    else
      n153_q <= n108_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:41:5  */
  assign n154_o = ~n16_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  assign n155_o = n154_o ? n110_o : calibration_rise_time;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk)
    n156_q <= n155_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n157_q <= 1'b1;
    else
      n157_q <= n112_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n158_q <= 1'b0;
    else
      n158_q <= n114_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n159_q <= 4'b0000;
    else
      n159_q <= n116_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n160_q <= 1'b0;
    else
      n160_q <= n118_o;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n161_q <= 1'b0;
    else
      n161_q <= cap_in;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:57:9  */
  always @(posedge clk or posedge n16_o)
    if (n16_o)
      n162_q <= 1'b0;
    else
      n162_q <= sync_ff1;
  /* /Users/tobimckellar/Desktop/TinyTapeout/ttsky-verilog-template/test/../src/captouch.vhd:37:20  */
  assign n163_o = discharging ? 1'b0 : 1'bz;
endmodule

