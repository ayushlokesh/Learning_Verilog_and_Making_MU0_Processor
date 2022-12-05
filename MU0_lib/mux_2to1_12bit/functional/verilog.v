//Verilog HDL for "MU0_lib", "mux_2to1_12bit" "functional"
// THIS IS BEHAVORIAL CODE FOR 2_TO_1 MULTIPLEXER

module mux_2to1_12bit ( output reg [11:0] q,
			input [11:0] a,
			input [11:0] b,
			input sel );

		always @ (*)			//always will do the the following
				begin

				if (sel) q[11:0]=a[11:0];	//if sel is equal to 1, then it 									selects the input from a
				else  q[11:0]=b[11:0];		//if sel is equal to 0, then it 									selects the input from b
			
		end
endmodule
