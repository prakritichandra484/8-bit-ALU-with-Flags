# 8-bit ALU with Status Flags using Verilog (Vivado)

## Description
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
In addition to performing arithmetic and logical operations, the ALU generates
CPU-style status flags: Carry, Zero, Negative, and Overflow.

The design models a fundamental processor building block and demonstrates
signed and unsigned arithmetic handling using two’s complement logic.

---

## Supported Operations

| Opcode | Operation |
|------|----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT A |
| 110 | Shift Left |
| 111 | Shift Right |

---

## Status Flags

- **Carry (C):** Indicates unsigned carry out / borrow
- **Zero (Z):** Set when the result equals zero
- **Negative (N):** Reflects the MSB (sign bit) of the result
- **Overflow (V):** Indicates signed overflow in addition and subtraction

---

## Verification
The ALU functionality was verified using a directed Verilog testbench.
Behavioral simulation was performed in Xilinx Vivado, and waveform analysis
confirmed correct operation for arithmetic, logical, zero, negative, and
overflow cases.

---

## Tools Used
- Verilog HDL
- Xilinx Vivado (Behavioral Simulation)

---

## Author
**Prakriti Chandra**
