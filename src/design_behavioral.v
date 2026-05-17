module half_adder(
    input wire op1,
    input wire op2,
    output reg sum,
    output reg cout
);

    always @(*) begin
        sum  = op1 ^ op2;
        cout = op1 & op2;
    end

endmodule
