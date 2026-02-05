
`timescale 1 ns / 1 ps

	module sentinel_search_ip_slave_lite_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 10
	)
	(
		// Users to add ports here
		(* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)  //TODO: need help with irq (interupt)
		output reg irq, 

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 7;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 256
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_mem [0:127];
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_flag_upper;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_flag_lower;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_status;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_cmd;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg_run;
	integer	 byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	 //state machine varibles 
	 reg [1:0] state_write;
	 reg [1:0] state_read;
	 //State machine local parameters
	 localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11;
	// Implement Write state machine
	// Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
	always @(posedge S_AXI_ACLK)                                 
	  begin                                 
	     if (S_AXI_ARESETN == 1'b0)                                 
	       begin                                 
	         axi_awready <= 0;                                 
	         axi_wready <= 0;                                 
	         axi_bvalid <= 0;                                 
	         axi_bresp <= 0;                                 
	         axi_awaddr <= 0;                                 
	         state_write <= Idle;                                 
	       end                                 
	     else                                  
	       begin                                 
	         case(state_write)                                 
	           Idle:                                      
	             begin                                 
	               if(S_AXI_ARESETN == 1'b1)                                  
	                 begin                                 
	                   axi_awready <= 1'b1;                                 
	                   axi_wready <= 1'b1;                                 
	                   state_write <= Waddr;                                 
	                 end                                 
	               else state_write <= state_write;                                 
	             end                                 
	           Waddr:        //At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state                                 
	             begin                                 
	               if (S_AXI_AWVALID && S_AXI_AWREADY)                                 
	                  begin                                 
	                    axi_awaddr <= S_AXI_AWADDR;                                 
	                    if(S_AXI_WVALID)                                  
	                      begin                                   
	                        axi_awready <= 1'b1;                                 
	                        state_write <= Waddr;                                 
	                        axi_bvalid <= 1'b1;                                 
	                      end                                 
	                    else                                  
	                      begin                                 
	                        axi_awready <= 1'b0;                                 
	                        state_write <= Wdata;                                 
	                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                 
	                      end                                 
	                  end                                 
	               else                                  
	                  begin                                 
	                    state_write <= state_write;                                 
	                    if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                 
	                   end                                 
	             end                                 
	          Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length                                 
	             begin                                 
	               if (S_AXI_WVALID)                                 
	                 begin                                 
	                   state_write <= Waddr;                                 
	                   axi_bvalid <= 1'b1;                                 
	                   axi_awready <= 1'b1;                                 
	                 end                                 
	                else                                  
	                 begin                                 
	                   state_write <= state_write;                                 
	                   if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                 
	                 end                                              
	             end                                 
	          endcase                                 
	        end                                 
	      end                                 

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	 

	// Helper to convert byte address to integer index (0, 1, 2..)
    wire [OPT_MEM_ADDR_BITS:0] loc_addr;
    assign loc_addr = (S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : 
                                        axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

   always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          // Reset discrete registers
          slv_reg_flag_upper <= 0;
          slv_reg_flag_lower <= 0;
          slv_reg_status     <= 0;
          slv_reg_cmd        <= 0;
          slv_reg_run        <= 0;
        end 
      else begin
        if (S_AXI_WVALID) 
          begin
            // ------------------------------------------------------
            // Array Write (Indices 0x00 to 0x7F)
            // ------------------------------------------------------
            if (loc_addr <= 8'h7F) begin  // 0 to 127
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                  if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    slv_reg_mem[loc_addr][(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                  end  
            end
            
            // ------------------------------------------------------
            // Discrete Register Write (Indices 0x80+)
            // ------------------------------------------------------
            else begin
                case (loc_addr)
                  8'h80: // Upper Flag (128)
                    for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                      if ( S_AXI_WSTRB[byte_index] == 1 )
                        slv_reg_flag_upper[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        
                  8'h81: // Lower Flag (129)
                    for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                      if ( S_AXI_WSTRB[byte_index] == 1 )
                        slv_reg_flag_lower[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];

                  // 8'h82: Status Register (130) is Read-Only.
                  
                  8'h83: // Command Register (131)
                    for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                      if ( S_AXI_WSTRB[byte_index] == 1 )
                        slv_reg_cmd[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];

                  8'h84: // Run Register (132)
                    for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                      if ( S_AXI_WSTRB[byte_index] == 1 )
                        slv_reg_run[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];

                  default : begin
                    // Address out of range
                  end
                endcase
            end
          end
      end
    end

	// Implement read state machine
	  always @(posedge S_AXI_ACLK)                                       
	    begin                                       
	      if (S_AXI_ARESETN == 1'b0)                                       
	        begin                                       
	         //asserting initial values to all 0's during reset                                       
	         axi_arready <= 1'b0;                                       
	         axi_rvalid <= 1'b0;                                       
	         axi_rresp <= 1'b0;                                       
	         state_read <= Idle;                                       
	        end                                       
	      else                                       
	        begin                                       
	          case(state_read)                                       
	            Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions                                       
	              begin                                                
	                if (S_AXI_ARESETN == 1'b1)                                        
	                  begin                                       
	                    state_read <= Raddr;                                       
	                    axi_arready <= 1'b1;                                       
	                  end                                       
	                else state_read <= state_read;                                       
	              end                                       
	            Raddr:        //At this state, slave is ready to receive address along with corresponding control signals                                       
	              begin                                       
	                if (S_AXI_ARVALID && S_AXI_ARREADY)                                       
	                  begin                                       
	                    state_read <= Rdata;                                       
	                    axi_araddr <= S_AXI_ARADDR;                                       
	                    axi_rvalid <= 1'b1;                                       
	                    axi_arready <= 1'b0;                                       
	                  end                                       
	                else state_read <= state_read;                                       
	              end                                       
	            Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length                                       
	              begin                                           
	                if (S_AXI_RVALID && S_AXI_RREADY)                                       
	                  begin                                       
	                    axi_rvalid <= 1'b0;                                       
	                    axi_arready <= 1'b1;                                       
	                    state_read <= Raddr;                                       
	                  end                                       
	                else state_read <= state_read;                                       
	              end                                       
	           endcase                                       
	          end                                       
	        end                                         
	// Implement memory mapped register select and read logic generation
	// 1. Calculate the read address index
    //    We use axi_araddr because the state machine has latched the address 
    wire [OPT_MEM_ADDR_BITS:0] loc_addr_read;
    assign loc_addr_read = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

    // 2. Output register to hold selected data
    reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;

    // 3. The Read Multiplexer Logic
    always @(*)
    begin
        // Default to 0
        reg_data_out = 0;

        // --- ZONE 1: Read from Memory Array (Indices 0 to 127) ---
        if (loc_addr_read <= 127) begin
            reg_data_out = slv_reg_mem[loc_addr_read];
        end 
        
        // --- ZONE 2: Read from Discrete Registers (Indices 128+) ---
        else begin
            case (loc_addr_read)
                8'h80: reg_data_out = slv_reg_flag_upper; // Index 128
                8'h81: reg_data_out = slv_reg_flag_lower; // Index 129
                8'h82: reg_data_out = slv_reg_status;     // Index 130
                8'h83: reg_data_out = slv_reg_cmd;        // Index 131
                8'h84: reg_data_out = slv_reg_run;        // Index 132
                default: reg_data_out = 0;
            endcase
        end
    end

    // 4. Drive the AXI Output Signal
    //    If the read state machine is in the data phase, drive the data out.
    assign S_AXI_RDATA = reg_data_out;
    // Add user logic here
    
    //Internal counter
    reg[6:0] current_idx; 
    
    //64 bit search window and sentinel value
    wire [63:0] search_window;
    wire [31:0] current_word; 
    wire [31:0] next_word; 
    wire [63:0] sentinel_value; 
    
    //Assign the bounds, with wrap around logic
    assign current_word = slv_reg_mem[current_idx];
    assign next_word = (current_idx == 127) ? slv_reg_mem[0] : slv_reg_mem[current_idx + 1]; //for self, (condition) ? if_true : if_false
    
    //Create the 64 bit window
    assign search_window = {current_word, next_word}; 
    
    //Create the full sentinel value, the target
    assign sentinel_value = {slv_reg_flag_upper, slv_reg_flag_lower};
    
    always @(posedge S_AXI_ACLK) begin  
        if (S_AXI_ARESETN == 1'b0 ) begin
            current_idx     <= 0; //set index to 0
            slv_reg_status  <= 0; 
            irq             <= 1'b0;
        end else begin 
            if (slv_reg_run[0] == 1'b1 && slv_reg_status[0] == 1'b0) begin 
                if(search_window == sentinel_value) begin   // MATCH FOUND 
                    slv_reg_status[0]      <= 1'b1;         // Set Match Found bit
                    slv_reg_status[22:16]  <= current_idx;  // Store offset (lower register index)
                    irq                    <= 1'b1;         // Pulse IRQ high
                end else if (current_idx == 127) begin      // WRAP AROUND, NO MATCHES
                    slv_reg_status[0]      <= 1'b0;         // No match
                    slv_reg_status[31:1]   <= 0;            // Clear offset if not found
                    irq                    <= 1'b0;         // IRQ remains low
                end else begin                              // INCEMENT SEARCH
                    current_idx <= current_idx + 1;         // Add one
                    irq         <= 1'b0;                    // IRQ remains low
                    //clear slv_reg_run??
                end
            end else begin // Reset state if CPU clears the Run bit
                if (!slv_reg_run[0]) begin
                    current_idx    <= 0;
                    slv_reg_status <= 0;
                    irq            <= 1'b0;
                end
            end
        end
    end  
                 
                    
                
    
    

	// User logic ends

	endmodule
