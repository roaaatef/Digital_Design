# SPI Slave Interface with Single-Port Async RAM

A synthesizable SPI slave peripheral in Verilog that exposes a byte-addressable memory over SPI: the master can write bytes to an address, or read bytes back from an address, through a simple two-phase (command + address/data) SPI transaction. Includes a SystemVerilog golden reference model for formal/functional equivalence checking and a post-synthesis EDIF netlist (Vivado).

## Overview

The design has two cooperating blocks:

- **`spi_slave_interface`** — a Mealy/Moore-style FSM that decodes SPI traffic on `MOSI`/`MISO`/`SS_n`/`clk`, shifts in a 10-bit instruction word, and drives a memory core.
- **`single_port_async_ram`** — a simple word-addressable memory with a 4-operation command encoding, driven directly by the SPI FSM.

```
   MOSI ──►┌────────────────────────┐         ┌───────────────────────┐
   SS_n ──►│                        │ rx_data  │                       │
   clk  ──►│  spi_slave_interface   ├─────────►│ single_port_async_ram │
   rst_n──►│         (FSM)          │ rx_valid │                       │
           │                        │◄─────────┤ tx_data / tx_valid    │
   MISO ◄──└────────────────────────┘         └───────────────────────┘
```

> **Note:** `SPI_SLAVE_golden.sv` references a `SLAVE_if` SystemVerilog interface (via its `GOLDEN` modport) that is **not included** in this file set. You'll need to supply that interface definition (clock, `SS_n`, `MOSI`, `MISO_exp`, `rx_valid_exp`, `rx_data_exp`, `tx_valid`, `tx_data`, etc.) to compile the golden model or bind it into a formal/scoreboard environment.

## SPI Protocol

The slave uses `clk` directly as the serial clock and `SS_n` as an active-low chip select. Each transaction shifts data in **MSB-first** on `MOSI`.

1. **Idle** — while `SS_n` is high, the FSM stays in `IDLE`.
2. **Command bit** (`CHK_CMD`) — the first `MOSI` bit sampled after `SS_n` goes low selects the operation:
   - `MOSI = 0` → **Write** transaction → FSM moves to `WRITE`
   - `MOSI = 1` → **Read** transaction → FSM moves to `READ_ADD` (first read of a given address) or directly to `READ_DATA` if a read address was already latched (`READ_OP` flag)
3. **10-bit instruction shift** (`WRITE`, `READ_ADD`, and the first 10 cycles of `READ_DATA`) — the next 10 `MOSI` bits are shifted into `rx_data` (MSB-first, via `rx_data <= {rx_data[8:0], MOSI}`), forming the word passed to the RAM: `rx_data[9:8]` is the RAM opcode, `rx_data[7:0]` is the address/data payload. Once 10 bits are collected, `rx_valid` pulses high for one clock to commit the word to the RAM. In `READ_DATA`, this shifted-in word is the `11` (read) opcode that triggers the RAM to produce `tx_data`/`tx_valid`.
4. **Read-back** (remaining cycles of `READ_DATA`) — once the RAM's `tx_valid` goes high, the FSM serializes `tx_data[7:0]` out on `MISO` over the next 8 clocks, MSB-first (`tx_data[17-counter]` for `counter = 10..17`).
5. Deasserting `SS_n` at any point returns the FSM to `IDLE`.

### RAM opcode encoding (`rx_data[9:8]` / RAM `din[9:8]`)

| Opcode | Operation |
|---|---|
| `00` | Hold payload as the **write address** |
| `01` | Write payload as **data** to the held write address |
| `10` | Hold payload as the **read address** |
| `11` | **Read** data from the held read address (`tx_valid` goes high with the result) |

## Module Interfaces

### `spi_slave_interface`

| Port | Width | Direction | Description |
|---|---|---|---|
| `MOSI` | 1 | in | Master Out, Slave In |
| `MISO` | 1 | out | Master In, Slave Out |
| `clk` | 1 | in | Serial clock |
| `SS_n` | 1 | in | Active-low slave select |
| `rst_n` | 1 | in | Active-low synchronous reset |

**Parameters:** `MEM_DEPTH` (default `256`), `MEM_ADDR_SIZE` (default `8`), `MEM_INPUT_SIZE` (default `10`), `MEM_WORD_SIZE` (default `8`) — forwarded directly to the internal `single_port_async_ram` instance.

### `single_port_async_ram`

| Port | Width | Direction | Description |
|---|---|---|---|
| `din` | 10 | in | `din[9:8]` = opcode, `din[7:0]` = address/data payload |
| `clk` | 1 | in | Clock |
| `rst_n` | 1 | in | Active-low synchronous reset |
| `rx_valid` | 1 | in | Commits `din` per the current opcode when high |
| `dout` | 8 | out | Registered read data |
| `tx_valid` | 1 | out | Set high after a read (opcode `11`); **holds high** until a subsequent write-address/write-data/read-address transaction clears it — `tx_valid` is only ever updated while `rx_valid` is asserted, so it is not a single-cycle pulse |

**Parameters:** `MEM_DEPTH` (default `256`), `ADDR_SIZE` (default `8`), `INPUT_SIZE` (default `10`), `WORD_SIZE` (default `8`).

Despite its filename, `single_port_async_ram` is implemented as a **synchronous** memory — reads and writes both happen on `posedge clk`; there is no combinational (asynchronous) read path.

## Golden Model (`SPI_SLAVE_golden.sv`)

A behavioral checker with its own 5-state FSM (`IDLE`, `CHK_CMD`, `WRITE`, `READ_ADD`, `READ_DATA`) mirroring the RTL's FSM. It watches `MOSI`/`SS_n` and produces *expected* values (`s_if.MISO_exp`, `s_if.rx_valid_exp`, `s_if.rx_data_exp`) for comparison against the DUT's actual outputs — intended to be bound into a formal property check or a scoreboard-style testbench via the `SLAVE_if` interface.

## Simulation

Both blocks have standalone, self-checking testbenches (any standard Verilog simulator — ModelSim/QuestaSim, VCS, Xcelium, Verilator, etc.).

**RAM only:**
```tcl
vlog single_port_async_ram.v single_port_async_ram_tb.v
vsim -voptargs=+acc work.single_port_async_ram_tb
run -all
```
Directed sequence: write address `0x01` → write data `0x0A` to it → read address `0x01` → read back data, checking `dout == 8'h0A` once `tx_valid` is high.

**Full SPI slave (includes the RAM):**
```tcl
vlog single_port_async_ram.v spi_slave_interface.v spi_slave_interface_tb.v
vsim -voptargs=+acc work.spi_slave_interface_tb
run -all
```
Runs 40 randomized iterations, each performing write-address → write-data → read-address → read-data over the SPI lines, and prints `Test Passed`/`Test Failed` comparing the byte read back on `MISO` against the byte originally written.

## Synthesis

`SPI.edn` is a Vivado-generated EDIF netlist of `spi_slave_interface`, mapped to Xilinx 7-series primitives (`LUT6`, `LUT4`, `FDRE`, `OBUF`, `GND`, etc.), confirming the design is synthesizable as-is with no unsupported constructs. The `(* fsm_encoding = "gray" *)` attribute on the `cs`/`ns` state registers requests Gray encoding for the state machine during synthesis.

## Requirements

- Any Verilog/SystemVerilog simulator (ModelSim/QuestaSim, VCS, Xcelium, Verilator, etc.) for the RTL
- A `SLAVE_if` interface definition and a driving testbench to exercise `SPI_SLAVE_golden.sv`
- Xilinx Vivado if regenerating or re-targeting the `SPI.edn` netlist

## License

No license specified yet. Add a `LICENSE` file (e.g. MIT, Apache-2.0) if you intend to share or accept contributions to this repository.
