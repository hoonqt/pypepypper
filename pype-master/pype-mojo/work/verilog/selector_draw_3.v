/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module selector_draw_3 (
    input clk,
    input [9:0] horizontaloffset,
    input [8:0] verticaloffset,
    output reg bitout
  );
  
  
  
  wire [1-1:0] M_hvsync_vga_h_sync;
  wire [1-1:0] M_hvsync_vga_v_sync;
  wire [1-1:0] M_hvsync_inDisplayArea;
  wire [11-1:0] M_hvsync_CounterX;
  wire [9-1:0] M_hvsync_CounterY;
  hvsync_generator_1 hvsync (
    .clk(clk),
    .vga_h_sync(M_hvsync_vga_h_sync),
    .vga_v_sync(M_hvsync_vga_v_sync),
    .inDisplayArea(M_hvsync_inDisplayArea),
    .CounterX(M_hvsync_CounterX),
    .CounterY(M_hvsync_CounterY)
  );
  wire [59-1:0] M_base_outdata;
  reg [7-1:0] M_base_address;
  selector_base_38 base (
    .clk(clk),
    .address(M_base_address),
    .outdata(M_base_outdata)
  );
  
  reg [10:0] counterh;
  
  reg [8:0] counterv;
  
  reg [58:0] fullcounter;
  
  always @* begin
    counterh = M_hvsync_CounterX;
    counterv = M_hvsync_CounterY;
    if (((counterh >= 9'h18d + horizontaloffset & counterh <= 10'h203 + horizontaloffset)) & ((counterv >= 7'h75 + verticaloffset) & (counterv <= 8'hb6 + verticaloffset))) begin
      M_base_address = counterv - verticaloffset - 7'h75;
      fullcounter = M_base_outdata;
      bitout = fullcounter[(6'h3b - ((counterh - 9'h18d - horizontaloffset) / 2'h2))*1+0-:1];
    end else begin
      M_base_address = 10'h3e7;
      bitout = 1'h0;
    end
  end
endmodule
