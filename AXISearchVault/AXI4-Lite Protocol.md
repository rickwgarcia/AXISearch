
# AXI-Stream
![](https://www.youtube.com/watch?v=GyYmSZZor1s)

| **Signal** | **Status** | **Notes**                                                                                                                                         |
| ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **TVALID** | Required   |                                                                                                                                                   |
| **TREADY** | Optional   | TREADY is optional, but highly recommended.                                                                                                       |
| **TDATA**  | Optional   |                                                                                                                                                   |
| **TSTRB**  | Optional   | Not typically used by end-point IP; available for sparse stream signalling. Note: For marking packet remainders, TKEEP rather than TSTRB is used. |
| **TKEEP**  | Absent     | Null bytes are only used for signaling packet remainders. Leading or intermediate Null bytes are generally not supported.                         |
| **TLAST**  | Optional   |                                                                                                                                                   |
| **TID**    | Optional   | Not typically used by end-point IP; available for use by infrastructure IP.                                                                       |
| **TDEST**  | Optional   | Not typically used by end-point IP; available for use by infrastructure IP.                                                                       |
| **TUSER**  | Optional   |                                                                                                                                                   |

There are three different combination of valid and ready we can have:
![[Pasted image 20260123153515.png]]
![[Pasted image 20260123154031.png]]
![[Pasted image 20260123154053.png]]
- Valid high, the master is saying it has signals is wants to give
- Ready indicates that the slave is ready to receive data 
- When both are high data is valid
- Always AND the VALID an READY, this is needed to confirm valid sample

**What is [[FIFO]]?** In FPGA design, a FIFO (First-In-First-Out) is a dual-port memory buffer used to transfer data between different parts of a system. It acts like a queue: the first piece of data written into the buffer is the first one to be read out.

In the context of AXI4, FIFOs are the "glue" that ensures high-performance, reliable communication between IP cores.
# AXI4-Lite

![](https://www.youtube.com/watch?v=p5RIVEuxUds)

**AXI-Stream Rules Summary**
1.  Valid can't depend on ready
2. Data remains constant
3. Valid remains high constantly 
4. Transaction end when ready and valid are both asserted








