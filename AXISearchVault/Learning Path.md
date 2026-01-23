
This roadmap outlines the steps to design, implement, and test an AXI-compatible IP core for sentinel pattern detection on a Zybo-Z7.

## Phase 1: Architecture & AXI Lite Fundamentals

Before writing code, you must understand how the [[MicroBlaze]] communicates with your hardware.

* **[[AXI4-Lite Protocol]]:** Learn the 5-channel handshake (AW, W, B, AR, R). Since you need 128+ registers, you’ll be implementing a Register Map.
* **[[Memory Mapping]]:** Plan your address space.
* *Task:* Create an Excel sheet or table mapping offsets (e.g., `0x00`, `0x04`) to your registers (Sentinel, Data Block, Status, Control).
* **[[Vivado IP Packager]]:** Explore the "Create and Package New IP" wizard. It generates a template with the AXI-Lite interface logic already written for you.

## Phase 2: RTL Logic & FSM Design

This is the "brain" of your IP core. You will modify the generated AXI template to include your search logic.

* **The Register File:** Implement the 128 x 32-bit array.
* *Challenge:* In Verilog/VHDL, ensure the AXI bus can write to these, but your FSM can read from them.


* **[[Finite State Machine]] (FSM):** Design a state machine with at least these states:
1. **IDLE:** Waiting for the `Run` bit.
2. **COMPARE:** Concatenating `Reg[n]` and `Reg[n+1]` to check against the 64-bit sentinel.
3. **INCREMENT:** Moving the index and checking for the "wrap-around" condition (Reg 127 + Reg 0).
4. **DONE:** Setting the Status register and triggering the IRQ.

* **Edge Alignment Logic:** Practice shifting and masking logic to ensure you are comparing the 64-bit window correctly across 32-bit boundaries.

## Phase 3: Interrupts & Integration

Hardware isn't useful if the software doesn't know when it's finished.

* **[[Interrupt Signals]]:** Learn how to pulse a signal that stays high until the MicroBlaze acknowledges it.
* **Block Design:** 1.  Instantiate the **MicroBlaze** or **Zynq PS**.
2.  Add your custom IP.
3.  Use the **AXI Interconnect** and **Interrupt Controller (Intc)** to wire them together.
* **Clocking & Resets:** Ensure your IP is tied to the same `s_axi_aclk` as the rest of the peripheral bus.

## Phase 4: Software Driver Development (C Code)

Now you transition to Vitis to write the "Driver."

* **Base Address Mapping:** Use `#define` statements for the base address of your IP (found in the Vivado Address Editor).
* **Function Implementation:**
* `Data_Transfer(u32* source)`: A loop using `Xil_Out32` to push 4KB into your IP registers.
* `Set_Sentinel(u64 pattern)`: Breaking a 64-bit long into two 32-bit writes.
* `Search_Start()`: A simple mask-write to the Control register.


* **Interrupt Service Routine (ISR):** Write the handler that clears the interrupt and reads the result from the Status register.

## Phase 5: Simulation & Verification

"Testbench first" saves hours of debugging on the board.

* **Behavioral Simulation:** Create a testbench that mimics AXI writes. Verify that when you "Run," the FSM iterates through the registers and stops at the correct offset.
* **Hardware-in-the-loop:** Use the **ILA (Integrated Logic Analyzer)** in Vivado to "probe" the internal signals of your IP while it's running on the Zybo-Z7.

---