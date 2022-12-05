
// Verilog stimulus file.
// Please do not create a module in this file.
/*

#VALUE      creates a delay of VALUE ns
a=VALUE;    sets the value of input 'a' to VALUE
$stop;      tells the simulator to stop

*/

initial
begin
#100 
// Enter you stimulus below this line
a=16'hFFFF;    
b=16'hCCCC;
sel=1'b0;      // HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b 
#100
a=16'hAAAA;
b=16'hBBBB;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a
#100
a=16'hDDDD;
b=16'hEEEE;
sel=1'b0;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b
#100
a=16'hFFFF;
b=16'hEEEE;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a
#100
a=16'hBBBB;
b=16'hEEEE;
sel=1'b0;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b
#100
a=16'hCCCC;
b=16'hFFFF;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a




// Please make sure your stimulus is above this line 
$stop;
end 
