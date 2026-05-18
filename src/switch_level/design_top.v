`include "nand_sw.v"
`include "inverter_sw.v"
`include "nor_sw.v"

module half_adder(
    input wire op1,
    input wire op2,
    output wire sum,
    output wire cout
);

    wire Nop1, Nop2;
    wire nand1, nor1, nor2, nand2, nand3;

    // inverter
    inverter_sw u_in1(.in(op1), .out(Nop1));
    inverter_sw u_in2(.in(op2), .out(Nop2));

    // and
    nand_sw u_and1(.in1(op1), .in2(op2), .out(nand1));
    inverter_sw u_in3(.in(nand1), .out(cout));

    // xor
    nor_sw u_nor1(.in1(op1), .in2(Nop2), .out(nor1)); // ~a.b
    nor_sw u_nor2(.in1(Nop1), .in2(op2), .out(nor2)); // a.~b

    inverter_sw u_in4(.in(nor1), .out(nand2));
    inverter_sw u_in5(.in(nor2), .out(nand3));

    nand_sw u_or1(.in1(nand2), .in2(nand3), .out(sum));

endmodule
