module mips_core(Clock, Reset);
input Clock, Reset;

   wire [31:0] PC_out, PC_In; //from pc
   wire [31:0] Instruction; //from Instruction memory
   wire [31:0] IncPC; //from adder incrementing pc
   // from control unit
   wire          RegDst, RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, Jump;
   wire [1:0]   ALUOp; //from control
   wire [4:0]   WriteAddr, JumpAddr; //from mux_reg
   wire [31:0] ReadData1, ReadData2; //from register
   wire [31:0] Out_signExtend; //from sign extension
   wire [31:0] In_B, In_shift, ShiftWire; //from alu muxs
   wire [3:0]   In_Control; //from ALU control
   wire           ShiftFunc, JR;
   wire [31:0] ALU_out; //from alu
   wire           Zero, BranchType; //from alu
   wire [31:0] MemData; //from memory access
   wire [31:0] WriteData, JumpData; //from memory access mux
   wire [31:0] BranchAddress; //from branch adder
   wire [31:0] PC_Jump, JumpAddress, JumpAddress2; //from jump mux
	wire [5:0] OpCode, funct;
	wire [4:0] Rs, Rt, Rd, shamt;
	
	reg [31:0] program_counter;
	initial program_counter = 8'b00000000000000000000000000000000;
	wire [31:0] pc_increment_amount = 32'b00000000000000000000000000000001;

	// Divide the current Instruction
assign OpCode = Instruction[31:26];
assign Rs = Instruction[25:21];
assign Rt = Instruction[20:16];
assign Rd = Instruction[15:11];
assign shamt = Instruction[10:6];
assign funct = Instruction[5:0];
assign immediate = Instruction[15:0];
assign jumpAddress = Instruction[25:0];

	PC  PC_module(PC_out, PC_In, Clock, Reset);
	mips_instr_mem  ins(Instruction, PC_out);
	adder_32bit  increment_PC(IncPC, , PC_out, 32'd4, 1'b0);
	controlUnit   MainControl(ALUOp, RegDst, RegWrite, ALUSrc, MemRead,MemWrite, MemToReg,
										Branch, Jump,Instruction[31:26]);
	mux5bit jump(JumpAddr, RegDst, Instruction[20:16], Instruction[15:11]);
	mips_registers Reg(ReadData1, ReadData2,WriteData ,Instruction[20:16], Instruction[15:11],
								JumpAddr,RegWrite, Clock);
	mips_data_mem dataMem(MemData,JumpAddr,WriteData,MemRead,MemWrite);

endmodule

