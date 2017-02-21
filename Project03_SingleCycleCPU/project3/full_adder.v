module fullAdder(carry_out, sum_result, a, b, carry_in);

input a, b, carry_in;
output carry_out, sum_result;
wire or_0, or_1, and_0, and_1, and_2, not_0, not_1;

or or0(or_0, a, b);
and and0(and_0, a, b);
not not0(not_0, and_0);
and and1(and_1, not_0, or_0);
and and2(and_2, and_1, carry_in);
or or1(or_1, and_1, carry_in);
or or2(carry_out, and_0, and_2);
not not1(not_1, and_2);
and and3(sum_result, not_1, or_0);

endmodule