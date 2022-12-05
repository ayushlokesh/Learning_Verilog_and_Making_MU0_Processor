
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
a=12'hFFF;    
b=12'hCCC;
sel=1'b0;      // HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b 
#100
a=12'hAAA;
b=12'hBBB;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a
#100
a=12'hDDD;
b=12'hEEE;
sel=1'b0;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b
#100
a=12'hFFF;
b=12'hEEE;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a
#100
a=12'hBBB;
b=12'hEEE;
sel=1'b0;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF b
#100
a=12'hCCC;
b=12'hFFF;
sel=1'b1;	// HERE THE MULTIPLEXER WILL CHOOSE THE INPUT OF a

// Please make sure your stimulus is above this line 
$stop;
end 
