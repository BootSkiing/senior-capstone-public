// Memory Monitor

// Start of Module
module monitor (
    clk,
	data_addr,
	data_wen,
	reset
);

parameter WRITE_THRESHOLD = 10;     // Write limit per time window
parameter WINDOW_SIZE = 2000;       // Clock ticks per time window
parameter NVMEM_START = 'hE000;     // Start of non-volatile memory space
integer write_count = 0;            // Records memory writes
integer time_count = 0;             // Records clock flops

input clk;                          // Clock, 1 bit
input [15:0] data_addr;	            // Data address, 16 bits
input data_wen;	                    // Write-enable, 1 bit
output reset;		                // Reset, 1 bit


// Main logic ///
// Send reset signal when write threshold is reached (using fixed-window rate limiting)

// Write-Detection Block
always @(posedge clk) begin
    if (data_wen && (data_addr >= NVMEM_START))     // Increment write counter when write bit is flipped and address is in non-volatile memory
	   write_count = write_count + 1;
    if (time_count == WINDOW_SIZE)                  // At end of window, reset write counter
        write_count = 0;
end

// Clock Block
always @(posedge clk) begin
    time_count = time_count + 1;                    // Increment time counter for each clock tick
    if (time_count > WINDOW_SIZE)                   // Reset time counter at end of window
        time_count = 0;
end

// Reset Assign
assign reset = (write_count == WRITE_THRESHOLD);    // Reset device if write count reaches write threshold
endmodule
