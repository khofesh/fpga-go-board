module debounce_switch
	(input i_Clk,
	input i_Switch,
	output o_Switch);

	parameter c_DEBOUNCE_LIMIT = 250000; // 10 ms at 25 MHz
	
	reg r_State = 1'b0;
	reg [17:0] r_Count = 0; // 2^18 - 18 bits
	
	always @(posedge i_Clk)
		begin
			if (i_Switch !== r_State && r_Count < c_DEBOUNCE_LIMIT)
				r_Count <= r_Count + 1; // counter
			else if (r_Count == c_DEBOUNCE_LIMIT)
				begin
					r_Count <= 0;
					r_State <= i_Switch;
				end
			else
				r_Count <= 0;
		end
	
	// DOESN'T WORK
	// for (r_Count = 0; r_Count < c_DEBOUNCE_LIMIT; r_Count++)
	
	assign o_Switch = r_State;
endmodule // debounce_switch