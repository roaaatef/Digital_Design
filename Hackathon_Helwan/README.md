# PWM Timer IP Core with Wishbone Interface

A synthesizable **Verilog HDL** implementation of a configurable **PWM (Pulse Width Modulation) Timer IP Core** featuring a **Wishbone-compliant slave interface**, programmable clock division, selectable clock source, and comprehensive simulation testbench.

This project demonstrates RTL design principles commonly used in FPGA and ASIC development, including modular architecture, register-mapped peripherals, and bus-based communication.

---

## Features

- Wishbone Slave Interface
- Configurable PWM Generator
- Timer Operating Mode
- Programmable Duty Cycle
- Programmable PWM Period
- Programmable Clock Divider
- Internal or External Clock Selection
- Software Reset Support
- Interrupt Flag Generation
- Modular RTL Design
- Self-contained Simulation Testbench

---

## Project Structure

```
├── PWM_Timer_TOP.v         # Top-level integration module
├── PWM_Timer.v             # PWM and Timer core
├── Wishbone_interface.v    # Wishbone slave interface
├── Clock_Divider.v         # Programmable clock divider
├── clock_selection.v       # Clock source selection logic
├── PWM_Timer_TOP_tb.v      # Testbench
├── run.do                  # ModelSim/Questa simulation script
```

---

## Architecture

```
                +---------------------------+
                |     Wishbone Master       |
                +------------+--------------+
                             |
                             v
                 +-------------------------+
                 | Wishbone Slave Interface|
                 +-----------+-------------+
                             |
               Control & Configuration Registers
                             |
        +--------------------+--------------------+
        |                                         |
        v                                         v
+-------------------+                  +------------------+
| Clock Management  |                  | PWM Timer Engine |
|                   |                  |                  |
| Clock Selection   |                  | PWM Generation   |
| Clock Divider     |                  | Timer Operation  |
+---------+---------+                  +---------+--------+
          |                                       |
          +-------------------+-------------------+
                              |
                              v
                         PWM Output
```

---

## Register Map

| Address | Register | Description |
|---------:|----------|-------------|
| 0x0000 | CTRL | Control register |
| 0x0002 | DIVISOR | Clock divider value |
| 0x0004 | PERIOD | PWM period |
| 0x0006 | DUTY CYCLE | PWM duty cycle |

---

## Control Register

The control register configures the operating mode and peripheral behavior.

Typical functions include:

- Enable PWM
- Enable Timer
- One-shot/continuous operation
- Clock source selection
- External duty-cycle selection
- Interrupt control
- Software reset

---

## Simulation

The project includes a complete testbench and ModelSim/Questa simulation script.

### Run Simulation

```tcl
do run.do
```

or manually compile:

```text
vlog *.v
vsim PWM_Timer_TOP_tb
run -all
```

---

## Design Highlights

- Fully synthesizable RTL
- Modular and reusable architecture
- Register-mapped peripheral
- Wishbone-compatible communication
- Parameterizable clock generation
- Supports both internal and external control inputs
- Suitable for FPGA and ASIC design flows

---

## Tools

- Verilog HDL
- ModelSim / QuestaSim
- FPGA/ASIC RTL Design Flow

---

## Applications

- FPGA-based embedded systems
- Digital control systems
- Motor speed control
- LED dimming
- Signal generation
- SoC peripheral development
- ASIC IP integration

---

## Future Improvements

- APB/AHB bus support
- AXI-Lite interface
- Configurable register widths
- Programmable prescaler
- Capture/Compare functionality
- UVM verification environment
- Functional coverage and assertions

---

## Author

**Roaa Atef**

Electronics and Electrical Communications Engineer

Interested in Digital IC Design, ASIC Design, FPGA Development, and Digital Verification.

---

## License

This project is provided for educational and research purposes.
