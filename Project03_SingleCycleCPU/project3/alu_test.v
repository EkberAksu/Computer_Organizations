module aluTest();

reg [31:0] a; 
reg [31:0] b; 
wire [31:0] sum;
wire CarryOut; 
reg [2:0] aluopp;
alu_32b test(CarryOut, sum, a, b, 0, aluopp);

initial begin $monitor("a=%b  b=%b cout=%b  sum=%b aluOP=%3b", a, b, CarryOut, sum, aluopp);

  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=0;
  a=32'b00000000000000000000000000000001;
  b=32'b00000000000000000000000000000001;
#50

  
  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=0;
  a=32'b00000000000000000000000000000000;
  b=32'b00000000000000000000000000000000;
  
#50
  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=0;
  a=32'b00000000000000000000000000000001;
  b=32'b00000000000000000000000000000000;
  
#50

  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=0;
  a=32'b00000000000000000000000000000000;
  b=32'b00000000000000000000000000000001;
  
#50

  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=1;
  a=1;
  b=1;
#50

  
  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=1;
  a=0;
  b=0;
  
#50
  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=1;
  a=1;
  b=0;
  
#50

  aluopp[2]=0;
  aluopp[1]=0;
  aluopp[0]=1;
  a=0;
  b=1;
  
#50

  aluopp[2]=0;
  aluopp[1]=1;
  aluopp[0]=0;
  a=1;
  b=1;
#50

  
  aluopp[2]=0;
  aluopp[1]=1;
  aluopp[0]=0;
  a=0;
  b=0;
  
#50
  aluopp[2]=0;
  aluopp[1]=1;
  aluopp[0]=0;
  a=1;
  b=0;
  
#50

  aluopp[2]=0;
  aluopp[1]=1;
  aluopp[0]=0;
  a=0;
  b=1;


end

  
endmodule