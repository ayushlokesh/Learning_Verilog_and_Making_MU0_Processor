//Verilog HDL for "MU0_lib", "mux_2to1_16bit" "functional"
// THIS IS BEHAVORIAL CODE FOR 2_TO_1 MULTIPLEXER

module mux_2to1_16bit ( output reg [15:0] q,
			input [15:0] a,
			input [15:0] b,
			input sel);

	always @ (*)			//always will do the folowing 
		begin

		if (sel) q[15:0]=a[15:0]; //if sel is equal to 1, then it 						    selects the input from a
		else  q[15:0]=b[15:0]; //if sel is equal to 1, then it 						  selects the input from a
	
		end
endmodule
