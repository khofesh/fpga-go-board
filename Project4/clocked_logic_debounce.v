module clocked_logic
	(input i_Clk,
	input i_Switch_1,
	output o_LED_1);
	
	reg r_LED_1 = 1'b0;
	reg r_Switch_1 = 1'b0;
	wire w_Switch_1;
	
	// instantiate debounce filter
	debounce_switch Instance
		(.i_Clk(i_Clk),
		.i_Switch(i_Switch_1),
		.o_Switch(w_Switch_1)
		);

	always @(posedge i_Clk)
		begin
			r_Switch_1 <= w_Switch_1; // creates a register
			
			if (w_Switch_1 == 1'b0 && r_Switch_1 == 1'b1) // falling edge
				begin
					r_LED_1 <= ~r_LED_1; // toggled the LED
				end
		end
	
	assign o_LED_1 = r_LED_1;

endmodule // clocked_logic