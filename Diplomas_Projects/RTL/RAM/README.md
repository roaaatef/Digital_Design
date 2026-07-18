# Parameterized Single-Port RAM (SPR)

A configurable **Single-Port RAM (SPR)** implemented in **Verilog HDL**. The design supports synchronous read and write operations with optional address and data output pipelining, parity generation, and block-level access control.

A self-checking simulation environment is included to verify the RAM functionality using ModelSim/QuestaSim.

---

## Overview

This project implements a parameterized synchronous single-port memory that allows both read and write operations through a shared address port. The design is configurable through Verilog parameters, making it suitable for different memory sizes and performance requirements.

The RAM supports optional address pipelining, registered data outputs, and parity-bit generation for error detection.

---

## Features

- Parameterized memory width and depth
- Synchronous read and write operations
- Shared single-port memory interface
- Optional address pipelining
- Optional registered data output
- Configurable parity generation
- Block enable control
- Separate address and data output enable signals
- FPGA-ready design

---

## Project Structure

```
.
├── Q4_1.v         # Single-Port RAM RTL
├── Q4_1_tb.v      # Testbench
├── q4.do          # ModelSim simulation script
├── q4.xdc         # FPGA constraints
├── mem.dat        # Memory initialization file (used by the testbench)
└── README.md
```

---

## Design Parameters

| Parameter | Default | Description |
|-----------|:------:|-------------|
| `MEM_WIDTH` | 16 | Memory word width |
| `MEM_DEPTH` | 1024 | Number of memory locations |
| `ADDR_SIZE` | 10 | Address bus width |
| `ADDR_PIPELINE` | `"FALSE"` | Enables registered address input |
| `DOUT_PIPELINE` | `"TRUE"` | Enables registered data output |
| `PARITY_ENABLE` | 1 | Enables parity-bit generation |

---

## Interface

### Inputs

| Signal | Description |
|---------|-------------|
| `clk` | System clock |
| `rst` | Synchronous reset |
| `din` | Write data input |
| `addr` | Memory address |
| `wr_en` | Write enable |
| `rd_en` | Read enable |
| `blk_select` | Memory block enable |
| `addr_en` | Address register enable |
| `dout_en` | Output register enable |

### Outputs

| Signal | Description |
|---------|-------------|
| `dout` | Memory read data |
| `parity_out` | Even parity of the selected memory word |

---

## Functional Description

The RAM performs all operations synchronously with the rising edge of the system clock.

- When `blk_select` is asserted, the memory becomes active.
- If `wr_en` is high, the input data is written to the selected address.
- If `rd_en` is high, the selected memory location is read.
- Address pipelining can be enabled to register incoming addresses before memory access.
- Output pipelining can be enabled to register the read data before driving the output.
- When parity generation is enabled, the module outputs the reduction XOR (even parity) of the selected memory word.

---

## Verification

The supplied Verilog testbench verifies the RAM by:

- Initializing memory contents from a hexadecimal file (`mem.dat`)
- Applying reset
- Performing randomized write operations
- Performing randomized read operations
- Exercising block enable and control signals
- Testing optional address and output pipelining
- Verifying parity generation during memory reads

---

## Running the Simulation

The project can be simulated using **ModelSim** or **QuestaSim**.

```tcl
vlib work
vlog Q4_1.v Q4_1_tb.v
vsim -voptargs=+acc work.spr_tb
add wave *
run -all
```

These commands are also provided in the included ModelSim DO script. :contentReference[oaicite:0]{index=0}

---

## Tools Used

- Verilog HDL
- ModelSim / QuestaSim
- Xilinx Vivado (XDC Constraints)

---

## Author

**Roaa Atef**

B.Sc. Electronics and Electrical Communications Engineering

**Areas of Interest**
- Digital IC Design
- Digital Verification
- FPGA Design
- ASIC Design
