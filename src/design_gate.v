module half_adder(
    input wire op1,
    input wire op2,
    output reg sum,
    output reg cout
);

    and (cout, op1, op2);
    xor (sum, op1, op2);

endmodule
