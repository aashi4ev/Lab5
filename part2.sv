`default_nettype none

module vga 
	(input  logic CLOCK_50, reset, 
	 output logic HS, VS, blank, 
	 output logic [8:0] row, 
	 output logic [9:0] col);
	 
	logic [11:0] horizontalCounter, verticalCounter;
	logic hTrigger, rowIncrement, colIncrement;
	logic HDisp, VDisp;
	logic [10:0] doubleCol;

	
	assign hTrigger = (horizontalCounter == 1599);
	
	assign rowIncrement = hTrigger & VDisp;
	assign colIncrement = CLOCK_50 & HDisp;
	assign col = doubleCol[10:1];
	
	assign blank = ~(VDisp & HDisp);
	
	Counter #(12) count1(CLOCK_50, reset, 12'd1599, horizontalCounter),
				  count2(hTrigger, reset, 12'd1041, verticalCounter),
				  count3(colIncrement, reset, 12'd1279, doubleCol),
				  count4(rowIncrement, reset, 12'd479, row);
				  
				 
	range_check #(12)  rc1(horizontalCounter, 12'd192, 12'd1599, HS),
					           rc2(verticalCounter, 12'd2, 12'd1041, VS),
					           rc3(horizontalCounter, 12'd289, 12'd1567, HDisp),
					           rc4(verticalCounter, 12'd32, 12'd510, VDisp);
					 

	
	 
endmodule: vga

module ChipInterface 
  (input  logic CLOCK_50, 
   input  logic  [3:0] KEY, 
   input  logic [17:0] SW, 
   output logic  [6:0] HEX0, HEX1, HEX2, HEX3,  
                       HEX4, HEX5, HEX6, HEX7, 
   output logic  [7:0] VGA_R, VGA_G, VGA_B, 
   output logic        VGA_BLANK_N, VGA_CLK, VGA_SYNC_N, 
   output logic        VGA_VS, VGA_HS); 
   
    logic VGA_BLANK;
   
    logic[8:0] row;
    logic[9:0] col;
    always_comb begin
    	VGA_R = 0;
    	VGA_G = 0;
    	VGA_B = 0;
    	if(row < 60) begin
    		VGA_R = 0;
    		VGA_G = 0;
    		VGA_B = 0;
    	end
    	else if (row < 120) begin
    		VGA_R = 0;
    		VGA_G = 0;
    		VGA_B = 8'hFF;
    	end
    	else if (row < 180) begin
    		VGA_R = 0;
    		VGA_G = 8'hFF;
    		VGA_B = 0;
    	end
    	else if (row < 240) begin
    		VGA_R = 0;
    		VGA_G = 8'hFF;
    		VGA_B = 8'hFF;
    	end
    	else if (row < 300) begin
    		VGA_R = 8'hFF;
    		VGA_G = 0;
    		VGA_B = 0;
    	end
    	else if (row < 360) begin
    		VGA_R = 8'hFF;
    		VGA_G = 0;
    		VGA_B = 8'hFF;
    	end
    	else if (row < 420) begin
    		VGA_R = 8'hFF;
    		VGA_G = 8'hFF;
    		VGA_B = 0;
    	end
    	else if (row < 480) begin
    		VGA_R = 8'hFF;
    		VGA_G = 8'hFF;
    		VGA_B = 8'hFF;
    	end
    end
    
    assign VGA_CLK = ~CLOCK_50;
    assign VGA_SYNC_N = 1;
    
    assign VGA_BLANK_N = ~VGA_BLANK;

	vga v(.CLOCK_50(CLOCK_50), .reset(KEY[0]), .HS(VGA_HS), .VS(VGA_VS), .blank(VGA_BLANK), .row(row), .col(col));

endmodule: ChipInterface


module vga_test;

logic CLOCK_50, reset; 
logic HS, VS, blank; 
logic [8:0] row; 
logic [9:0] col;

vga dut(.*);

initial begin
	$monitor($time,
			 " clock = %d blank = %b HS = %b, VS = %b, row = %d, col = %d", CLOCK_50, blank, HS, VS, row, col);
			 
	CLOCK_50 = 0;
    reset = 1;
    reset <= 0;
    forever #5 CLOCK_50 = ~CLOCK_50;
	
end

initial begin
	
	#1000000;
	$display("done");
	$finish;
end

endmodule: vga_test



