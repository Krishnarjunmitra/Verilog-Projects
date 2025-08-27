# <center><b>4-to-1 Multiplexer (MUX) – Project Report</b></center>

## <b>1. Introduction</b>

<p align="justify">
A 4-to-1 Multiplexer (MUX) is a combinational digital circuit that selects one of four input lines and forwards it to a single output line based on the values of two select lines. It is widely used in digital systems for data routing, resource sharing, and logic function implementation. This project focuses on designing a 4-to-1 MUX using Verilog HDL, simulating its behavior, and verifying results.
</p>

<b>Applications:</b>

<ul>
  <li>Data routing in processors and memory systems</li>
  <li>Implementing logic functions efficiently</li>
  <li>Resource sharing in digital circuits</li>
</ul>

---

## <b>2. Design Methodology</b>

<p align="justify">
The 4-to-1 Multiplexer selects one input from four data inputs (D0, D1, D2, D3) based on two select lines (S1, S0). The output is defined by the following Boolean equation:
</p>

<div align="center">
<b>Y = D0·S1'·S0' + D1·S1'·S0 + D2·S1·S0' + D3·S1·S0</b>
</div>

<p align="justify">
For this project:
</p>

<ul>
  <li><code>mux_4to1.v</code>: RTL module implementing the 4-to-1 Multiplexer</li>
  <li><code>mux_4to1_tb.v</code>: Testbench for exhaustive verification</li>
</ul>

---

## <b>3. Simulation Setup</b>

<b>Tools Used:</b>

<ul>
  <li>Vivado (for RTL design and simulation)</li>
  <li>GTKWave (optional, for waveform analysis via .vcd files)</li>
</ul>

<b>Testbench Description:</b>

<p align="justify">
The testbench applies all 16 input combinations of the four data lines (D0–D3) along with the two select lines (S1, S0). The output (Y) is verified against expected values, and simulation waveforms are captured for documentation.
</p>

---

## <b>4. Results</b>

### ✔️ Example Truth Table (4-to-1 MUX)

<div align="center">
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>S1</th>
      <th>S0</th>
      <th>D0</th>
      <th>D1</th>
      <th>D2</th>
      <th>D3</th>
      <th>Y</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
  </tbody>
</table>
</div>

---

### 🖼️ RTL Schematic

<div align="center">
<b>4-to-1 MUX RTL Schematic</b> <br>
<img src="../sim/mux_4to1_schematic.png" alt="4-to-1 MUX RTL Schematic" width="90%"/>
</div>

---

### 📈 Simulation Waveform

<div align="center">
<b>4-to-1 MUX Simulation Waveform</b> <br>
<img src="../sim/waveform.png" alt="4-to-1 MUX Simulation Waveform" width="90%"/>
</div>

---

## <b>5. Conclusion</b>

<p align="justify">
The 4-to-1 Multiplexer was successfully implemented and verified using Verilog. Simulation outputs matched the expected values for all select line combinations, demonstrating correct functionality. The design can be extended to N-to-1 multiplexers by scaling the inputs and select lines.
</p>

<b>Future Work:</b>

<ul>
  <li>Implement an 8-to-1 or 16-to-1 Multiplexer</li>
  <li>Integrate the MUX in ALU or data routing modules</li>
  <li>Perform FPGA synthesis and timing analysis</li>
</ul>

<br>
<hr>
<br>
<p align="center">
  <b>Keep Learning</b><br>
  <b>Thank You</b>
</p>
<br>
