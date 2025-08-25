# 📂 <span style="font-size:1.5em;">Verilog-Projects</span>

<p align="center">
  <img src="https://img.shields.io/badge/VLSI%20Design-Verilog%20Projects-blueviolet?style=for-the-badge&logo=verilog"/>
  <br><br>
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square"/>
  <img src="https://img.shields.io/github/stars/Krishnarjunmitra/Verilog-Projects?style=social"/>
  <img src="https://img.shields.io/github/forks/Krishnarjunmitra/Verilog-Projects?style=social"/>
</p>

---

## 🧠 About the Repository

<table>
<tr>
<td width="75%" valign="top">

**Verilog-Projects** is a curated collection of RTL design and verification modules, ranging from **basic logic circuits** (Half Adder, Full Adder) to **advanced system-level blocks** (ALU, UART, RISC CPU).

This repository reflects a **professional VLSI design workflow**, including:

- ⚡ **RTL Design** (synthesizable Verilog HDL)  
- 🧪 **Testbenches** (functional verification)  
- 📊 **Simulation Outputs** (waveforms, truth tables)  
- 🏗️ **Synthesis Results** (schematics, timing reports)  
- 📚 **Documentation** (project reports, coding standards, reusable templates)  

It’s built to support both a **learning journey** and a **portfolio showcase** for aspiring VLSI engineers.

</td>
<td width="25%" valign="top">

### 📌 Quick Links
- [🎯 Objectives](#objectives)  
- [📁 Repository Structure](#repository-structure)  
- [🚀 Roadmap](#roadmap)  
- [💼 Target Audience](#target-audience)  
- [✨ Highlights](#highlights)  
- [👨‍💻 Author](#author)  
- [📜 License](#license)  

</td>
</tr>
</table>
---

## 🎯 Objectives

- Demonstrate a complete **RTL design flow**: Design → Testbench → Simulation → Synthesis → Documentation  
- Build a **modular IP library** for reuse in larger systems  
- Promote **industry-grade documentation practices**  
- Provide a **growth roadmap** from basic logic to processor-level design

---

## 📁 Repository Structure

```bash
Verilog-Projects/
│
├── projects_basic/                        # Foundational projects
│   ├── half_adder/
│   │   ├── src/                  # Verilog RTL files
│   │   │   └── half_adder.v
│   │   ├── tb/                   # Testbenches
│   │   │   └── half_adder_tb.v
│   │   ├── sim/                  # Simulation outputs
│   │   │   ├── half_adder_waveform.png
│   │   │   ├── half_adder_schematic.png
│   │   │   ├── tcl_console_output.txt
│   │   │   └── half_adder_truth_table.md
│   │   ├── docs/                 # Project-specific docs
│   │   │   └── Report.md
│   │   └── README.md             # Project summary
│   │
│   ├── full_adder/
│   ├── mux_4to1/
│   ├── ripple_carry_adder/
│   └── decoder_3to8/
│
├── projects_intermediate/                 # Medium-complexity projects
│   ├── alu_4bit/
│   ├── comparator/
│   └── counter/
│
├── projects_advanced/                     # System-level projects
│   ├── uart_tx_rx/
│   ├── fifo/
│   └── risc16_cpu/
│
├── docs/                         # Global documentation hub
│   ├── CONTRIBUTING.md
│   ├── CODE_OF_CONDUCT.md
│   ├── STYLE_GUIDE.md
│   └── README.md
│
├── templates/                    # Starter templates
│   ├── README_template.md
│   ├── Report_template.md
│   └── Testbench_template.v
│
├── LICENSE
├── CODEOWNERS
└── README.md                     # Main landing page
```

---

## 🚀 Roadmap


> What's Next:

✅ Full Adder (RTL + Testbench + Simulation + Docs)  
⬜ Ripple carry Adder (4-bit)

> Overview:
<div align="center"> 
  <table border="1" cellpadding="8" cellspacing="0"> 
    <thead> 
      <tr> <th>Project</th> <th>Status</th> <th>Folder Link</th> <th>Remarks</th> </tr> 
    </thead> 
    <tbody> 
      <tr> <td><b>Half Adder</b></td> <td>✅ Complete</td> <td><a href="./projects_basic/half_adder">📂 half_adder</a></td> <td>RTL + Testbench + Simulation + Docs</td> 
      </tr> 
      <tr> <td><b>Full Adder</b></td> <td>✅ Complete</td> <td><a href="./projects_basic/full_adder">📂 full_adder</a></td> <td>RTL + Testbench + Simulation + Docs</td> 
      </tr> 
      <tr> <td><b>Ripple Carry Adder (4-bit)</b></td> <td>⬜ Pending</td> <td><a href="./projects_basic/ripple_carry_adder">📂 ripple_carry_adder</a></td> <td>Coming Soon</td> 
      </tr> 
      <tr> <td><b>Multiplexer (4:1)</b></td> <td>⬜ Pending</td> <td><a href="./projects_basic/mux_4to1">📂 mux_4to1</a></td> <td> Next Milestone</td> 
      </tr> 
      <tr> <td><b>Decoder (3:8)</b></td> <td>⬜ Pending</td> <td><a href="./projects_basic/decoder_3to8">📂 decoder_3to8</a></td> <td>In Queue</td> 
      </tr> 
      <tr> <td><b>4-bit ALU</b></td> <td>⬜ Pending</td> <td><code style="color:gray; text-decoration:none;">📂 alu_4bit</code></td> <td>Arithmetic & Logic Core</td> 
      </tr> 
      <tr> <td><b>UART Tx/Rx</b></td> <td>⬜ Pending</td> <td><i style="color:gray; text-decoration:none;">📂 uart_tx_rx</i></td> <td>Serial Communication</td> 
      </tr> 
      <tr> <td><b>16-bit RISC CPU</b></td> <td>⬜ Pending</td> <td><span style="color:gray; text-decoration:none;">📂 risc16_cpu</span></td> <td><b>Ultimate Goal</b></td> 
      </tr> 
    </tbody> 
  </table> 
</div>

---

## 💼 Target Audience

- 🎓 **Students** learning Digital Design & VLSI  
- 🧠 **FPGA/ASIC aspirants** targeting companies like TI, Intel, AMD, Qualcomm, Synopsys, Cadence  
- 🧪 **Researchers/Engineers** seeking reusable Verilog IPs with clean documentation

---

## ✨ Highlights

- ✅ **Industry-style documentation** (reports, coding standards)  
- ✅ **Progressive learning path** from gates to CPUs  
- ✅ **Reusable templates** for rapid project setup  
- ✅ **Simulation + Synthesis outputs included** (not just code)

---

## 👨‍💻 Author

**Krishnarjun Mitra**  
🎓 Final Year B.E. Electronics & Telecommunication Engineering, *Jadavpur University*  
💡 Aspiring **Analog / VLSI Engineer** | Passionate about **RTL Design & Verification**

<p align="center">
  <a href="https://www.linkedin.com/in/krishnarjun-mitra/">
    <img src="https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin"/>
  </a>
  <a href="https://github.com/Krishnarjunmitra">
    <img src="https://img.shields.io/badge/GitHub-Follow-black?style=flat-square&logo=github"/>
  </a>
  <a href="https://krishnarjun-mitra.vercel.app/">
    <img src="https://img.shields.io/badge/Portfolio-Visit-orange?style=flat-square&logo=firefox"/>
  </a>
</p>

---

## 📜 License

This repository is licensed under the **MIT License**.  
📄 See [`LICENSE`](./LICENSE) for full terms.

---

<p align="center">
  ⭐ If you find this repo helpful, consider <b>starring it</b> to support my journey as a VLSI Engineer!
</p>

<p align="center">
  <b>Keep Learning</b><br>
  <b>Thank You</b>
</p>
