# <center><b>Ripple Carry Adder – Project Report</b></center>

## <b>1. Introduction</b>

<p align="justify">
The Ripple Carry Adder (RCA) is a fundamental digital circuit used to perform binary addition of multi-bit numbers. It is constructed by cascading multiple Full Adders, where the carry output of one stage is connected to the carry input of the next stage. Although it is simple in design, the RCA suffers from carry propagation delay, making it slower for large bit-widths. This project focuses on designing a 4-bit Ripple Carry Adder using Verilog HDL, simulating its behavior, and verifying results.
</p>

<b>Applications:</b>

<ul>
  <li>Binary addition in Arithmetic Logic Units (ALUs)</li>
  <li>Basic building block for more advanced adders (Carry Lookahead, Carry Select)</li>
  <li>Used in processors, DSPs, and digital systems</li>
</ul>

---

## <b>2. Design Methodology</b>

<p align="justify">
The Ripple Carry Adder is designed by chaining <b>n Full Adders</b> together. The logic equations for each Full Adder stage are:
</p>

---

### 🧮 4-bit RCA Bitwise Representation

<div align="center"> <table border="1" cellpadding="6" cellspacing="0"> <thead> <tr> <th></th> <th>c<sub>2</sub></th> <th>c<sub>1</sub></th> <th>c<sub>0</sub></th> </tr> </thead> <tbody> <tr> <td><b>A</b></td> <td>a<sub>3</sub></td> <td>a<sub>2</sub></td> <td>a<sub>1</sub></td> <td>a<sub>0</sub></td> </tr> <tr> <td><b>B</b></td> <td>b<sub>3</sub></td> <td>b<sub>2</sub></td> <td>b<sub>1</sub></td> <td>b<sub>0</sub></td> </tr> <tr> <td colspan="5"><hr></td> </tr> <tr> <td><b>SUM</b></td> <td>s<sub>3</sub></td> <td>s<sub>2</sub></td> <td>s<sub>1</sub></td> <td>s<sub>0</sub></td> </tr> <tr> <td><b>Carry-out</b></td> <td colspan="4" align="center">C<sub>out</sub></td> </tr> </tbody> </table> </div>

<div align="center">
<b>SUM<sub>i</sub> = A<sub>i</sub> ⊕ B<sub>i</sub> ⊕ C<sub>in</sub></b><br>
<b>CARRY<sub>i+1</sub> = A<sub>i</sub>·B<sub>i</sub> + (A<sub>i</sub> ⊕ B<sub>i</sub>)·C<sub>in</sub></b>
</div>

<p align="justify">
For a 4-bit RCA:
</p>

<ul>
  <li><code>full_adder.v</code>: RTL module for 1-bit Full Adder</li>
  <li><code>ripple_carry_adder.v</code>: RTL module for 4-bit RCA using Full Adders</li>
  <li><code>ripple_carry_adder_tb.v</code>: Testbench for exhaustive verification</li>
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
The testbench applies all 16×16 input combinations of two 4-bit operands (A and B) along with carry-in. Simulation results (SUM and Carry-out) are compared against expected values. Waveform and logs are saved for verification.
</p>

---

## <b>4. Results</b>

### ✔️ Example Truth Table (4-bit RCA)

<div align="center">
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>A</th>
      <th>B</th>
      <th>C<sub>in</sub></th>
      <th>SUM</th>
      <th>C<sub>out</sub></th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0000</td><td>0000</td><td>0</td><td>0000</td><td>0</td></tr>
    <tr><td>0001</td><td>0001</td><td>0</td><td>0010</td><td>0</td></tr>
    <tr><td>0101</td><td>0011</td><td>0</td><td>1000</td><td>0</td></tr>
    <tr><td>1111</td><td>0001</td><td>0</td><td>0000</td><td>1</td></tr>
    <tr><td>1111</td><td>1111</td><td>1</td><td>1111</td><td>1</td></tr>
  </tbody>
</table>
</div>

---
### 🧮 Worked Example (A=1011, B=0110, Cin=1)

<div align="center">

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th></th>
      <th>Bit 3</th>
      <th>Bit 2</th>
      <th>Bit 1</th>
      <th>Bit 0</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>Carry-in →</b></td>
      <td>c<sub>2</sub></td>
      <td>c<sub>1</sub></td>
      <td>c<sub>0</sub></td>
      <td>C<sub>in</sub></td>
    </tr>
    <tr>
      <td><b>A</b></td>
      <td>a<sub>3</sub>=1</td>
      <td>a<sub>2</sub>=0</td>
      <td>a<sub>1</sub>=1</td>
      <td>a<sub>0</sub>=1</td>
    </tr>
    <tr>
      <td><b>B</b></td>
      <td>b<sub>3</sub>=0</td>
      <td>b<sub>2</sub>=1</td>
      <td>b<sub>1</sub>=1</td>
      <td>b<sub>0</sub>=0</td>
    </tr>
    <tr>
      <td colspan="5"><hr></td>
    </tr>
    <tr>
      <td><b>SUM</b></td>
      <td>s<sub>3</sub>=0</td>
      <td>s<sub>2</sub>=0</td>
      <td>s<sub>1</sub>=1</td>
      <td>s<sub>0</sub>=0</td>
    </tr>
    <tr>
      <td><b>Final Carry-out</b></td>
      <td colspan="4" align="center">C<sub>out</sub> = 1</td>
    </tr>
  </tbody>
</table>

</div>

**Bitwise math (LSB→MSB):**
- Bit0: 1 ⊕ 0 ⊕ 1 → s₀=0, c₀=1  
- Bit1: 1 ⊕ 1 ⊕ c₀(=1) → s₁=1, c₁=1  
- Bit2: 0 ⊕ 1 ⊕ c₁(=1) → s₂=0, c₂=1  
- Bit3: 1 ⊕ 0 ⊕ c₂(=1) → s₃=0, C<sub>out</sub>=1

**Result:**  
1011₂ + 0110₂ + 1 = **1·0010₂** → **C<sub>out</sub>=1, SUM=0010**.

---

### 🖼️ RTL Schematic

<div align="center">
<img src="../sim/rca_schematic.png" alt="Ripple Carry Adder RTL Schematic" width="600"/>
</div>

---

### 📈 Simulation Waveform

<div align="center">
<img src="../sim/rca_waveform.png" alt="Ripple Carry Adder Simulation Waveform" width="700"/>
</div>

---

## <b>5. Conclusion</b>

<p align="justify">
The 4-bit Ripple Carry Adder was successfully designed and verified using Verilog. The simulation outputs matched the expected results, demonstrating correct functionality. Although simple and easy to implement, the RCA suffers from carry propagation delay, which limits its performance for larger bit-widths.
</p>

<b>Future Work:</b>

<ul>
  <li>Extend design to 8-bit and 16-bit adders</li>
  <li>Implement Carry Lookahead Adder (CLA) for improved speed</li>
  <li>Perform synthesis, place and route, and FPGA implementation</li>
</ul>

<br>
<hr>
<br>
<p align="center">
  <b>Keep Learning</b><br>
  <b>Thank You</b>
</p>
<br>
