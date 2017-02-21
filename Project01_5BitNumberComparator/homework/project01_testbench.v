module project01_testbench();
	reg [4:0] A;
	reg [4:0] B;
	
	wire [3:0] O;
	wire [1:0] OUT;
	
	project01 test(OUT, A, B);
	
initial begin 
		A=5'b00000;  B=5'b00001;
#20;  A=5'b00001;  B=5'b00000;
#20;  A=5'b00000;  B=5'b00000;
#20;  A=5'b01101;  B=5'b01101;
#20;  A=5'b01011;  B=5'b00111;
#20;  A=5'b01011;  B=5'b01011;
#20;  A=5'b11111;  B=5'b11111;
#20;  A=5'b01011;  B=5'b00111;
#20;
end

initial begin 
		$monitor("time= %2d, OUT= %2b, A= %5b, B= %5b", $time, OUT, A, B);
end 

endmodule 