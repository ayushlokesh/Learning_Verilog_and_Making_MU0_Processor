
// Verilog stimulus file.
// Please do not create a module in this file.
/*

#VALUE      creates a delay of VALUE ns
a=VALUE;    sets the value of input 'a' to VALUE
$stop;      tells the simulator to stop

*/
initial Clk= 0; // initialise Clk to 0 at time 0
	// the following always block creates the clock signal
always // always do the following
begin
#50 // wait half a clock period
Clk = ~Clk; // invert the clock
end

initial
begin
#100     
Reset=1;      // setting reset to 1
#100
Reset=0;       // setting reset to 0 and letting program to run
#4000




#100 $stop;
end 
