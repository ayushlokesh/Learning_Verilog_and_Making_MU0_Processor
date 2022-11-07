// Verilog stimulus file.
// Please do not create a module in this file.
/*

#VALUE      creates a delay of VALUE ns
a=VALUE;    sets the value of input 'a' to VALUE
$stop;      tells the simulator to stop

*/

initial
begin
#100 bcd=0;

// Enter you stimulus below this line
// Make sure you test all input combinations with a delay
// -------------------------------------------------------
#5
input_code=0; 
#5
input_code=1; 
#5
input_code=2; 
#5
input_code=3; 
#5
input_code=4; 
#5
input_code=5; 
#5
input_code=6; 
#5
input_code=7; 
#5
input_code=8; 
#5
input_code=9; 
#5
input_code=10; 
#5
input_code=11; 
#5
input_code=12; 
#5
input_code=13; 
#5
input_code=14; 
#5
input_code=15; 





// -------------------------------------------------------
// Please make sure your stimulus is above this line
 
#100 $stop;
end
