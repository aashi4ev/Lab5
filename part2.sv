`default_nettype none

module vga 
	(input  logic CLOCK_50, reset, 
	 output logic HS, VS, blank, 
	 output logic [8:0] row, 
	 output logic [9:0] col);
	 
	logic [11:0] horizontalCounter, verticalCounter;
	logic hTrigger, hEndTrigger, rowIncrement, colIncrement;
	logic HDisp, VDisp;
	logic [10:0] doubleCol;
	logic CountCols;

	/*always_ff @(posedge CLOCK_50, posedge reset) begin
		if(reset)
			CountCols <= 0;
		else
			CountCols <= HDisp;
	end
	*/
	assign hTrigger = (horizontalCounter == 0);
	assign hEndTrigger = (horizontalCounter == 1599);
	
	assign rowIncrement = hEndTrigger & VDisp;
	assign colIncrement = CLOCK_50 & HDisp; //& CountCols;
	assign col = doubleCol[10:1];
	
	assign blank = ~(VDisp & HDisp);
	
	Counter #(12) count1(.clock(CLOCK_50), .reset(reset), .enable(1), .maxValue(12'd1599), .value(horizontalCounter)),
				  count2(.enable(hTrigger), .reset(reset), .clock(CLOCK_50), .maxValue(12'd520), .value(verticalCounter)),
				  count3(.enable(colIncrement), .clock(CLOCK_50), .reset(reset), .maxValue(12'd1279), .value(doubleCol)),
				  count4(.enable(rowIncrement), .reset(reset), .maxValue(12'd479), .clock(CLOCK_50), .value(row));
				  
				 
	range_check #(12)  rc1(horizontalCounter, 12'd192, 12'd1599, HS),
					           rc2(verticalCounter, 12'd2, 12'd520, VS),
					           rc3(horizontalCounter, 12'd288, 12'd1567, HDisp),
					           rc4(verticalCounter, 12'd31, 12'd510, VDisp);
					 

	
	 
endmodule: vga

/*
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
		
    	if(col < 80) begin
    		VGA_R = 0;
    		VGA_G = 0;
    		VGA_B = 0;
    	end
    	else if (col < 160) begin
    		VGA_R = 0;
    		VGA_G = 0;
    		VGA_B = 8'hFF;
    	end
    	else if (col < 240) begin
    		VGA_R = 0;
    		VGA_G = 8'hFF;
    		VGA_B = 0;
    	end
    	else if (col < 320) begin
    		VGA_R = 0;
    		VGA_G = 8'hFF;
    		VGA_B = 8'hFF;
    	end
    	else if (col < 400) begin
    		VGA_R = 8'hFF;
    		VGA_G = 0;
    		VGA_B = 0;
    	end
    	else if (col < 480) begin
    		VGA_R = 8'hFF;
    		VGA_G = 0;
    		VGA_B = 8'hFF;
    	end
    	else if (col < 560) begin
    		VGA_R = 8'hFF;
    		VGA_G = 8'hFF;
    		VGA_B = 0;
    	end
    	else if (col < 640) begin
    		VGA_R = 8'hFF;
    		VGA_G = 8'hFF;
    		VGA_B = 8'hFF;
    	end
		
		
		
		if (row > 240)begin
			VGA_R = 0;
    		VGA_G = 0;
    		VGA_B = 0;
		end
		
		
    end
    
    assign VGA_CLK = ~CLOCK_50;
    assign VGA_SYNC_N = 0;
    //assign VGA_BLANK_N = 0;
    assign VGA_BLANK_N = ~VGA_BLANK;

	vga v(.CLOCK_50(CLOCK_50), .reset(~KEY[0]), .HS(VGA_HS), .VS(VGA_VS), .blank(VGA_BLANK), .row(row), .col(col));

endmodule: ChipInterface


module vga_test;

logic CLOCK_50, reset; 
logic HS, VS, blank; 
logic [8:0] row; 
logic [9:0] col;

vga dut(.*);

initial begin
			 
    CLOCK_50 = 0;
    reset = 1;
    reset <= 0;
    forever #5 CLOCK_50 = ~CLOCK_50;
	
end

initial begin
	
	for(int i = 0; i < 3600000; i = i + 1) begin
		@(posedge CLOCK_50);
#5;
	end
	$finish;
end

endmodule: vga_test

*/