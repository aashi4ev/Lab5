`default_nettype none

module MagComp
  #(parameter   WIDTH = 8)
  (output logic             AltB, AeqB, AgtB,
   input  logic [WIDTH-1:0] A, B);

  assign AeqB = (A == B);
  assign AltB = (A <  B);
  assign AgtB = (A >  B);

endmodule: MagComp

module MagComp_test;

  logic AltB, AeqB, AgtB;
  logic [1:0] A, B;
  logic [3:0] vector;
  
  assign {A, B} = vector;
  
  MagComp #(2) dut(.*);
  
  initial begin
    $monitor("A:%b B:%b ->> AltB(%b) AeqB(%b) AgtB(%b)", A, B, AltB, AeqB, AgtB);
    for (vector = 4'b0; vector != 4'b1111; vector++) 
      #1;
    #1 
    $finish;
  end
endmodule : MagComp_test

module Adder
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0] A, B,
   input  logic             Cin,
   output logic [WIDTH-1:0] S,
   output logic             Cout);
   
   assign {Cout, S} = A + B + Cin;
   
endmodule : Adder

module Adder_test;

  logic [3:0] A, B;
  logic       Cin;
  logic [3:0] S;
  logic       Cout;
  
  logic [8:0] vector;
  assign {Cin, A, B} = vector;
  
  Adder #(4) dut(.*);
  
  initial begin
    $monitor("Cin:%b A:%b B:%b ->> Cout:%b S:%b", Cin, A, B, Cout, S);
    for (vector = 9'b0; vector != 9'b1_1111_1111; vector++) 
      #1;
    #1;
    $finish;
  end  
  
endmodule : Adder_test

module Multiplexer
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0]         I,
   input  logic [$clog2(WIDTH)-1:0] S,
   output logic                     Y);
   
   assign Y = I[S];
   
endmodule : Multiplexer

module Multiplexer_test;

  logic [7:0] I;
  logic [2:0] S;
  logic       Y;
  
  Multiplexer dut(.*);
  
  initial begin
    $monitor("I(%b), Sel(%b) --> Y(%b)", I, S, Y);
    I = 8'b1011_0011;
    for (S=3'b000; S != 3'b111; S++)
      #1;
    #1;
    $finish;
  end
  
endmodule : Multiplexer_test

module Mux2to1
  #(parameter WIDTH = 8)
  (input  logic [WIDTH-1:0] I0, I1,
   input  logic             S,
   output logic [WIDTH-1:0] Y);
   
  assign Y = (S) ? I1 : I0;
  
endmodule : Mux2to1

module Mux2to1_test;

  logic [1:0] I0, I1;
  logic       S;
  logic [1:0] Y;
  
  logic [4:0] vector;
  assign {S, I1, I0} = vector;
  
  Mux2to1 #(2) dut(.*);
  
  initial begin
    $monitor("Sel(%b) I1(%h) I0(%h) -> Y(%h)", S, I1, I0, Y);
    for(vector = 5'b0; vector != 5'b11111; vector++)
      #1;
    #1;
    $finish;
  end
  
endmodule : Mux2to1_test

module Decoder
  #(parameter WIDTH=8)
  (input  logic [$clog2(WIDTH)-1:0] I,
   input  logic                     en,
   output logic [WIDTH-1:0]         D);
   
  always_comb begin
    D = 0;
    if (en)
      D = 1'b1 << I;
  end
  
endmodule : Decoder

module Decoder_test;

  logic [2:0] I;
  logic       en;
  logic [7:0] D;
  
  logic [3:0] vector;
  assign {en, I} = vector;

  Decoder #(8) dut(.*);
  
  initial begin
    $monitor("I(%b) en(%b) -> D(%b)", I, en, D);
    for(vector = 4'd0; vector != 4'b1111; vector++)
      #1;
    #1;
    $finish;
  end
  
endmodule : Decoder_test

module Register
  #(parameter WIDTH=8)
  (input  logic [WIDTH-1:0] D,
   input  logic             en, clear, clock,
   output logic [WIDTH-1:0] Q);
   
  always_ff @(posedge clock)
    if (en)
      Q <= D;
    else if (clear)
      Q <= 0;
      
endmodule : Register

module Register_test;

  logic [7:0] D;
  logic       en, clear, clock;
  logic [7:0] Q;
  
  Register dut(.*);
  
  initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    $monitor("D(%b) clear(%b) en(%b) -> Q(%b)", D, clear, en, Q);
    D <= 8'b0111_0001; clear <= 0; en <= 1;
    #7;
    D <= 8'b1000_1110; en <= 0;
    #20;
    clear <= 1;
    #10;
    $finish;
  end
  
endmodule : Register_test



module range_check
    (input logic val, low, high, 
    output logic is_between);
    
    logic a, b;

    assign a = (low<=val);
    assign b = (val<=high);

    assign is_between = (a && b);

endmodule: range_check

module offset_check
    (input logic val, low, delta,
    output logic is_between);

   assign  is_between = (val>=low) && (val <=(low + delta));

endmodule: offset_check

module offset_check
      (output logic val, low, delta,
      input logic is_between);
      
    initial begin
      $monitor($time, 
              "val = %d, low = %d, delta = %d, is_between = %b",
              val, low, delta, is_between);
      low = 1;
      delta = 3;
      val = 2;
      #20 val = 1;
      #20 val = 4;
      #20 val = 0;
      #20 val = 7;
      #20 low = 4;
      delta = 5;
      val = 4;
      #20 = 9;
      #20 = 7;
      #20 = 10;
      #20 = 2;

endmodule: offset_check_test


module range_check_test
      (output logic val, low, high,
      input logic is_between);

      initial begin
          $monitor($time, 
                  "val = %d, low = %d, high = %d, is_between = %b",
                  val, low, high, is_between);
          low = 1;
          high = 10;
          val = 5;
          #20 val = 10;
          #20 val = 15;
          #20 val = 0;
          #20 val = 1;
          #20 low = 5;
          high = 9;
          val = 5;
          #20 val = 9;
          #20 val = 2;
          #20 val = 7;
          #20 val = 10;
      end

endmodule: range_check_test




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