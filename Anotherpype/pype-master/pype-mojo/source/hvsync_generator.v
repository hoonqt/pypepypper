module hvsync_generator(clk, vga_h_sync, vga_v_sync, inDisplayArea, CounterX, CounterY);
input clk;
output vga_h_sync, vga_v_sync;
output inDisplayArea;
output [10:0] CounterX;
output [8:0] CounterY;

//////////////////////////////////////////////////
reg [10:0] CounterX;
reg [8:0] CounterY;
wire CounterXmaxed = (CounterX==11'h5FF); // max value of counterX = 1,535 = 5FF

always @(posedge clk) // Increment counterX by 1 at every rising edge
if(CounterXmaxed)
	CounterX <= 0;
else
	CounterX <= CounterX + 1;

always @(posedge clk) // Increment counterY by 1 every 1,536 rising edges
if(CounterXmaxed) CounterY <= CounterY + 1;

reg	vga_HS, vga_VS;
always @(posedge clk)
begin
	vga_HS <= (CounterX[10:5]==6'h00); // change this value to move the display horizontally
	vga_VS <= (CounterY==500); // change this value to move the display vertically
end

reg inDisplayArea;
always @(posedge clk)
if(inDisplayArea==0)
	inDisplayArea <= (CounterXmaxed) && (CounterY<480);
else
	inDisplayArea <= !(CounterX==1278);
	
assign vga_h_sync = ~vga_HS;
assign vga_v_sync = ~vga_VS;

endmodule
