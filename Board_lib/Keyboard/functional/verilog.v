//Verilog HDL for "Board_lib", "Keyboard" "functional"


module Keyboard ( button, keyrow, Clk, keycol);

  output  [23:0] button;
  output  [3:0]  keyrow;
  input   [5:0]  keycol;
  input Clk;
  
  reg [3:0]  keyrow;
  reg [23:0] button_raw;
  reg [23:0] button;
  
  initial keyrow = 4'b1110;
  
   // Keyboard and matrixed switches A-H
 // Scan the keyboard and switches by activating the keyrows in turn
 // Extra tristate buffer is used on the actual output of the fpga to protect from non-diode keyboard and switches
 always @(posedge Clk)
  begin
   case(keyrow)
    4'b1110 : keyrow <= 4'b0111;
    4'b0111 : keyrow <= 4'b1011;
    4'b1011 : keyrow <= 4'b1101;
    4'b1101 : keyrow <= 4'b1110;
    default : keyrow <= 4'b1110; 
   endcase
  end
 
// Determine which button has been pressed - does not work for multiple buttons being pressed at the same time on matrix keyboard
// Does work for multiple switches pressed SW A-H
always @(posedge Clk)
 begin
  case(keyrow)
   'b1110 : begin 
             button_raw[0] <= ~keycol[0];// 1
             button_raw[1] <= ~keycol[1]; // 2  
             button_raw[2] <= ~keycol[2]; // 3
             button_raw[3] <= ~keycol[3]; // F
	     button_raw[16] <= ~keycol[4]; // SW-A 
             button_raw[17] <= ~keycol[5]; // SW-E
	    end 
   'b1101 : begin
             button_raw[4] <= ~keycol[0]; // 4
             button_raw[5] <= ~keycol[1]; // 5 
             button_raw[6] <= ~keycol[2]; // 6
             button_raw[7] <= ~keycol[3]; // E
	     button_raw[18] <= ~keycol[4]; // SW-B
             button_raw[19] <= ~keycol[5]; // SW-F
	    end
   'b1011 : begin
             button_raw[8]  <= ~keycol[0]; // 7
             button_raw[9]  <= ~keycol[1]; // 8  
             button_raw[10] <= ~keycol[2]; // 9
             button_raw[11] <= ~keycol[3]; // D
	     button_raw[20] <= ~keycol[4]; // SW-C
             button_raw[21] <= ~keycol[5]; // SW-G 
	    end
   'b0111 : begin
             button_raw[12] <= ~keycol[0]; // A
             button_raw[13] <= ~keycol[1]; // 0
             button_raw[14] <= ~keycol[2]; // B
             button_raw[15] <= ~keycol[3]; // C
             button_raw[22] <= ~keycol[4]; // SW-D
             button_raw[23] <= ~keycol[5]; // SW-H
            end
  endcase
 end 
 
 always @(*)
  begin
   button[0] = button_raw[13];
   button[1] = button_raw[0];
   button[2] = button_raw[1];
   button[3] = button_raw[2];
   button[4] = button_raw[4];
   button[5] = button_raw[5];
   button[6] = button_raw[6];
   button[7] = button_raw[8];
   button[8] = button_raw[9];
   button[9] = button_raw[10];
   button[10] = button_raw[12];
   button[11] = button_raw[14];
   button[12] = button_raw[15];
   button[13] = button_raw[11];
   button[14] = button_raw[7];
   button[15] = button_raw[3];
   button[16] = button_raw[16];
   button[17] = button_raw[18];
   button[18] = button_raw[20];
   button[19] = button_raw[22];
   button[20] = button_raw[17];
   button[21] = button_raw[19];
   button[22] = button_raw[21];
   button[23] = button_raw[23];
  end

 
 
 
 
 
 
 
 
 
 
endmodule
