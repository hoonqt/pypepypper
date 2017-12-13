// Pong VGA game
// (c) fpga4fun.com

module mojo_top_0(
input clk,
input rst_n,
input left,
input right,
input up,
input down,
input rotate_left,
input rotate_right,
output reg[5:0] io_led,
output vga_h_sync,
output vga_v_sync,
output vga_R,
output vga_G,
output vga_B
);

wire inDisplayArea;
wire [10:0] CounterX;
wire [8:0] CounterY;

hvsync_generator_1 syncgen(.clk(clk), .vga_h_sync(vga_h_sync), .vga_v_sync(vga_v_sync), 
  .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
  
tilesort_2 tiles(.clk(clk),.rst(rst),.debug1(d1),.led4(led4),.led5(led5),
.debug_play(dp),.debug_winlevel(dwl),.debug_wingame(dwg),.left(left),.right(right),.up(up),.down(down),.rotate_left(rotate_left),.rotate_right(rotate_right),.selector_out(selector),.tile1_out(tile1),.tile2_out(tile2),.tile3_out(tile3),.tile4_out(tile4),.tile5_out(tile5),.tile6_out(tile6),.tile7_out(tile7),.tile8_out(tile8),.tile9_out(tile9),.tile10_out(tile10),.tile11_out(tile11),.tile12_out(tile12),.tile13_out(tile13),.tile14_out(tile14),.tile15_out(tile15),.tile16_out(tile16),.tile17_out(tile17),.tile18_out(tile18),.tile19_out(tile19),.tile20_out(tile20),.tile21_out(tile21),.tile22_out(tile22),.tile23_out(tile23),.tile24_out(tile24),.tile25_out(tile25));


/////////////////////////////////////////////////////////////////
wire R = selector|tile1|tile2|tile3|tile4|tile5|tile6|tile7|tile8|tile9|tile10|tile11|tile12|tile13|tile14|tile15|tile16|tile17|tile18|tile19|tile20|tile21|tile22|tile23|tile24|tile25;
wire G = selector|tile1|tile2|tile3|tile4|tile5|tile6|tile7|tile8|tile9|tile10|tile11|tile12|tile13|tile14|tile15|tile16|tile17|tile18|tile19|tile20|tile21|tile22|tile23|tile24|tile25;
wire B = selector|tile1|tile2|tile3|tile4|tile5|tile6|tile7|tile8|tile9|tile10|tile11|tile12|tile13|tile14|tile15|tile16|tile17|tile18|tile19|tile20|tile21|tile22|tile23|tile24|tile25;
reg vga_R, vga_G, vga_B;

always @(posedge clk)
begin
io_led[0] = d1;
io_led[1] = dp;
io_led[2] = dwl;
io_led[3] = dwg;
io_led[4] = led4;
io_led[5] = led5;

	vga_R <= R & inDisplayArea;
	vga_G <= G & inDisplayArea;
	vga_B <= B & inDisplayArea;
end

endmodule