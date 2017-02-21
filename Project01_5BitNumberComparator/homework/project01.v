module project01 (r[1:0], a[4:0], b[4:0]);

	input  [4:0] a;
	input  [4:0] b;
	output [1:0] r;
	
	wire   [4:0]  I; 
	wire   [4:0]  J; 
	wire   [3:0]  K; 
	wire   [7:0]  X; 
	wire   [9:0]  Y; 
	wire [3:0] O; 
	
	xnor I_0(I[0], a[0], b[0]);
	xnor I_1(I[1], a[1], b[1]);
	xnor I_2(I[2], a[2], b[2]);
	xnor I_3(I[3], a[3], b[3]);
	xnor I_4(I[4], a[4], b[4]);
	
	nor J_0(J[0], a[0], b[0]);
	nor J_1(J[1], a[1], b[1]);
	nor J_2(J[2], a[2], b[2]);
	nor J_3(J[3], a[3], b[3]);
	nor J_4(J[4], a[4], b[4]);
	
	nor K_0(K[0], Y[6], Y[7]);
	nor K_1(K[1], Y[4], Y[5]);
	nor K_2(K[2], Y[2], Y[3]);
	nor K_3(K[3], Y[0], Y[1]);
	
	and X_0(X[0], K[3], Y[2]);
	and X_1(X[1], K[3], Y[3]);
	and X_2(X[2], K[3], K[2], Y[4]);
	and X_3(X[3], K[3], K[2], Y[5]);
	and X_4(X[4], K[3], K[2], K[1], Y[6]);
	and X_5(X[5], K[3], K[2], K[1], Y[7]);
	and X_6(X[6], K[3], K[2], K[1], K[0], Y[8]);
	and X_7(X[7], K[3], K[2], K[1], K[0], Y[9]);
	
	and Y_0(Y[0], !a[4], b[4]);
	and Y_1(Y[1], a[4], !b[4]);
	and Y_2(Y[2], !a[3], b[3]);
	and Y_3(Y[3], a[3], !b[3]);
	and Y_4(Y[4], !a[2], b[2]);
	and Y_5(Y[5], a[2], !b[2]);
	and Y_6(Y[6], !a[1], b[1]);
	and Y_7(Y[7], a[1], !b[1]);
	and Y_8(Y[8], !a[0], b[0]);
	and Y_9(Y[9], a[0], !b[0]);
	
	and RESULT_0(O[0], !O[1], I[0], I[1], I[2], I[3], I[4]);  //A=B!=0
	and RESULT_1(O[1], J[0], J[1], J[2], J[3], J[4]);         //A=B=0
	or RESULT_2(O[2], Y[1], X[1], X[3], X[5], X[7]);         //A>B
	or RESULT_3(O[3], Y[0], X[0], X[2], X[4], X[6]);         //A<B
	
	
	and OUT_0(r[0], !O[1], !O[3]);
	or  OUT_1(r[1], O[0], O[3]);
	
endmodule
	
	