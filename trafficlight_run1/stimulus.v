// Verilog stimulus file.
// Please do not create a module in this file.
//
// Testing of a sequential design requires you to implement
// a clock - see the advice in Blackboard on how to do this
//

/*

#VALUE      creates a delay of VALUE ns
a=VALUE;    sets the value of input 'a' to VALUE
$stop;      tells the simulator to stop

*/

// Implement your clock here
// -----------------------------------------------------

initial clock= 0;      // initialise clock to 0 at time 0


 always // always do the following
  begin
  #10 // wait half a clock period
  clock = ~clock; // invert the clock
end


// -----------------------------------------------------


initial


// Set input signals here, using delays where appropriate
// -----------------------------------------------------

begin
#0
start=1;  //initialising start=1, at state 0
reset=0;  //initialising reset=0, at state 0
#20       // present state acquires state 1 subsequently
start=0;  //turning start signal off
#80       //present state acquires state 2,3,4,5 subsequently
start=1;  //at present state=5, turning on start signal
#50       //present state acquires state 8,9 subsequently
start=0;  //turning start signal off at state 9
reset=1;  //turning reset on at state 9
#10       // present state acquires state 0 subsequently
reset=0;  //turning reset off at state 0
start=1;  //turning start on at state 0
#10       //present state is at state 0
start=0;
#110      //present state acquires state 1,2,3,4,5,6 subsequently
start=1;  //turning start on at state 6
#30       //present state acquires state 9 subsequently
reset=1;  //turning reset on at state 9
start=0;
#10       //present state acquires state 0 subsequently
start=1;  //turning start on at state 0
reset=0;
#10
start=0;
#130      //present state acquires state 1,2,3,4,5,6,7 subsequently
start=1;  //turning start on at state 7
#40       //present state acquires state 10,1 subsequently
reset=1;  //turning reset on at state 1
start=0;  //turning start off at state 1
#10
reset=0;  //turning reset off at state 0 and present state stays on state 0




#1000 $stop;
end
