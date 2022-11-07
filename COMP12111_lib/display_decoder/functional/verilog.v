// Verilog HDL for "COMP12111_lib", "display_decoder" "functional"
//
// COMP12111 Exercise 2 - Combinatorial Design
//
// Version 2022. P W Nutter
//
// This is the Verilog module for the display decoder
//
// The aim of this exercise is complete the combinatorial design
// for the alphanumeric display decoder. 
//
// DO NOT change the interface to this design or it may not be marked completely
// when submitted.
//
// Make sure you document your code and marks may be awarded/lost for the 
// quality of the comments given. Please document in the header the changes 
// made, when and by whom.
//
// Comments:

module display_decoder (input 		[3:0]  input_code,       // bcd input
			output reg 	[14:0] segment_pattern); // segment code output

// provide Verilog that described the required behaviour of the
// combinatorial design
// -----------------------------------------------------------------

// To achieve the task we will use always block, and we will use cases for each of the following input value and we will tell what should be the output value.
always @(input_code)
  case(input_code) 
  	0: segment_pattern = 15'b 000110000111111;
  	1: segment_pattern = 15'b 000010000000110;
  	2: segment_pattern = 15'b 000000011011011;
  	3: segment_pattern = 15'b 000000011001111;
  	4: segment_pattern = 15'b 000000011100110;
  	5: segment_pattern = 15'b 000000011101101;
  	6: segment_pattern = 15'b 000000011111101;
  	7: segment_pattern = 15'b 001010000000001;
  	8: segment_pattern = 15'b 000000011111111;
  	9: segment_pattern = 15'b 000000011100111;
	10: segment_pattern = 15'b 000000011110111;
	11: segment_pattern = 15'b 001001010001111;
	12: segment_pattern = 15'b 000000000111001;
	13: segment_pattern = 15'b 001001000001111;
	14: segment_pattern = 15'b 000000011111001;
	15: segment_pattern = 15'b 000000011110001;
	default :  segment_pattern = 15'b 000110000111111;
  endcase





endmodule  // end of module display_decoder

