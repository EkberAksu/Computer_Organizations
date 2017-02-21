module mux32bit(outp5b, select, input_1, input_2);

input [31:0] input_1, input_2;
input select;
output [31:0] outp5b;

mux1_2to1 select0(outp5b[0], select, input_1[0], input_2[0]);
mux1_2to1 select1(outp5b[1], select, input_1[1], input_2[1]);
mux1_2to1 select2(outp5b[2], select, input_1[2], input_2[2]);
mux1_2to1 select3(outp5b[3], select, input_1[3], input_2[3]);
mux1_2to1 select4(outp5b[4], select, input_1[4], input_2[4]);
mux1_2to1 select5(outp5b[5], select, input_1[5], input_2[5]);
mux1_2to1 select6(outp5b[6], select, input_1[6], input_2[6]);
mux1_2to1 select7(outp5b[7], select, input_1[7], input_2[7]);
mux1_2to1 select8(outp5b[8], select, input_1[8], input_2[8]);
mux1_2to1 select9(outp5b[9], select, input_1[9], input_2[9]);
mux1_2to1 select10(outp5b[10], select, input_1[10], input_2[10]);
mux1_2to1 select11(outp5b[11], select, input_1[11], input_2[11]);
mux1_2to1 select12(outp5b[12], select, input_1[12], input_2[12]);
mux1_2to1 select13(outp5b[13], select, input_1[13], input_2[13]);
mux1_2to1 select14(outp5b[14], select, input_1[14], input_2[14]);
mux1_2to1 select15(outp5b[15], select, input_1[15], input_2[15]);
mux1_2to1 select16(outp5b[16], select, input_1[16], input_2[16]);
mux1_2to1 select17(outp5b[17], select, input_1[17], input_2[17]);
mux1_2to1 select18(outp5b[18], select, input_1[18], input_2[18]);
mux1_2to1 select19(outp5b[19], select, input_1[19], input_2[19]);
mux1_2to1 select20(outp5b[20], select, input_1[20], input_2[20]);
mux1_2to1 select21(outp5b[21], select, input_1[21], input_2[21]);
mux1_2to1 select22(outp5b[22], select, input_1[22], input_2[22]);
mux1_2to1 select23(outp5b[23], select, input_1[23], input_2[23]);
mux1_2to1 select24(outp5b[24], select, input_1[24], input_2[24]);
mux1_2to1 select25(outp5b[25], select, input_1[25], input_2[25]);
mux1_2to1 select26(outp5b[26], select, input_1[26], input_2[26]);
mux1_2to1 select27(outp5b[27], select, input_1[27], input_2[27]);
mux1_2to1 select28(outp5b[28], select, input_1[28], input_2[28]);
mux1_2to1 select29(outp5b[29], select, input_1[29], input_2[29]);
mux1_2to1 select30(outp5b[30], select, input_1[30], input_2[30]);
mux1_2to1 select31(outp5b[31], select, input_1[31], input_2[31]);

endmodule