# <center><b>Half Adder – Project Report</center>


## <b>1. Introduction</b>

<p align="justify">
The Half Adder is a fundamental digital circuit used to perform binary addition of two single-bit inputs. It produces two outputs: <b>SUM</b> and <b>CARRY</b>. This project aims to design and verify a Half Adder using Verilog HDL, simulate its behavior, and document the results for academic and professional presentation.
</p>

<b>Applications:</b>
<ul>
  <li>Building blocks for Full Adders and ALUs</li>
  <li>Used in digital calculators and embedded processors</li>
  <li>Essential for understanding combinational logic design</li>
</ul>

---

## <b>2. Design Methodology</b>

<p align="justify">
The Half Adder logic is based on the following Boolean equations:
</p>

<div align="center">
<b>SUM = A ⊕ B</b><br>
<b>CARRY = A · B</b>
</div>

<p align="justify">
These equations are implemented in Verilog using bitwise operators. The design consists of:
</p>

<ul>
  <li><code>half_adder.v</code>: RTL module implementing the logic</li>
  <li><code>half_adder_tb.v</code>: Testbench to verify all input combinations</li>
</ul>

---

## <b>3. Simulation Setup</b>

<b>Tools Used:</b>
<ul>
  <li>Vivado (for RTL design and simulation)</li>
  <li>GTKWave (optional, for waveform viewing via .vcd)</li>
</ul>

<b>Testbench Description:</b>
<p align="justify">
The testbench applies all four possible input combinations (00, 01, 10, 11) and monitors the outputs. Simulation logs and waveform screenshots are saved for documentation.
</p>

---

## <b>4. Results</b>

### ✔️ Truth Table

<div align="center">
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>A</th>
      <th>B</th>
      <th>SUM</th>
      <th>CARRY</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>1</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>1</td></tr>
  </tbody>
</table>
</div>

---

### 🖼️ RTL Schematic

<div align="center">
<img src="../sim/half_adder_schematic.png" alt="Half Adder RTL Schematic" width="500"/>
</div>

---

### 📈 Simulation Waveform

<div align="center">
<img src="../sim/half_adder_waveform.png" alt="Half Adder Simulation Waveform" width="600"/>
</div>

---

## <b>5. Conclusion</b>

<p align="justify">
The Half Adder was successfully designed and verified using Verilog. Simulation results matched the expected truth table, confirming correct logical behavior. This project reinforces understanding of basic combinational logic and serves as a stepping stone toward more complex arithmetic circuits.
</p>

<b>Future Work:</b>
<ul>
  <li>Extend to Full Adder using two Half Adders and an OR gate</li>
  <li>Build multi-bit ripple carry adders</li>
  <li>Perform synthesis and timing analysis for FPGA implementation</li>
</ul>

<hr>
<br>
<p align="center">
  <b><font size="6">Keep Learning</font></b><br>
  <b><font size="5">Thank You</font></b>
</p>
<br>
