/*
	Four bit adder with carry out.
	Carry out (cout) is split from sum (s) to be able to cascade
	multiple units of 'this'
	
	Dec 4th, 2020 
	- H.B.
*/
module four_bit_adder(
	input [3:0] x,
	input [3:0] y,
	input cin,
	output [3:0] s,
	output cout
);

	wire c1, c2, c3;

	fulladder FAD0(x[0], y[0], cin, s[0], c1);
	fulladder FAD0(x[1], y[1], c1, s[1], c2);
	fulladder FAD0(x[2], y[2], c2, s[2], c3);
	fulladder FAD0(x[3], y[3], c3, s[3], cout);

endmodule 
