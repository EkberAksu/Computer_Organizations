module alu_32b(equal, finalCarryOut, outp, a, b, less, ALUop);

input [31:0] a, b;
input [2:0] ALUop;
input less;
wire [31:0] carry_out;
output finalCarryOut;
output [31:0] outp;
output equal;
wire equal;
wire finalCarryOut;

alu_1b alu_1b_0(carry_out[0], outp[0], a[0], b[0], less, ALUop[2], ALUop);
alu_1b alu_1b_1(carry_out[1], outp[1], a[1], b[1], 0, carry_out[0], ALUop); // carry_out[0] is actually carry_in[1]
alu_1b alu_1b_2(carry_out[2], outp[2], a[2], b[2], 0, carry_out[1], ALUop); 
alu_1b alu_1b_3(carry_out[3], outp[3], a[3], b[3], 0, carry_out[2], ALUop); 
alu_1b alu_1b_4(carry_out[4], outp[4], a[4], b[4], 0, carry_out[3], ALUop); 
alu_1b alu_1b_5(carry_out[5], outp[5], a[5], b[5], 0, carry_out[4], ALUop); 
alu_1b alu_1b_6(carry_out[6], outp[6], a[2], b[2], 0, carry_out[5], ALUop); 
alu_1b alu_1b_7(carry_out[7], outp[7], a[2], b[2], 0, carry_out[6], ALUop); 
alu_1b alu_1b_8(carry_out[8], outp[8], a[2], b[2], 0, carry_out[7], ALUop); 
alu_1b alu_1b_9(carry_out[9], outp[9], a[2], b[2], 0, carry_out[8], ALUop); 
alu_1b alu_1b_10(carry_out[10], outp[10], a[10], b[10], 0, carry_out[9], ALUop); 
alu_1b alu_1b_11(carry_out[11], outp[11], a[11], b[11], 0, carry_out[10], ALUop); 
alu_1b alu_1b_12(carry_out[12], outp[12], a[12], b[12], 0, carry_out[11], ALUop); 
alu_1b alu_1b_13(carry_out[13], outp[13], a[13], b[13], 0, carry_out[12], ALUop); 
alu_1b alu_1b_14(carry_out[14], outp[14], a[14], b[14], 0, carry_out[13], ALUop); 
alu_1b alu_1b_15(carry_out[15], outp[15], a[15], b[15], 0, carry_out[14], ALUop); 
alu_1b alu_1b_16(carry_out[16], outp[16], a[16], b[16], 0, carry_out[15], ALUop); 
alu_1b alu_1b_17(carry_out[17], outp[17], a[17], b[17], 0, carry_out[16], ALUop); 
alu_1b alu_1b_18(carry_out[18], outp[18], a[18], b[18], 0, carry_out[17], ALUop); 
alu_1b alu_1b_19(carry_out[19], outp[19], a[19], b[19], 0, carry_out[18], ALUop); 
alu_1b alu_1b_20(carry_out[20], outp[20], a[20], b[20], 0, carry_out[19], ALUop); 

alu_1b alu_1b_21(carry_out[21], outp[21], a[21], b[21], 0, carry_out[20], ALUop); 
alu_1b alu_1b_22(carry_out[22], outp[22], a[22], b[22], 0, carry_out[21], ALUop); 
alu_1b alu_1b_23(carry_out[23], outp[23], a[23], b[23], 0, carry_out[22], ALUop); 
alu_1b alu_1b_24(carry_out[24], outp[24], a[24], b[24], 0, carry_out[23], ALUop); 
alu_1b alu_1b_25(carry_out[25], outp[25], a[25], b[25], 0, carry_out[24], ALUop); 
alu_1b alu_1b_26(carry_out[26], outp[26], a[26], b[26], 0, carry_out[25], ALUop); 
alu_1b alu_1b_27(carry_out[27], outp[27], a[27], b[27], 0, carry_out[26], ALUop); 
alu_1b alu_1b_28(carry_out[28], outp[28], a[28], b[28], 0, carry_out[27], ALUop); 
alu_1b alu_1b_29(carry_out[29], outp[29], a[29], b[29], 0, carry_out[28], ALUop); 
alu_1b alu_1b_30(carry_out[30], outp[30], a[30], b[30], 0, carry_out[29], ALUop); 
alu_1b alu_1b_31(carry_out[31], outp[31], a[31], b[31], 0, carry_out[30], ALUop); 

assign finalCarryOut = carry_out[31];
assign equal = (a == b) ? 1 : 0;

endmodule
