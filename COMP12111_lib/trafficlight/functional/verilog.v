// Verilog HDL for "COMP12111", "trafficlight" "functional"
//
// COMP12111 - Exercise 3 Sequential Design
//
// Version 1. Feb 2019. P W Nutter
//
// This is the Verilog module for the pedestrian/cyclist crossing Controller
//
// The aim of this exercise is complete the finite state machine using the
// state transition diagram given in the laboratory notes. 
//
// DO NOT change the interface to this design or it may not be marked completely
// when submitted.
//
// Make sure you document your code and marks may be awarded/lost for the 
// quality of the comments given.
//
// Add your comments:
// 
//
//

module trafficlight ( output reg [4:0] 	lightseq,	//the 5-bit light sequence
		      input             clock,		//clock that drives the fsm
		      input             reset,		//reset signal 
		      input             start);		//input from pedestrian


// declare internal variables here (how many bits required?)
	`define   R__G   5'b01001;     // state 0,6,7,8,9,10
	`define   R__A   5'b01010;     // state 1
	`define   G__R   5'b10100;     // state 2,3,4
	`define   R_R_A  5'b01110;     // state 5
	reg[3:0] P_S=4'b0000, N_S=4'b0000;             // variables holding present and next state respectively

// implement your next state combinatorial logic block here
  always @ (*)
   begin
		    case(P_S)
		     0: if (start) N_S=4'b0001;    //when present state is 0, and start=1, next state will be 1
		     
			else N_S=4'b0000;          //when present state is 0, and start=0, next state will be 0
		     
		     
		     1:  N_S=4'b0010;             //when present state is 1, next state will be 2
		     
		     
		     2:  N_S=4'b0011; 		   //when present state is 2, next state will be 3
		      
		     
		     3:  N_S=4'b0100;             //when present state is 3, next state will be 4
		     
		     
		     4:  N_S=4'b0101;            //when present state is 4, next state will be 5
		     
		     
		     5: if (start) N_S=4'b1000;  //when present state is 5, and start=1, next state will be 8
			
			else N_S=4'b0110;        //when present state is 5, and start=0, next state will be 6
		     
		     
		     6: if (start) N_S=4'b1001;  //when present state is 6, and start=1, next state will be 9
			
			else N_S=4'b0111;        //when present state is 6, and start=0, next state will be 7
		     
		     
		     7: if (start) N_S=4'b1010;  //when present state is 7, and start=1, next state will be 10
			
			else N_S=4'b0000;        //when present state is 7, and start=0, next state will be 0
		     
		     
		     8:  N_S=4'b1001;           //when present state is 8, next state will be 9
		     
		     
		     9:  N_S=4'b1010;           //when present state is 9, next state will be 10
		     
		     
		     10: N_S=4'b0001;           //when present state is 10, and next state will be 1
		     
		     
		     default: N_S=4'b0000;      //when present state is unknown, and next state will be 1
		    
		    endcase 
   end
// implement your current state assignment, register, here
 always @ (posedge clock, posedge reset)
	  begin 
		    
		    if (reset) P_S<=4'b0000;	// WHEN RESET=1, PRESENT STATE=RED(for pedestrian),GREEN(for vehicles)    
		    
		    else       P_S<=N_S;	// ELSE NEXT STATE GOES TO PRESENT STATE 
	  
	  end
    


// implement your output logic here
 always @ (*)
  begin
	   case(P_S)
	    
	    0: lightseq<= 5'b01001; 		// for state 0-> using the value of `R__G(mentioned above)
	    
	    1: lightseq<=5'b01010; 		// for state 1-> using the value of `R__A(mentioned above)
	    
	    2,3,4: lightseq<=5'b10100; 	// for state 2,3,4-> using the value of `G__R(mentioned above)
	    
	    5: lightseq<=5'b01110; 		// for state 5-> using the value of `R_R_A(mentioned above)
	    
	    6,7,8,9,10: lightseq<=5'b01001; 	// for state 6,7,8,9->using the value of `R__G(mentioned above)
	    	
	    default: lightseq<=5'b01001;	// for default state -> using the value of `R__G(mentioned above)
	   
	   endcase 
  end
endmodule
