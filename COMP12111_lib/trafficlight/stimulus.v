
// Verilog stimulus file.
// Please do not create a module in this file.
/*

#VALUE      creates a delay of VALUE ns
a=VALUE;    sets the value of input 'a' to VALUE
$stop;      tells the simulator to stop

*/

initial
begin
Clk= 0;  // initialise Clk to 0 at time 0
// the following always block creates the clock signal
always // always do the following
begin
#50  // wait half a clock period
clock = ~clock; // invert the clock
end
initial
begin

end


#100 $stop;
end 
