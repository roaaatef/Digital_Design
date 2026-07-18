# Asynchronous FIFO (First-In, First-Out) Buffer

A parameterized **Asynchronous FIFO (First-In, First-Out)** implemented in **Verilog HDL**. The design enables reliable data transfer between two independent clock domains using separate read and write clocks while providing full and empty status indicators.

A comprehensive testbench is included to verify the FIFO functionality using ModelSim/QuestaSim.

---

## Overview

This project implements an asynchronous FIFO that allows data to be safely transferred between two independent clock domains. The FIFO stores data in the order it is received and supports simultaneous read and write operations using separate clocks.

The design is fully parameterized, making it easy to configure the FIFO width and depth for different digital system requirements.

---

## Features

- Parameterized data width and FIFO depth
- Independent read and write clock domains
- Circular buffer architecture
- Separate read and write pointers
- Synchronous reset
- Full and Empty status flags
- Simultaneous read and write support
- FPGA-ready RTL implementation

---

## Project Structure

```text
.
├── Q5.v          # Asynchronous FIFO RTL
├── Q5_tb.v       # Self-checking testbench
├── q5.do         # ModelSim simulation script
├── q5.xdc        # FPGA constraints
└── README.md
```

---

## Design Parameters

| Parameter | Description |
|-----------|-------------|
| `FIFO_WIDTH` | Width of each data word |
| `FIFO_DEPTH` | Number of FIFO storage locations |

---

## Interface

### Inputs

| Signal | Description |
|--------|-------------|
| `clk_a` | Write clock |
| `clk_b` | Read clock |
| `rst` | Synchronous reset |
| `din_a` | Write data input |
| `wen_a` | Write enable |
| `ren_b` | Read enable |

### Outputs

| Signal | Description |
|--------|-------------|
| `dout_b` | Read data output |
| `full` | Indicates the FIFO is full |
| `empty` | Indicates the FIFO is empty |

---

## Functional Description

The FIFO uses independent write and read pointers to manage memory access while preserving the order of stored data.

### Write Operation

- Data is written on the rising edge of the write clock (`clk_a`).
- A write operation occurs only when:
  - `wen_a` is asserted.
  - The FIFO is **not full**.
- After a successful write, the write pointer advances to the next memory location.

### Read Operation

- Data is read on the rising edge of the read clock (`clk_b`).
- A read operation occurs only when:
  - `ren_b` is asserted.
  - The FIFO is **not empty**.
- After a successful read, the read pointer advances to the next memory location.

### Status Flags

- **Full** is asserted when no additional data can be written.
- **Empty** is asserted when no valid data is available to read.

---

## Verification

The included Verilog testbench verifies the functionality of the FIFO by testing:

- Reset behavior
- Write operations
- Read operations
- Full flag generation
- Empty flag generation
- Simultaneous read and write operations
- Data integrity during transfers

---

## Running the Simulation

The project can be simulated using **ModelSim** or **QuestaSim**.

```tcl
vlib work
vlog Q5.v Q5_tb.v
vsim -voptargs=+acc work.fifo_tb
add wave *
run -all
```

The same commands are included in the provided ModelSim DO script. :contentReference[oaicite:0]{index=0}

---

## Tools Used

- Verilog HDL
- ModelSim / QuestaSim
- Xilinx Vivado

---

## Author

**Roaa Atef**

Bachelor of Electronics and Electrical Communications Engineering

Interested in **Digital IC Design**, **Digital Verification**, **FPGA Design**, and **ASIC Design**.
