module nor_sw(
    input in1,
    input in2,
    output out
);

    supply1 VDD;
    supply0 VSS;

    wire n1;

    pmos p1(n1, VDD, in1);
    pmos p2(out, n1, in2);

    nmos nm1(out, VSS, in1);
    nmos nm2(out, VSS, in2);

endmodule
