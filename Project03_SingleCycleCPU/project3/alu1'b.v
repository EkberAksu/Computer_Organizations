module alu_1b(carry_out, outp, a, b, less, carry_in, ALUop);

input a, b, less, carry_in;
input [2:0] ALUop;
output carry_out;
output outp;
wire [3:0] r;
wire xor_0, or_0, or_1, and_0, and_1, and_2, and_3, not_0, not_1;
wire mux1_out, mux2_out;

xor xor0(xor_0, b, ALUop[2]);
or or0(or_0, a, xor_0);
and and0(and_0, a, xor_0);
not not0(not_0, and_0);
and and1(and_1, not_0, or_0);
and and2(and_2, and_1, carry_in);
or or1(or_1, and_1, carry_in);
or or2(carry_out, and_0, and_2);
not not1(not_1, and_2);
and and3(and_3, not_1, or_1);

assign r[3] = and_0;
assign r[2] = and_3;
assign r[1] = or_0;
assign r[0] = less;

mux1_2to1 mux1(mux1_out, ALUop[1], r[3], r[2]);
mux1_2to1 mux2(mux2_out, ALUop[1], r[1], r[0]);
mux1_2to1 mux3(outp, ALUop[0], mux1_out, mux2_out);

endmodule