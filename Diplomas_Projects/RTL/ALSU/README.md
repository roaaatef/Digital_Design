# Arithmetic Logic Shift Unit (ALSU)

A Verilog implementation of a parameterized **Arithmetic Logic Shift Unit (ALSU)** with registered inputs, configurable arithmetic behavior, reduction operations, input bypassing, and a comprehensive self-checking verification environment.

---

## Overview

The ALSU performs arithmetic, logical, multiplication, and shift operations based on a 3-bit opcode. All inputs are synchronized through parameterized D Flip-Flops before execution, providing a fully synchronous design.

The project also implements configurable design parameters, allowing the behavior of the ALSU to be modified without changing the RTL.

---

## Features

- Registered inputs using parameterized D Flip-Flops
- Arithmetic operations
  - Addition
  - Addition with Carry-In (configurable)
- Logical operations
  - Bitwise AND
  - Bitwise XOR
- Multiplication
- Serial Shift Left / Shift Right
- Reduction AND
- Reduction XOR
- Input bypass functionality
- Configurable input priority
- Invalid operation detection
- LED blinking indication for invalid operations
- Parameterized RTL design

---

## Project Structure

```
.
├── ALSU_DFF.v      # Parameterized D Flip-Flop
├── Q1_FINAL.v      # ALSU RTL implementation
├── Q11_tb.v        # Self-checking testbench
├── q1.do           # ModelSim simulation script
├── ass_4.xdc       # FPGA constraints
└── README.md
```

---

## Design Parameters

| Parameter | Description |
|----------|-------------|
| `INPUT_PRIORITY` | Selects which input has priority when both bypass or reduction signals are asserted. |
| `FULL_ADDER` | Enables or disables carry-in during addition. |

---

## Supported Operations

| Opcode | Operation |
|:------:|-----------|
| 000 | AND / Reduction AND |
| 001 | XOR / Reduction XOR |
| 010 | Addition |
| 011 | Multiplication |
| 100 | Shift Operation |
| 101 | Shift with recirculation |
| 110 | Invalid |
| 111 | Invalid |

---

## Inputs

| Signal | Description |
|---------|-------------|
| `clk` | System clock |
| `rst` | Asynchronous reset |
| `A` | 3-bit input operand |
| `B` | 3-bit input operand |
| `opcode` | Operation selector |
| `cin` | Carry input |
| `serial_in` | Serial input for shift operation |
| `red_op_A` | Enable reduction operation on A |
| `red_op_B` | Enable reduction operation on B |
| `bypass_A` | Bypass operand A |
| `bypass_B` | Bypass operand B |
| `direction` | Shift direction |

---

## Outputs

| Signal | Description |
|---------|-------------|
| `out` | 6-bit operation result |
| `leds` | 16-bit status LEDs that toggle during invalid operations |

---

## Verification

A self-checking Verilog testbench is provided to verify the functionality of the ALSU.

The testbench validates:

- Reset functionality
- Input bypass operation
- AND operation
- XOR operation
- Reduction AND
- Reduction XOR
- Addition with Carry-In
- Multiplication
- Shift operations
- Invalid opcode handling
- LED behavior during invalid operations

Simulation automatically reports an error and stops whenever the DUT output differs from the expected result.

---

## Running the Simulation

The project can be simulated using ModelSim or QuestaSim.

```tcl
vlib work
vlog ALSU_DFF.v Q1_FINAL.v Q11_tb.v
vsim -voptargs=+acc work.ALSU_tb
add wave *
run -all
```

The same commands are included in the provided ModelSim DO file. :contentReference[oaicite:0]{index=0}

---

## Tools

- Verilog HDL
- ModelSim / QuestaSim
- FPGA Design Flow (Xilinx XDC)

---

## Author

**Roaa Atef**

B.Sc. Electronics and Electrical Communications Engineering

**Areas of Interest**
- Digital IC Design
- Digital Verification
- FPGA Design
- ASIC Design
