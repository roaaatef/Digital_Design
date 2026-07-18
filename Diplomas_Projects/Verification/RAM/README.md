# Parity-Protected RAM (SystemVerilog)

A simple, associative-array-based RAM model in SystemVerilog with built-in odd-parity protection, verified by a self-checking, randomized testbench and simulated in QuestaSim/ModelSim with functional coverage collection.

## Overview

The design under test (`RAM.sv`) implements a byte-addressable memory using a SystemVerilog associative array (`logic [8:0] RAM [int]`), so memory is allocated dynamically only for addresses that are actually written — no fixed-size memory array is declared up front.

On every write, an odd-parity bit is computed over the 8-bit input data and stored alongside it as bit `[8]` of the 9-bit memory word. On every read, the stored 9-bit word (data + parity) is returned on `data_out`, allowing the testbench to independently recompute the expected parity and flag corruption.

```
data_out[8]   = parity bit (odd parity of data_in)
data_out[7:0] = stored data byte
```

## Design Details — `RAM.sv`

**Ports**

| Port | Direction | Width | Description |
|---|---|---|---|
| `clk` | input | 1 | Clock |
| `write` | input | 1 | Write enable |
| `read` | input | 1 | Read enable |
| `data_in` | input | 8 | Data to write |
| `address` | input | 16 | Memory address |
| `data_out` | output reg | 9 | `{parity, data}` read from memory |

**Behavior** (synchronous, `posedge clk`):
- If `write` is asserted, `{~^data_in, data_in}` (odd parity concatenated with data) is stored at `RAM[address]`. `~^data_in` is a reduction XNOR, which yields the odd-parity bit for `data_in`.
- Else if `read` is asserted, the stored 9-bit word at `RAM[address]` is driven onto `data_out`.
- `write` and `read` are mutually exclusive in the RTL (`else if`): if both are asserted in the same cycle, `write` takes priority and `data_out` is not updated that cycle.
- Reading an address that was never written returns the associative array's default value (`9'b0`), since `RAM[int]` has no entry for that key yet.

## Testbench — `RAM_TB.sv`

The testbench (`TESTS = 100` transactions by default) exercises the RAM as follows:

1. **Stimulus generation** — random 16-bit addresses and random 8-bit data values are generated into dynamic arrays.
2. **Golden model** — expected data (and expected parity) per address is precomputed into an associative array, independent of the DUT.
3. **Write phase** — all generated (address, data) pairs are written into the DUT, one per clock edge.
4. **Read phase** — every address is read back; each result is checked against the golden model (`check9Bits` task) for both data and parity correctness, and pushed into a result queue.
5. **Reporting** — all read values are printed from the queue, followed by a final `error_count` / `correct_count` summary, then simulation stops (`$stop`).

Pass/fail per transaction is printed live to the console (`***test case passed***` / `***test case failed***`).

## Prerequisites

- Siemens **QuestaSim** or **ModelSim** (with SystemVerilog and coverage support)
- A shell/console with `vsim`, `vlog`, and `vlib` on the `PATH`

## Running the Simulation

From the project directory:

```tcl
vlib work
vlog RAM_P.sv +cover -covercells
vlog RAM.sv RAM_TB.sv +cover -covercells
vsim -voptargs=+acc work.RAM_TB -cover
do wave.do
coverage save RAM_TB.ucdb -onexit
run -all
```

Or simply source the provided script from within QuestaSim/ModelSim:

```tcl
do run_do.tcl
```

This will:
- Compile the package, RTL, and testbench with code coverage instrumentation enabled
- Launch simulation with access visibility for coverage/debug
- Load the preconfigured waveform view (`wave.do`)
- Run to completion and save the coverage database to `RAM_TB.ucdb` on exit

### Viewing Results

- **Console output** — per-transaction pass/fail messages and the final error/correct summary
- **Waveforms** — automatically loaded from `wave.do`, showing `clk`, `write`, `read`, `data_in`, `address`, `data_out`, and live `error_count` / `correct_count`
- **Coverage** — saved to `RAM_TB.ucdb` via `coverage save RAM_TB.ucdb -onexit` in `run_do.tcl`, viewable in QuestaSim's coverage viewer.
