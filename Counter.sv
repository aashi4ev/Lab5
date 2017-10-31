module Counter
  #(parameter WIDTH=8)
  (input logic clock, reset,
   input logic [WIDTH-1:0] maxValue,
   output logic [WIDTH-1:0] value);
   
  always_ff @(posedge clock, posedge reset)
    if (reset || value == maxValue)
      value <= 0;
    else
      value <= value + 1;
      
endmodule: Counter

module Counter_test;
logic clock, reset;
logic [7:0] maxValue;
logic [7:0] value;

Counter #(8) c(.*);

initial begin
    $monitor ($stime,, "maxValue = %d value = %d", maxValue, value);
    
    clock = 0;
    maxValue =  5;
    reset = 1;
    reset <= 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    $finish;
  end

endmodule: Counter_test