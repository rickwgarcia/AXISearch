**Two ways to handle an Interrupt Request (IRQ)**
1. Trigger an interrupt only when a **match** is found. 
2. Trigger an interrupt whenever the search is **complete**, whether it found a match or not.
For embedded systems , the second option is preferred because it prevents the software from waiting forever if a match is never found. 


**[[Run (Start Search)]]:**
- What happens when the [[MicroBlaze]] writes 1 to to the Run (Start Search) register? Should that register stay at 1 while the hardware is working?  
- No, it should clear and go back to 0, so the [[MicroBlaze]] isn't left waiting. 
- If the MicroBlaze sees the `Run` bit transition from `1` to `0`, it knows the FSM has returned to its **Idle** state and the `STATUS` register now contains the final result of the operation.

**[[Driver Structure]]:**
This is how exactly we will get the data from the [[MicroBlaze]] memory to the [[IP Core]]'s 128 registers. 
1. **`SENTINEL_TransferData(...)`**: Copies a block of memory to the hardware.
2. **`SENTINEL_SetPattern(...)`**: Sets the 64-bit target.
3. **`SENTINEL_StartSearch(...)`**: Triggers the FSM.
4. **`SENTINEL_GetStatus(...)`**: Reads the results.
Sample C code for transfer
```
void SENTINEL_TransferData(u32 base_addr, u32 *source_ptr) {
    for (int i = 0; i < 128; i++) {
        // Calculate the address of the specific data register
        u32 reg_addr = base_addr + DATA_START_OFFSET + (i * 4);
        
        // Write the data from the source array to the hardware
        Xil_Out32(reg_addr, source_ptr[i]);
    }
}
```