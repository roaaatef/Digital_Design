# Spartan6 DSP48A1

A parameterizable, pipelined DSP arithmetic slice modeled after the Xilinx **DSP48** architecture, implemented in synthesizable Verilog and verified with a self-checking testbench in QuestaSim/ModelSim.

The design implements a 18×18 multiplier feeding a 48-bit adder/subtractor ALU, with fully optional pipeline registers on every port, synchronous or asynchronous reset selection, and cascade ports (`PCIN`/`PCOUT`, `BCIN`/`BCOUT`) for chaining multiple slices together — the same pattern used to build FIR filters, FFTs, and other DSP datapaths out of discrete DSP48 primitives.

## Features

- **18×18 multiplier** (`A × B`, unsigned in this RTL — no `signed` declarations are present in the source) feeding a 48-bit three-input adder/subtractor (`X + Z ± CARRYIN`)
- **Fully pipelined datapath** — every operand (`A`, `B`, `C`, `D`, `M`, `P`, `CARRYIN`, `OPMODE`) has an independent, individually clock-enabled pipeline register, each toggleable via a `*REG` parameter
- **Selectable reset style** — `RSTTYPE` parameter switches every register between synchronous and asynchronous reset, backed by two interchangeable register primitives (`reg_plus_mux` / `reg_plus_mux_asy`)
- **OPMODE-driven ALU control**, mirroring DSP48 semantics:
  - `OPMODE[1:0]` — X-mux select: `0`, `M` (multiplier result), `P` (feedback), or `{D,A,B}` (concatenation)
  - `OPMODE[3:2]` — Z-mux select: `0`, `PCIN` (cascade in), `P` (feedback), or `C`
  - `OPMODE[4]` — pre-adder bypass select (`B` vs. `B±D`)
  - `OPMODE[5]` — carry-in select
  - `OPMODE[6]` — pre-adder add/subtract select (`B+D` vs. `D−B`)
  - `OPMODE[7]` — main ALU add/subtract select
- **Cascade support** for building wide/deep arithmetic chains: `PCIN`/`PCOUT` (48-bit accumulator cascade) and `BCIN`/`BCOUT` (18-bit operand cascade)
- **Selectable B-input source** — `B_INPUT` parameter chooses between a direct external `B` operand or a cascaded `BCIN` operand
- **Self-checking testbench** exercising add/subtract combinations on both the pre-adder and main ALU, feedback (`P`) reuse, carry-in injection, cascade input, and the X/Z mux select paths, with pass/fail reporting per test case

## Architecture

This module is a behavioral Verilog implementation of the DSP48A1 slice, matching the functional block diagram published in Xilinx **UG389 — Spartan-6 FPGA DSP48A1 Slice User Guide**. Every stage in the diagram maps directly onto the RTL:

| Diagram block | RTL signal / construct |
|---|---|
| D REG, B0 REG, A0 REG, C REG, B1 REG, A1 REG, M REG, P REG | `reg_plus_mux` instances (`reg_d`, `reg_b`, `reg_a`, `reg_c`, `reg_b1`, `reg_a1`, `reg_m`, `reg_p`) |
| Pre-Adder/Subtracter (`opmode[6]`) | `B_D_ADD_SUB = (OPMODE_reg[6] ? D_reg - B_reg : B_reg + D_reg)` |
| B-path bypass mux (`opmode[4]`) | `op_mode_4_mux` |
| Multiplier | `MUL = B_reg2 * A_reg2` |
| X mux (`opmode[1:0]`) | `MUX_x` case statement — `0`, `M`, `P`, or `{D,A,B}` |
| Z mux (`opmode[3:2]`) | `MUX_z` case statement — `0`, `PCIN`, `P`, or `C` |
| CYI carry-in mux (`opmode[5]`) | `CARRYIN_mux` |
| Post-Adder/Subtracter (`opmode[7]`) + CYO carry cascade | `{cout, z_x_ADDER} = MUX_z ± (MUX_x + CARRYIN_reg)` |

> This mapping is based on the functional description in Xilinx **UG389** — refer to the official [UG389 datasheet](https://docs.amd.com/v/u/en-US/ug389) for the authoritative block diagram, timing, and electrical specification.

## Module Interface (`DSP`)

| Port | Width | Direction | Description |
|---|---|---|---|
| `A`, `B`, `D` | 18 | in | Multiplier and pre-adder operands |
| `C` | 48 | in | Z-mux operand |
| `CARRYIN` | 1 | in | External carry-in |
| `OPMODE` | 8 | in | ALU operation select (see above) |
| `CLK` | 1 | in | Clock |
| `CEA,CEB,CEC,CED,CEM,CEP,CEOPMODE,CECARRYIN` | 1 each | in | Per-register clock enables |
| `RSTA,RSTB,RSTC,RSTD,RSTM,RSTP,RSTOPMODE,RSTCARRYIN` | 1 each | in | Per-register resets |
| `PCIN` / `PCOUT` | 48 | in / out | Accumulator cascade in/out |
| `BCIN` / `BCOUT` | 18 | in / out | Operand cascade in/out |
| `M` | 36 | out | Registered multiplier result |
| `P` | 48 | out | Registered ALU result |
| `CARRYOUT`, `CARRYOUTF` | 1 | out | ALU carry-out (registered / fabric) |

### Key Parameters

| Parameter | Default | Options | Purpose |
|---|---|---|---|
| `A0REG`, `B0REG` | `0` | `0` / `1` | Enable/bypass the first-stage `A`/`B` pipeline register |
| `A1REG`, `B1REG`, `CREG`, `DREG`, `MREG`, `PREG`, `CARRYINREG`, `CARRYOUTREG`, `OPMODEREG` | `1` | `0` / `1` | Enable/bypass each pipeline stage |
| `CARRYINSEL` | `"OPMODE5"` | `"OPMODE5"` / direct `CARRYIN` | Carry-in source select — see note below |
| `B_INPUT` | `"DIRECT"` | `"DIRECT"` / `"CASCADE"` | `B` operand source |
| `RSTTYPE` | `"SYNC"` | `"SYNC"` / `"ASYNC"` | Reset style for all pipeline registers |

> **Known limitation:** the `CARRYINSEL != "OPMODE5"` branch compares the string parameter `CARRYINSEL` directly against the 1-bit `CARRYIN` net (`CARRYINSEL==CARRYIN`) rather than against a string literal. As written, this branch is effectively unreachable under normal use — only the `"OPMODE5"` path (`CARRYIN_mux = OPMODE_reg[5]`) is functional. Worth a fix if you need the direct-`CARRYIN` mode.

## Simulation

Designed for **QuestaSim / ModelSim** (tested with QuestaSim-64 2021.1).

```tcl
vlib work
vlog project_1.v reg+mux.v DSP_tb.v
vsim -voptargs=+acc work.DSP_tb
add wave *
run -all
```

Or simply run the included script from the QuestaSim console:

```tcl
do DSP_do.txt
```

The testbench applies a global reset, then drives the DSP through a sequence of directed tests covering:

1. Pre-adder add + main adder add
2. Pre-adder subtract + main adder add
3. Pre-adder add + main adder subtract
4. Pre-adder subtract + main adder subtract
5. Pre-adder bypass (`OPMODE[4]=0`)
6. Carry-in injection via `OPMODE[5]`
7. `P`-feedback reuse on the X-mux (`OPMODE[1:0]=10`) combined with `PCIN` on the Z-mux
8. Zero-select on both X-mux and Z-mux
9. `C`-operand select on Z-mux
10. Concatenation select (`{D,A,B}`) on X-mux

Each test computes an expected result in the testbench and compares it against `P`, printing `"success"` or `"error"` (with a `$stop`) accordingly.

## Requirements

- QuestaSim or ModelSim (any recent version supporting Verilog-2001 `generate` blocks)
- No external IP or vendor primitives required — fully behavioral, portable Verilog

## License

No license specified yet. Add a `LICENSE` file (e.g. MIT, Apache-2.0) if you intend to share or accept contributions to this repository.
