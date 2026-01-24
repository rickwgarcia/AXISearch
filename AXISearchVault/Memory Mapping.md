
| **Byte Offset** | **Register Name** | **Access** | **Description**                                              |
| --------------- | ----------------- | ---------- | ------------------------------------------------------------ |
| **`0x000`**     | `SENTINEL_LO`     | R/W        | Lower 32 bits of the 64-bit sentinel pattern.                |
| **`0x004`**     | `SENTINEL_HI`     | R/W        | Upper 32 bits of the 64-bit sentinel pattern.                |
| **`0x008`**     | `DATA_START`      | R/W        | Start of the 128-word data block (Index 0).                  |
| ...             | ...               | ...        | ...                                                          |
| **`0x204`**     | `DATA_END`        | R/W        | End of the 128-word data block (Index 127).                  |
| **`0x208`**     | `STATUS`          | RO         | `[0]`: Match Found, `[22:16]`: Match Offset, `[31]`: Done.   |
| **`0x20C`**     | `CONTROL`         | R/W        | `[0]`: [[Run (Start Search)]], `[8:1]`: Config/Command bits. |

**[[Registers]]:**
- The addressL Each register has a unique number (offset) so the microblaze knows where to send the data
- Since [[MicroBlaze ]]is a 32-bit processor, it prefers to send data in 32-bit "packets." Each register is designed to hold exactly 32 bits.

**[[Alignment]]**
Refers to how the data is organized and accessed, because it is 32 bit, this means that the [[AXI4-Lite]] only delivers in multiples of 4 bytes, this is basically the postal service. 

|**Byte Offset**|**Register Index**|**Purpose**|
|---|---|---|
|`0x00`|Register 0|First 32 bits|
|`0x04`|Register 1|Second 32 bits|
|`0x08`|Register 2|Third 32 bits|

**[[Distributed RAM vs Block RAM]]:** 
- **Distributed RAM** allows the AXI interface to see all 128 registers as individual wires, making the logic simpler but consuming many FPGA resources.
- **Block RAM** is much more efficient for storage but requires a slightly more complex AXI interface because it can only read/write one address at a time.


**[[Sentinel Value]]**
- The flag value, what we are looking for
- 64 bits long, but our registers are only 32 bits wide
- This is why we only need two registers `SENTINEL_LO` and `SENTINEL_HI`
- We are going to need a [[Sliding Window]] search because it may not align perfectly on a register

[[Endianness]]
In an AXI-based system, it is standard to use little endian. Lets say our sentinel value is 0xAAAAAAAABBBBBBBB, this means:

| **Register Name** | **Offset** | **Value (Hex)** | **Description**                   |
| ----------------- | ---------- | --------------- | --------------------------------- |
| `SENTINEL_LO`     | `0x00`     | `0xBBBBBBBB`    | Lower 32 bits (Least Significant) |
| `SENTINEL_HI`     | `0x04`     | `0xAAAAAAAA`    | Upper 32 bits (Most Significant)  |
