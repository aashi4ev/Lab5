module ChipInterface 
  (input  logic CLOCK_50, 
   input  logic  [3:0] KEY, 
   input  logic [17:0] SW, 
   output logic  [6:0] HEX0, HEX1, HEX2, HEX3,  
                       HEX4, HEX5, HEX6, HEX7, 
   output logic  [7:0] VGA_R, VGA_G, VGA_B, 
   output logic        VGA_BLANK_N, VGA_CLK, VGA_SYNC_N, 
   output logic        VGA_VS, VGA_HS); 
   
  logic VGA_BLANK, reset;
  logic[8:0] row;
  logic[9:0] col;
  assign reset = ~KEY[0];
  assign VGA_CLK = ~CLOCK_50;
  assign VGA_SYNC_N = 0;
  assign VGA_BLANK_N = ~VGA_BLANK;
  vga v(.CLOCK_50(CLOCK_50), .reset(reset), .HS(VGA_HS), .VS(VGA_VS), .blank(VGA_BLANK), .row(row), .col(col));



  logic [8:0] ball_row, next_ball_row;
  logic [9:0] ball_coll, next_ball_col;
  logic [2:0] row_increment, col_increment;
  logic update, last_pixel;
  assign last_pixel = (row == 479) && (col == 639);
  Register #(1) updateReg(.D(last_pixel), .en(1), .reset(reset), .reset_value(0), .clock(CLOCK_50), .Q(update));

  Register #(9) rowReg(.D(next_ball_row), .en(update), .reset(reset), .reset_value(239), .clock(CLOCK_50), .Q(ball_row));
  Register #(9) colReg(.D(next_ball_col), .en(update), .reset(reset), .reset_value(319), .clock(CLOCK_50), .Q(ball_col));

  always_comb begin

    if(!moving) begin
      next_ball_col = ball_col;
      next_ball_row = ball_row;
    end
    else
      next_ball_col += 

  end


endmodule: ChipInterface

module fsm
  (input logic clock, serve, score_left, score_right,
   output logic moving);

  enum logic [1:0] {waiting, moving, left_score, right_score} state, next_state;

endmodule: fsm