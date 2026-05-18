module inverter_sw(
    input in,
    output out
);

    supply1 VDD;
    supply0 VSS;

    pmos p1(out, VDD, in);
    nmos n1(out, VSS, in);

endmodule
