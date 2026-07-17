
# PWM Timer IP Core with Wishbone Interface

A synthesizable **Verilog HDL** implementation of a configurable **PWM/Timer IP Core** featuring a **Wishbone B4-compliant slave interface**, programmable clock division, selectable clock source, and a comprehensive QuestaSim testbench.

The peripheral can operate either as a **Pulse Width Modulation (PWM) generator** or as a **programmable timer**. All functionality is configured through memory-mapped registers accessible via the Wishbone interface, making the design suitable for FPGA and ASIC-based SoC applications.

---

## Features

- Wishbone B4 Slave Interface
- PWM Generation Mode
- Timer Mode with Interrupt Generation
- Runtime Programmable Period and Duty Cycle
- Internal or External Duty Cycle Source Selection
- Internal or External Clock Source Selection
- 16-bit Programmable Clock Divider
- Support for Odd and Even Clock Division Ratios
- Divider Bypass when Divisor = 0 or 1
- Software Reset Support
- Error Handling for Invalid Duty Cycle (DC ≥ Period)
- Modular RTL Architecture
- Comprehensive QuestaSim Verification Testbench

---

## Project Structure

```
.
├── PWM_Timer_TOP.v         # Top-level integration module
├── PWM_Timer.v             # PWM/Timer core
├── Wishbone_interface.v    # Wishbone B4 slave interface
├── Clock_Divider.v         # Programmable clock divider
├── clock_selection.v       # Clock source selection logic
├── PWM_Timer_TOP_tb.v      # Verification testbench
├── run.do                  # QuestaSim simulation script
└── README.md
```

---

## System Architecture

```
                     +---------------------------+
                     |     Wishbone Master       |
                     +------------+--------------+
                                  |
                                  v
                     +---------------------------+
                     | Wishbone Slave Interface  |
                     +------------+--------------+
                                  |
                  Configuration & Control Registers
                                  |
          +-----------------------+-----------------------+
          |                                               |
          v                                               v
 +----------------------+                   +---------------------------+
 |    Clock Control     |                   |      PWM / Timer Core     |
 |                      |                   |                           |
 | Clock Selection      |                   | 16-bit Main Counter       |
 | Clock Divider        |                   | PWM Generator             |
 +----------+-----------+                   | Timer Logic               |
            |                               | Interrupt Generation      |
            +---------------+---------------+---------------------------+
                            |
                            v
                         PWM Output
```

---

## Module Description

### PWM_Timer_TOP

The top-level module integrates all project components and connects the Wishbone interface, clock management logic, and PWM/Timer core.

Responsibilities:

- Instantiates all RTL modules
- Connects Wishbone registers to the PWM core
- Selects the operating clock
- Routes the selected clock through the clock divider
- Generates the final PWM output

---

### Wishbone Interface

Implements a Wishbone B4-compliant slave peripheral that provides software access to the PWM/Timer configuration registers.

Supported functionality:

- Register read operations
- Register write operations
- ACK generation
- Memory-mapped register interface
- Interrupt flag update from the PWM core

---

### Clock Selection

The design supports two clock sources:

- Internal Wishbone clock
- External clock input

Clock selection is controlled using **CTRL[0]**.

```
CTRL[0] = 0 → Internal Clock

CTRL[0] = 1 → External Clock
```

---

### Clock Divider

The programmable clock divider reduces the selected clock frequency before driving the PWM/Timer core.

Features include:

- 16-bit programmable divisor
- Odd division ratios
- Even division ratios
- Divider bypass when Divisor = 0 or 1

This enables low-frequency PWM generation while maintaining a high-frequency system clock.

---

### PWM/Timer Core

The PWM/Timer core contains:

- 16-bit main counter
- PWM generation logic
- Timer logic
- Interrupt generation
- Software reset
- Duty-cycle selection logic

---

## Register Map

| Address | Register | Width | Description |
|---------:|----------|------:|-------------|
| 0x0000 | CTRL | 8 bits | Operation control register |
| 0x0002 | DIVISOR | 16 bits | Clock divider value |
| 0x0004 | PERIOD | 16 bits | PWM period / Timer target |
| 0x0006 | DC | 16 bits | PWM duty cycle |

---

## Control Register

| Bit | Description |
|----:|-------------|
| 0 | Clock source selection (Internal / External) |
| 1 | Mode selection (PWM / Timer) |
| 2 | Counter enable |
| 3 | Timer continuous mode |
| 4 | PWM output enable |
| 5 | Timer interrupt flag |
| 6 | Duty-cycle source selection (Register / External Input) |
| 7 | Software reset |

---

## Operating Modes

### PWM Mode

When PWM mode is enabled, the module continuously generates a PWM waveform.

Features:

- Runtime programmable period
- Runtime programmable duty cycle
- Internal or external duty-cycle source
- Output enable control
- Counter enable control

The duty cycle is generated using either:

- The DC register
- The external `i_DC` input

depending on the configuration of **CTRL[6]**.

---

### Timer Mode

When Timer mode is selected, the main counter increments until it reaches the programmed PERIOD value.

Upon reaching the target value:

- An interrupt is generated
- The interrupt flag is asserted
- The output is driven high

The timer supports:

- One-shot operation
- Continuous operation

---

## Clock Division

The programmable divider operates before the PWM/Timer core.

Behavior:

| Divisor | Operation |
|---------:|-----------|
| 0 | Divider bypass |
| 1 | Divider bypass |
| >1 | Clock divided by divisor |

Both odd and even division ratios are supported.

---

## Error Handling

The implementation includes protection against invalid PWM configurations.

If

```
Duty Cycle ≥ Period
```

the PWM output is disabled and the internal counter is reset, preventing invalid waveform generation.

---

## Implemented Features

- Fully synthesizable RTL
- Modular and reusable architecture
- Wishbone B4-compatible peripheral
- Memory-mapped configuration registers
- PWM generation
- Timer mode
- Interrupt generation and clearing
- Internal/external clock selection
- Internal/external duty-cycle selection
- Programmable clock divider
- Software reset
- Invalid duty-cycle detection
- Support for runtime parameter updates

---

## Verification

A dedicated testbench (`PWM_Timer_TOP_tb.v`) verifies the following functionality:

- Wishbone register write transactions
- Wishbone register read transactions
- PWM generation with 50% duty cycle
- PWM generation with 25% duty cycle
- Timer mode operation
- Interrupt generation
- Interrupt clearing
- Clock divider operation
- Divider bypass (Divisor = 0)
- Clock division with different divisors
- Invalid duty cycle handling (DC > Period)
- Zero duty-cycle operation

Simulation is performed using the provided `run.do` script.

---

## Running the Simulation

Using QuestaSim:

```tcl
do run.do
```

Or manually:

```text
vlib work
vlog *.v
vsim PWM_Timer_TOP_tb
run -all
```

---

## Tools Used

- Verilog HDL
- QuestaSim / ModelSim
- Wishbone B4 Bus Protocol

---

## Applications

- FPGA-based Embedded Systems
- Digital Control Systems
- Motor Speed Control
- LED Dimming
- Signal Generation
- SoC Peripheral Development
- ASIC IP Integration

---

## Future Improvements

- Multi-channel PWM support
- APB interface
- AXI-Lite interface
- UVM verification environment
- Functional coverage
- Assertion-Based Verification (SVA)
- Configurable counter width

---

## Author

**Roaa Atef**

Electronics and Electrical Communications Engineer

**Areas of Interest**

- Digital IC Design
- Digital Verification
- FPGA Design
- ASIC Design

---

## License

This project is provided for educational and research purposes. 




