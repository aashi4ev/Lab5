module vga 
	(input  logic CLOCK_50, reset, 
	 output logic HS, VS, blank, 
	 output logic [8:0] row, 
	 output logic [9:0] col);
	 
	logic [11:0] horizontalCounter, verticalCounter;
	logic hTrigger, rowIncrement, colIncrement;

	always_comb begin
		
		if(horizontalCounter == 3200)
			hTrigger = 1;
		else
			hTrigger = 0;
	end
	
	Counter #(9) count1(CLOCK_50, reset, 3199, horizontalCounter),
				 count2(hTrigger, reset, 1041, verticalCounter);
				 
	RangeCheck #(rc1 


	 
endmodule: vga

module vga_test;

logic CLOCK_50, reset; 
logic HS, VS, blank; 
logic [8:0] row; 
logic [9:0] col;

vga dut(.*);

initial begin
	$monitor($time);
end


endmodule: vga_test

