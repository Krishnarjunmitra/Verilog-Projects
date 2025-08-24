# Verilog HDL Style Guide

## 📌 Naming Conventions
- **Modules:** snake_case → `half_adder`
- **Signals:** `lowercase_with_underscores`
- **Ports:** PascalCase → `InputA, CarryOut`
- **Parameters:** ALL_CAPS → `PARAMETER_NAME`
- **Testbenches:** suffix or <module_name> `_tb` → `half_adder_tb`

## 📌 File Organization
- One module per file
- Testbench in a separate file
- Use `timescale 1ns/1ps` at top of each file

## 📌 Indentation & Formatting
- 4 spaces per indent
- Align ports vertically
- Use inline comments for signals

## 📌 Simulation Rules
- Always end with `$finish;`
- Use `$monitor` or `$display` for truth tables
- Keep simulation time minimal (stop after test sequence)
