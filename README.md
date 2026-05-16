# Verilog Half Adder: Multi-Abstraction Implementation

## Overview
This repository contains the implementation of a standard digital Half Adder circuit utilizing four distinct levels of abstraction in Verilog/SystemVerilog. The project demonstrates the progression from high-level algorithmic description down to transistor-level CMOS implementation. 

All designs have been simulated and verified using Synopsys VCS.

## Implementation Methodologies

### 1. Dataflow Modeling
The Dataflow implementation utilizes continuous assignment (`assign`) statements. This approach models the flow of data through combinational logic equations directly.
* **Logic:** `sum = op1 ^ op2`, `cout = op1 & op2`

* ![Dataflow Simulation](HA1.png)

### 2. Behavioral Modeling
The Behavioral implementation utilizes procedural blocks (`always @(*)`) to describe the functional behavior of the circuit without explicitly detailing the underlying hardware gates. 
* **Logic:** Procedural assignment within an always block triggered by changes to the input sensitivity list.

* ![Behavioral Simulation](HA2.png)

### 3. Gate-Level Modeling
The Gate-Level implementation utilizes built-in structural Verilog primitives. This methodology instantiates standard logic gates to construct the circuit.
* **Logic:** Explicit instantiation of `xor` and `and` primitives.

* ![Gate-Level Simulation](HA3.png)

### 4. Switch-Level Modeling
The Switch-Level implementation represents the lowest level of digital abstraction in Verilog. It models the circuit using fundamental CMOS transistor primitives (`pmos`, `nmos`).
* **Logic:** The Half Adder is constructed using custom sub-modules (`nand_sw`, `nor_sw`, `inverter_sw`), which are inherently built from PMOS pull-up networks and NMOS pull-down networks.

* ![Switch-Level Simulation](hasw1.png)

## Verification
A standard SystemVerilog testbench (`tb_top`) was used across all abstraction levels to apply stimulus and monitor the outputs. The output waveforms and `$monitor` console logs confirm identical functional behavior across all four modeling styles.
