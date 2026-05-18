module nand_sw(
    input in1,
    input in2,
    output out
);

    supply1 VDD;
    supply0 VSS;

    wire n1;

    pmos p1(out, VDD, in1);
    pmos p2(out, VDD, in2);

    nmos nm1(out, n1, in1);
    nmos nm2(n1, VSS, in2);

endmodule
