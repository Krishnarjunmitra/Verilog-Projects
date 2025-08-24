# Contribution Guidelines

We welcome contributions 🎉. Please follow these rules to maintain consistency:

## 🚀 How to Contribute

1. **Fork** the repository.
2. **Clone** your fork:  
   ```bash
   git clone https://github.com/Krishnarjunmitra/Verilog-Projects.git
   ```

3. **Create a new Branch**
   
   ```bash
   git checkout -b feature/my_new_module
   ```
    - ***Branch Naming Convention :***
      - `feature/<module_name>` → For new designs
      - `bugfix/<issue_number>` → For fixes
      - `docs/<topic>` → For documentation updates

4. **Coding Standards**
   - Follow the [STYLE_GUIDE.md](STYLE_GUIDE.md).
   - Testbenches must always use `$finish;` to stop simulation.
   - Every design must include a **testbench** before submission.

5. **Commit Messages**
   - Use **imperative mood** (e.g., "Add half adder testbench").
   - Reference issues if applicable (`Fix #12`).

6. **Documentation**
   - Every project must include:
     - RTL source files (`.v`)
     - Testbench (`_tb.v`)
     - Exported waveform screenshot/CSV
     - Project README.md


## 📂 Project Folder Rules

Each project must include:

* `src/` (RTL Verilog code)
* `tb/` (testbenches)
* `sim/` (waveforms, truth tables)
* `docs/` (project report, schematics)
* `README.md` (summary)

## ✅ Checklist Before PR

* [ ] Code is clean and commented.
* [ ] Testbench covers **all input cases**.
* [ ] Simulation screenshots added in `sim/`.
* [ ] Documentation updated.

Thanks for your interest in contributing to **Verilog-Projects**! 🎉

