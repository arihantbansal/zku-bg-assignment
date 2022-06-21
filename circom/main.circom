pragma circom 2.0.3; // specify the version of circom compiler (viz, 2.0.3 here)


// Declare template 'Multiplier2'
template Multiplier2() { // 
   // define an input signal variable named 'in1'
	 signal input in1;
   // define an input signal variable named 'in2'
   signal input in2;
   // define an output signal variable named 'out'
   signal output out;
	 // multiply the two input signals, in1 and in2, and feed it to the output signal, out
   out <== in1 * in2;
	 // log the output value
   log(out);
}

// Instantiate main component using 'Multiplier2' template, with 'in1' and 'in2' being public signals
// output signals are always public (hence 'out' is public as well)
component main {public [in1,in2]} = Multiplier2();

/* INPUT = {
    "in1": "5",
    "in2": "77"
} */