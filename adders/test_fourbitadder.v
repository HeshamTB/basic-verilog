
/*
	Test_fourbitadder: test three cases for the adder.
	Dec 4th, 2020.
	- H.B.
*/

module test_fourbitadder;

reg [3:0]X,Y;
reg cin;
wire [3:0]S;
wire cout;

four_bit_adder FBA(X, Y, cin, S, cout);

initial begin
	X=5; Y=6; cin=0; #100;
	X=10; Y=2; cin=1; #100;
	X=15; Y=15; cin=1; #100;
end
endmodule
	
