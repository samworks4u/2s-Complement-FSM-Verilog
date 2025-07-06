# 2s-Complement-FSM-Verilog
FSM-based 2's Complement Implementation in Verilog with Post-Synthesis and Timing Simulation
## 🔁 How 2's Complement is Implemented Using FSM

Most people know 2’s complement as:
> Invert all bits and add 1.

But this FSM-based implementation takes a different approach — closer to how hardware might handle it step-by-step:

🔹 **FSM Logic:**
- Start from the **LSB** (Least Significant Bit)
- **Copy bits as-is** until the **first '1'** is encountered
- After that, **invert all remaining bits**

This is the core logic I’ve implemented using a Finite State Machine. It breaks the task into a set of simple states, making it a great way to understand sequential logic flow in hardware.

---

## 🧪 Simulation and Verification Flow

Getting the logic right is only the first step. Here's why **behavioral and post-synthesis simulations** are crucial:

### ✅ 1. Behavioral Simulation (RTL Level)
- Run the testbench with your Verilog FSM code
- Verify the **waveform matches expected behavior**
- Ensures your **logic is correct** at a high level
![image](https://github.com/user-attachments/assets/b1f47f6b-3539-4dd5-a9e5-f80da8d3fb89)

### 🔄 2. Post-Synthesis Functional Simulation
- After synthesis, your FSM is converted to a **gate-level netlist**
- Simulate this netlist functionally (without timing)
- Confirm that the **waveform still matches** your RTL simulation
![image](https://github.com/user-attachments/assets/a5507e8e-74dd-488d-94e8-2ef4308c8ca0)

### ⏱️ 3. Post-Synthesis Timing Simulation
- Now simulate using the netlist **with timing delays**
- This shows how your design behaves with **actual gate delays**
- Final check to ensure waveform correctness holds up in real conditions
- also due to considertion of actual delays of components , outcode is generated with a delay of 6.425 with respeect to the clock
![image](https://github.com/user-attachments/assets/7b44eee2-0090-4fe8-b8f6-1afb7caa41ed)

---

✅ **Key Point**: Your waveform **must match across all stages** — behavioral, post-synthesis functional, and post-synthesis timing simulations (here with delays). That’s how you ensure your design is robust and hardware-ready.
![image](https://github.com/user-attachments/assets/b62bbba5-8b87-42af-aca2-a3ba3792d6c9)


