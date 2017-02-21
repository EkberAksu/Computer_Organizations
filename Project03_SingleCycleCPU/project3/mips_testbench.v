module mips_testbench ();
reg clock;
reg reset;
 integer i;

 
 mips_core cpu(clock,reset);
 
initial begin
 reset = 0;
 for(i=0; i<10; i = i+1)
 begin
  clock = 0;
  #100
  clock = 1;
  #100
  clock = 0;
 end

 $writememb("C:\\Users\\Akbar\ Aziz\\Desktop\\computer\ Organizations_Projects03\\regContent.txt", cpu.Reg.registers);
 $writememb("C:\\Users\\Akbar\ Aziz\\Desktop\\computer\ Organizations_Projects03\\memContent.txt", cpu.dataMem.data_mem);
end



endmodule