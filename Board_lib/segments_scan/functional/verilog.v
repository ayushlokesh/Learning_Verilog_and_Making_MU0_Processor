// Verilog HDL for "COMP12111", "display_scan" "functional"


module segments_scan(clk, column,
                    digit5, digit4, digit3, digit2, digit1, digit0,
		    Segments);

input clk;
input [14:0] digit5, digit4, digit3, digit2, digit1, digit0;
output [14:0] Segments;
output [5:0] column;

reg  [2:0]  state;
reg  [5:0]  column;
reg  [14:0] Segments, Segments_raw;

// Display scanner
// Segments active high
always @ (posedge clk)				
 case (state)
    0:begin state <= 1; Segments_raw <= digit0; column <= 6'b100_000; end
    1:begin state <= 2; Segments_raw <= digit1; column <= 6'b010_000; end
    2:begin state <= 3; Segments_raw <= digit2; column <= 6'b001_000; end
    3:begin state <= 4; Segments_raw <= digit3; column <= 6'b000_100; end
    4:begin state <= 5; Segments_raw <= digit4; column <= 6'b000_010; end
    5:begin state <= 0; Segments_raw <= digit5; column <= 6'b000_001; end
    default : begin state <= 0; Segments_raw <= 0; column <= 6'b000_000; end
 endcase 
    
always @(*)
 begin
  Segments[0] = Segments_raw[0];
  Segments[1] = Segments_raw[1];
  Segments[2] = Segments_raw[2];
  Segments[3] = Segments_raw[3];
  Segments[4] = Segments_raw[4];
  Segments[5] = Segments_raw[5];
  Segments[13] = Segments_raw[6];
  Segments[9] = Segments_raw[7];
  Segments[6] = Segments_raw[8];
  Segments[7]  = Segments_raw[9];
  Segments[8]  = Segments_raw[10];
  Segments[12]  = Segments_raw[11];
  Segments[11]  = Segments_raw[12];
  Segments[10]  = Segments_raw[13];
  Segments[14] = Segments_raw[14];
 end

endmodule
