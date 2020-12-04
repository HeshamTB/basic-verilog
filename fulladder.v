module fulladder (
	input x,
	input y,
	input cin,
	output s,
	output cout
	);
	wire w1, w2, w3;
	xor XOR1(w1, x, y);
	xor XOR2(s, w1, cin);
	and AND1(w2, x, y);
	and AND2(w3, w1, cin);
	or OR1(cout, w3, w2);
endmodule