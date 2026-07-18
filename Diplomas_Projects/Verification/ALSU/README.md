# ALSU — Arithmetic/Logic/Shift Unit (SystemVerilog)

A registered, multi-function ALSU (`ALSU.sv`) supporting bitwise OR/XOR (with optional reduction), addition (with optional carry-in), multiplication, and serial shift/rotate, with invalid-opcode detection and an LED error indicator. Verified by a class-based, constrained-random testbench (`ALSU_TB.sv`) with a golden-model checker and a functional covergroup (`ALSU_P.sv`).

## Design — `ALSU.sv`

```systemverilog
module ALSU(A, B, cin, serial_in, red_op_A, red_op_B, opcode, bypass_A, bypass_B, clk, rst, direction, leds, out);
parameter INPUT_PRIORITY = "A";
parameter FULL_ADDER = "ON";
```

**Ports**

| Port | Direction | Width | Description |
|---|---|---|---|
| `clk` | input | 1 | Clock |
| `rst` | input | 1 | Asynchronous, active-high reset |
| `A`, `B` | input | signed [2:0] | Operands |
| `cin` | input | 1 | Carry-in for addition |
| `opcode` | input | [2:0] | Operation select |
| `red_op_A`, `red_op_B` | input | 1 | Reduction-operator select for `A`/`B` (bitwise ops) |
| `bypass_A`, `bypass_B` | input | 1 | Pass `A`/`B` straight through to `out` |
| `direction` | input | 1 | Shift/rotate direction |
| `serial_in` | input | 1 | Serial bit shifted in during shift operations |
| `leds` | output reg | [15:0] | Error indicator — toggles while an invalid condition is registered |
| `out` | output reg | signed [5:0] | ALSU result |

**Internal registers:** `red_op_A_reg`, `red_op_B_reg`, `bypass_A_reg`, `bypass_B_reg`, `direction_reg`, `serial_in_reg`, `cin_reg[1:0]`, `opcode_reg[2:0]`, `A_reg`/`B_reg` (signed [2:0]) — registered copies of every input, updated in the first `always` block.

**Invalid-condition detection (combinational):**
```systemverilog
invalid_red_op = (red_op_A_reg || red_op_B_reg) & (opcode_reg[1] || opcode_reg[2]);
invalid_opcode = opcode_reg[1] & opcode_reg[2];
invalid        = invalid_red_op || invalid_opcode;
```

**Behavior — three `always @(posedge clk or posedge rst)` blocks:**

1. **Input registration** — on reset, clears all `*_reg` signals; otherwise latches `cin`, `red_op_A/B`, `bypass_A/B`, `direction`, `serial_in`, `opcode`, `A`, `B` every cycle.
2. **`leds`** — on reset, `leds <= 0`. Otherwise, `leds <= ~leds` when `invalid`, else `leds <= 0`.
3. **`out`** — on reset, `out <= 0`. Otherwise:
   - `bypass_A_reg && bypass_B_reg` → `out <= (INPUT_PRIORITY=="A") ? A_reg : B_reg`
   - `bypass_A_reg` → `out <= A_reg`
   - `bypass_B_reg` → `out <= B_reg`
   - `invalid` → `out <= 0`
   - else, `case (opcode_reg)`:
     - `3'h0` (OR) — `red_op_A_reg && red_op_B_reg` → priority-selected reduction-OR of `A_reg`/`B_reg`; `red_op_A_reg` alone → `|A_reg`; `red_op_B_reg` alone → `|B_reg`; else `A_reg | B_reg`
     - `3'h1` (XOR) — same pattern with `^` (reduction-XOR / bitwise XOR)
     - `3'h2` (ADD) — `A_reg + B_reg + cin_reg` if `FULL_ADDER=="ON"`, else `A_reg + B_reg`
     - `3'h3` (MULT) — `A_reg * B_reg`
     - `3'h4` (SHIFT) — `direction_reg` ? `{out[4:0], serial_in_reg}` (shift left, serial in at LSB) : `{serial_in_reg, out[5:1]}` (shift right, serial in at MSB)
     - `3'h5` (ROTATE) — `direction_reg` ? `{out[4:0], out[5]}` (rotate left) : `{out[0], out[5:1]}` (rotate right)
   - opcodes `3'h6`/`3'h7` are never reached by the `case`, since both set `opcode_reg[1]` and `opcode_reg[2]`, which `invalid_opcode` already catches.

## Package — `ALSU_P.sv`

```systemverilog
package ALSU_P;
  parameter INPUT_PRIORITY="A";
  parameter FULL_ADDER="ON";
  parameter MAXPOS=3;
  parameter MAXNEG=-4;
  typedef enum {OR,XOR,ADD,MULT,SHIFT,ROTATE,INVALID_6,INVALID_7} OP_CODE;
```

**`ALSU_CLASS`** — the randomized stimulus object:

- Randomized fields: `rst`, `A`/`B` (signed [2:0]), `op_code` (`OP_CODE`), `cin`, `serial_in`, `direction`, `red_op_a`, `red_op_b`, `bypass_a`, `bypass_b`, and `array[6]` (an `OP_CODE` array).
- **Constraints:**
  - `RST` — `rst` is 1 only 1% of the time (`dist {0:=99, 1:=1}`)
  - `OP` — `op_code dist {OR:=30, XOR:=10, [ADD:ROTATE]:/45, [INVALID_6:INVALID_7]:/5}`
  - `A_B` — when `op_code` is `ADD`/`MULT`, `A` and `B` are weighted toward `MAXNEG`, `MAXPOS`, and `0`; when `op_code` is `OR`/`XOR` and `red_op_a` (or `red_op_b`) is set, the corresponding operand is weighted toward walking-one patterns (`3'b001`, `3'b010`, `3'b100`) while the other operand is forced to `0`
  - `red_op_A`/`red_op_B` — `red_op_a`/`red_op_b` are 1 95% of the time
  - `bypass_A`/`bypass_B` — `bypass_a`/`bypass_b` are 1 only 5% of the time
  - `X` — constrains `array[6]` to a fixed unique operation sequence: `array[0]==OR`, and each subsequent element is forced via implication to follow `OR → XOR → ADD → MULT → SHIFT → ROTATE`, excluding `INVALID_6`/`INVALID_7`

**`alsu_cg` covergroup** (embedded in `ALSU_CLASS`):

- `A_cp1`/`B_cp1` — coverpoints on `A`/`B` with bins for `0`, `MAXPOS`, `MAXNEG`, and a default bin
- `A_cp2` (`iff(red_op_a)`) / `B_cp2` (`iff(!red_op_a & red_op_b)`) — walking-one bins (`3'b001`, `3'b010`, `3'b100`) on `A`/`B`
- `ALU_cp` — coverpoint on `op_code`. `Bins_shift[]`, `Bins_arith[]`, and `Bins_bitwise[]` use the `[]` array-bin syntax, so each auto-expands into one separate bin per value (i.e. `SHIFT` and `ROTATE` get distinct bins, likewise `ADD`/`MULT` and `OR`/`XOR`); `Bins_invalid = {INVALID_6,INVALID_7}` (no `[]`) is a single combined bin covering either invalid value; plus a transition bin `Bins_trans = (OR=>XOR=>ADD=>MULT=>SHIFT=>ROTATE)`
- `c_cp`, `direction_cp`, `serial_cp`, `reda_cp`, `redb_cp` — 0/1 coverpoints on `cin`, `direction`, `serial_in`, `red_op_a`, `red_op_b`
- Cross coverage:
  - `c1_cs` (`B_cp1` × `ALU_cp`) / `c2_cs` (`A_cp1` × `ALU_cp`) — `ADD`/`MULT` crossed with `B`/`A` at `0`, `MAXPOS`, or `MAXNEG`
  - `c3_cs` (`ALU_cp` × `c_cp`) — `ADD` crossed with each `cin` value
  - `c4_cs` (`ALU_cp` × `direction_cp`) — `SHIFT` and `ROTATE` each crossed with each `direction` value (two separate bins, `sh` and `r`)
  - `c5_cs` (`ALU_cp` × `serial_cp`) — `SHIFT` only, crossed with each `serial_in` value (one bin, `sh`; `ROTATE` is not crossed here)
  - `c6_cs` (`ALU_cp` × `reda_cp` × `A_cp2` × `B_cp1`) / `c7_cs` (`ALU_cp` × `redb_cp` × `B_cp2` × `A_cp1`) — bitwise ops (`OR`/`XOR`) with `red_op_a`/`red_op_b` asserted, the reduced operand at a walking-one value, and the other operand at `0`
  - `c8_cs` (`ALU_cp` × `redb_cp` × `reda_cp`) — `SHIFT`/`ROTATE` and `ADD`/`MULT` each crossed with the four combinations of `red_op_a`/`red_op_b` where at least one is set (`a1`, `a2`, `b1`, `b2`, `ab1`, `ab2`)

## Testbench — `ALSU_TB.sv`

```systemverilog
import ALSU_P::*;
module ALSU_TB();
ALSU #(.INPUT_PRIORITY(INPUT_PRIORITY),.FULL_ADDER(FULL_ADDER)) alsu_dut (...);
```

- Instantiates the DUT with the package's `INPUT_PRIORITY`/`FULL_ADDER` parameters and generates `clk` (`forever #1 clk=~clk`).
- Declares an `ALSU_CLASS` handle `ALSU_OBJECT`.
- **Covergroup gating:** `always @(rst||bypass_A||bypass_B)` calls `ALSU_OBJECT.alsu_cg.stop()`; `always @(!(rst||bypass_A||bypass_B))` calls `.start()` — so sampling is paused while `rst`, `bypass_A`, or `bypass_B` is active.
- **`initial` block:**
  1. Constructs `ALSU_OBJECT`, zeroes `error_count`, `correct_count`, `leds_expected`, `expected_out`, `opcode`, `counter_tests`.
  2. Calls `reset()` (prints `"test reset"`).
  3. **First loop (20,000 iterations):** disables the `X` array constraint (`ALSU_OBJECT.X.constraint_mode(0)`), randomizes `ALSU_OBJECT`, drives `rst`, `cin`, `serial_in`, `direction`, `red_op_A/B`, `bypass_A/B`, `opcode`, `A`, `B` from the randomized object, and calls `expected_result()` → `check_result()` → `expected_result()`.
  4. **Between loops:** disables all constraints (`ALSU_OBJECT.constraint_mode(0)`) and drives directed values `rst=0`, `bypass_A=0`, `bypass_B=0`, `red_op_A=0`, `red_op_B=0`.
  5. **Second loop (1,000 outer iterations, 6 inner iterations each):** re-enables only the `X` constraint, randomizes `ALSU_OBJECT`, drives `rst`, `cin`, `serial_in`, `direction`, `A`, `B`; the inner `for (j=0;j<6;j++)` loop sets both `opcode` and `ALSU_OBJECT.op_code` to `ALSU_OBJECT.array[j]` (the fixed `OR→XOR→ADD→MULT→SHIFT→ROTATE` sequence from the `X` constraint), calling `expected_result()` → `check_result()` → `expected_result()` each iteration.
  6. Prints the final `error_count`/`correct_count`, waits `#100`, and calls `$stop`.

**Tasks:**
- `reset` — drives `rst=1`, calls `check_result()`, then `rst=0`.
- `expected_result` — a combinational golden model mirroring `ALSU.sv`'s case logic (bypass, reduction OR/XOR, add/mult, shift/rotate) into `expected_out`, plus the expected `leds_expected` toggle-on-invalid behavior.
- `check_result` — waits `repeat(2) @(negedge clk)`, then:
  - if `rst`: checks `out==6'd0 && leds==0`
  - else: samples the covergroup (`ALSU_OBJECT.alsu_cg.sample()`) and checks `out==expected_out && leds==leds_expected`
  - on match: increments `correct_count` and prints a `"passed"` message (with full signal dump in the non-reset branch); on mismatch: increments `error_count`, prints a `"failed"` message, and calls `$stop`.

## Running the Simulation

`run_do.tcl`:
```tcl
vlib work
vlog   ALSU_P.sv +cover -covercells
vlog    ALSU.sv ALSU_TB.sv   +cover -covercells
vsim -voptargs=+acc work.ALSU_TB  -cover
#do wave.do
add wave *
coverage save ALSU_TB.ucdb -onexit 
run -all
coverage exclude -du ALSU -togglenode {cin_reg[1]}
```

This compiles the package and RTL/testbench with coverage instrumentation, elaborates `ALSU_TB`, adds all signals to the Wave window (`add wave *`; the `wave.do` load is commented out), runs both stimulus loops to completion, saves coverage to `ALSU_TB.ucdb`, and excludes toggle coverage on `cin_reg[1]` (the upper bit of the 2-bit `cin_reg`, which only ever receives the 1-bit `cin` in its LSB).

### Prerequisites

- Siemens **QuestaSim** or **ModelSim** (with SystemVerilog, coverage, and constrained-random support)
- A shell/console with `vsim`, `vlog`, and `vlib` on the `PATH`

### Other Files in This Upload

- `ALSU_TB.ucdb` — saved functional/code coverage database from a simulation run
- `vsim.wlf` — saved waveform log file (WLF) from a simulation run
- `ALSU_cr.mti`, `ALSU.mpf`, `ALSU.mpf_new` — QuestaSim/ModelSim project metadata files
- `fcover_report.txt` — empty
- `al`, `alle`, `alse`, `alsu` — plain-text `coverage report` dumps (branch, cross, and covergroup coverage for `/ALSU_TB/alsu_dut`), appearing to be repeated/partial saves of the same report
