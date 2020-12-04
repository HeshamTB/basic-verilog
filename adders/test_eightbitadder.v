/*
	test_eightbitadder: Make an 8-bit adder using two 4-bit adders.
	Dec 4th, 2020
	- H.B.
*/
module test_eightbitadder;

//Input registers
reg [7:0]A,B; 
reg cin;

//glue
wire c1;

//output wires
wire [7:0]S;
wire cout;

/*
	A7, A6, A5, A4, A3, A2, A1, A0
	Same for B...
*/
four_bit_adder FBA0(A[3:0], B[3:0], cin, S[3:0], c1);//LS
four_bit_adder FBA1(A[7:4], B[7:4], c1, S[7:4], cout);//MS

initial begin
	A=0; B=0; cin=0; #100;
	repeat(255) begin
		A = A + 1; #100;
		B = B + 1; #100;
		cin = ~cin; #100;
	end
end
endmodule
