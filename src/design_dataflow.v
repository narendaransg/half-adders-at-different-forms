module half_adder(
    input wire op1,
    input wire op2,
    output wire sum,
    output wire cout
);

    assign sum  = op1 ^ op2;
    assign cout = op1 & op2;

endmodule
