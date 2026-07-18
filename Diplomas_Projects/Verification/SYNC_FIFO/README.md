# Synchronous FIFO — SystemVerilog Design & Verification Environment

A parameterized synchronous FIFO (`FIFO.sv`) with status flags (`full`, `empty`, `almostfull`, `almostempty`, `overflow`, `underflow`, `wr_ack`), verified through an interface-based, class-driven testbench with a queue-based reference model, functional coverage, and SystemVerilog Assertions (SVA).

## Design — `FIFO.sv`

The DUT connects to the rest of the environment purely through the `fifo_if.DUT` modport (`module FIFO(fifo_if.DUT f_if);`), so all of its ports are interface signals.

**Internal storage**
- `mem [f_if.FIFO_DEPTH-1:0]` — the FIFO storage array, `f_if.FIFO_WIDTH` bits wide per entry
- `wr_ptr`, `rd_ptr` — write/read pointers, `$clog2(f_if.FIFO_DEPTH)` bits wide
- `count` — current occupancy, one bit wider than the pointers

**Behavior** — three synchronous `always` blocks, all sensitive to `posedge f_if.clk or negedge f_if.rst_n`:

1. **Write block** — on reset, clears `wr_ptr`, `overflow`, and `wr_ack`. Otherwise, if `wr_en` is asserted and `count < FIFO_DEPTH`, writes `data_in` into `mem[wr_ptr]`, asserts `wr_ack`, and increments `wr_ptr`. In the `else` branch, `wr_ack` is deasserted, and `overflow` is asserted only when `full && wr_en`.
2. **Read block** — on reset, clears `rd_ptr`, `data_out`, and `underflow`. Otherwise, if `rd_en` is asserted and `count != 0`, reads `mem[rd_ptr]` into `data_out` and increments `rd_ptr`. In the `else` branch, `underflow` is asserted only when `empty && rd_en`.
3. **Count block** — on reset, clears `count`. Otherwise, `count` is incremented on `{wr_en,rd_en} == 2'b10 && !full`, incremented on `{wr_en,rd_en} == 2'b11 && empty`, decremented on `{wr_en,rd_en} == 2'b01 && !empty`, and decremented on `{wr_en,rd_en} == 2'b11 && full`.

**Combinational flag outputs:**
```systemverilog
f_if.full        = (count == FIFO_DEPTH)     ? 1 : 0;
f_if.empty       = (count == 0)              ? 1 : 0;
f_if.almostfull  = (count == FIFO_DEPTH - 1) ? 1 : 0;
f_if.almostempty = (count == 1)              ? 1 : 0;
```

**Assertions (inside `` `ifdef SIM``)**
- `o_1` — a final reset assertion checking that `count`, `rd_ptr`, `wr_ptr`, `underflow`, `overflow`, `wr_ack`, and `full` are all 0 and `empty` is 1 whenever `rst_n == 0`.
- `a1`/`c1` – write acknowledge follows a non-full write.
- `a2`/`c2` – overflow follows a write while full.
- `a3`/`c3` – underflow follows a read while empty.
- `a4`/`c4` – `count == 0` implies `empty`.
- `a5`/`c5` – `count == FIFO_DEPTH` implies `full`.
- `a6`/`c6` – `count == FIFO_DEPTH - 1` implies `almostfull`.
- `a7`/`c7` – `count == 1` implies `almostempty`.
- `a8`/`c8` – write-pointer wraparound from index 7 back to 0.
- `a9`/`c9` – read-pointer wraparound from index 7 back to 0.

## Interface — `fifo_if.sv`

```systemverilog
interface fifo_if (clk);
  parameter FIFO_WIDTH = 16;
  parameter FIFO_DEPTH = 8;
  ...
endinterface
```

Three modports are defined:
- **`DUT`** — inputs `clk, rst_n, wr_en, rd_en, data_in`; outputs `data_out, wr_ack, overflow, full, empty, almostfull, almostempty, underflow`
- **`TEST`** — outputs `rst_n, wr_en, rd_en, data_in`; inputs `data_out, wr_ack, overflow, full, empty, almostfull, almostempty, underflow, clk`
- **`MONITOR`** — inputs all signals (read-only view for the monitor)

## Verification Environment

| File | Role |
|---|---|
| `shared_pkg.sv` | Global parameters (`FIFO_WIDTH=16`, `FIFO_DEPTH=8`, `ADDR_SIZE=3`), the `test_finished` flag, the `ev` event, and the `error_count` / `correct_count` counters shared across the environment |
| `FIFO_transaction_pkg.sv` | `FIFO_transaction` class: randomizable `data_in`, `rst_n`, `wr_en`, `rd_en`, plus response fields (`data_out`, `wr_ack`, `overflow`, `full`, `empty`, `almostfull`, `almostempty`, `underflow`). Constructor takes `RD_EN_ON_DIST` (default 30) and `WR_EN_ON_DIST` (default 70) to weight the `dist` constraints on `rd_en`/`wr_en`; `rst_n` is constrained to be 1 99% of the time |
| `FIFO_scoreboard_pkg.sv` | `FIFO_scoreboard` class: a queue-based `reference_model()` function that mirrors the FIFO's push/pop behavior (including the simultaneous wr_en+rd_en case) into `mem_ref`, and a `check_data()` task that compares DUT `data_out` against the model's `data_out_ref`, incrementing `error_count`/`correct_count` and printing `PASSED`/`ERROR` messages |
| `FIFO_coverage_pkg.sv` | `FIFO_coverage` class: covergroup `fifo_cg` with coverpoints on `wr_en`, `rd_en`, `wr_ack`, `full`, `overflow`, `empty`, `almostempty`, `almostfull`, `underflow`, plus cross coverage groups `c1`–`c7` (each crossing `WR_EN`/`RD_EN` with one status signal, with some combinations marked `illegal_bins`) |
| `FIFO_tb.sv` | Driver module (`fifo_if.TEST`): `assert_reset()` task pulses `rst_n`; the main `initial` block randomizes a `FIFO_transaction` for 20,000 iterations, drives `rst_n`, `data_in`, `rd_en`, `wr_en` onto the interface each cycle at `negedge f_if.clk`, and triggers the `ev` event; sets `test_finished` at the end |
| `monitor.sv` | Monitor module (`fifo_if.MONITOR`): on every `ev` + `negedge f_if.clk`, samples all interface signals into a `FIFO_transaction`, then forks the coverage sampler (`cov.sampled_data`) and the scoreboard checker (`scr_b.check_data`) to run together; when `test_finished` is set, prints the final error/correct counts and calls `$stop` |
| `fifo_top.sv` | Top-level module: generates `clk` (`forever #1 clk=~clk`), instantiates `fifo_if`, `FIFO` (dut), `FIFO_tb` (tb), and `monitor` (mon); also contains a top-level final reset assertion `o_1` checking `dut.count`, `dut.rd_ptr`, `dut.wr_ptr`, and the flag outputs while `rst_n == 0` |

## Verification Plan

From `Roaa_Atef_SYNC_FIFO.pdf`:

| Design Requirement | Stimulus Generation | Functional Coverage | Functionality Check (Assertions) |
|---|---|---|---|
| Reset must clear FIFO (wr_ptr=0, rd_ptr=0, count=0) | Apply async reset (rst_n=0 → 1) | Coverpoint for reset sequence | reset |
| Write acknowledge when wr_en=1 and FIFO not full | Drive wr_en=1 while full=0 | Write_Acknowledge_cover | Write_Acknowledge |
| Overflow flag when wr_en=1 and FIFO full | Fill FIFO to full, then drive wr_en=1 | Write_overflow_cover | Write_overflow |
| Underflow flag when rd_en=1 and FIFO empty | Empty FIFO, then drive rd_en=1 | Write_Underflow_cover | Write_Underflow |
| Empty flag asserted when count=0 | Drain FIFO completely | Empty_cover | Empty |
| Full flag asserted when count=FIFO_DEPTH | Fill FIFO completely | full_cover | full |
| Almost full flag when count=FIFO_DEPTH-1 | Drive writes until 1 slot remains | almostfull_cover | almostfull |
| Almost empty flag when count=1 | Drain FIFO until 1 element remains | almostempty_cover | almostempty |
| Write pointer wraps at max address | Continuously write until pointer rolls over | Pointer_Wraparound_W_cover | Pointer_Wraparound_W |
| Read pointer wraps at max address | Continuously read until pointer rolls over | Pointer_Wraparound_R_cover | Pointer_Wraparound_R |

## Prerequisites

- Siemens **QuestaSim** or **ModelSim** (with SystemVerilog, assertion, and coverage support)
- A shell/console with `vsim`, `vlog`, and `vlib` on the `PATH`

## Running the Simulation

Compile order is listed in `src_files_list.txt`:
```
shared_pkg.sv
FIFO.sv
fifo_if.sv
FIFO_transaction_pkg.sv
FIFO_scoreboard_pkg.sv
FIFO_coverage_pkg.sv
FIFO_tb.sv
monitor.sv
fifo_top.sv
```

`run.do` drives the full flow:
```tcl
vlib work
vlog -f src_files.list.txt  +define+SIM +cover -covercells 

vsim   -voptargs=+acc work.fifo_top -classdebug -uvmcontrol=all -cover
#add wave /fifo_top/f_if/*
run 0 
do wave.do
coverage save fifo_top.ucdb -onexit 
run -all
```

This compiles all sources with the `SIM` macro defined (enabling the `` `ifdef SIM`` assertion/cover blocks in `FIFO.sv`) and coverage instrumentation, elaborates `fifo_top`, loads the waveform setup from `wave.do`, runs the 20,000-transaction randomized test, and saves the coverage database to `fifo_top.ucdb` on exit.

### Viewing Results

- **Console output** — `PASSED`/`ERROR` messages per transaction from `FIFO_scoreboard::check_data`, and a final `error count value is : <n> & correct count value is : <n>` summary from `monitor.sv`
- **Waveforms** — `wave.do` adds all `fifo_if` signals, the FIFO's internal `mem`, `wr_ptr`, `rd_ptr`, `count`, and the scoreboard's `data_out_ref` to the Wave window
- **Coverage** — saved to `fifo_top.ucdb`, covering assertions (`a1`–`a9`, `o_1`), cover directives (`c1`–`c9`), statement/branch/toggle coverage on the DUT, and the `fifo_cg` covergroup (coverpoints + cross coverage) in `FIFO_coverage_pkg`
