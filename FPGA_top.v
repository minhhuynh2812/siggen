module sigen_top(
	input		clk,
	input [7:0] sw,
	input [3:0] btn,
	output 		pmod

	
);

reg [29:0] counter = 0; // 5 seconds = 125,000,000 clock cycles
reg square_out =0;
assign pmod = square_out;

/*
case(btn)
		4'b0000: square_wave; //call square wave function
		4'b0001: sawtooth_wave;
		4'b0010: triangle_wave;
		4'b1000: // no op/reset/sine
endcase
*/

always@(posedge clk)
begin //always block

	counter <= counter +1;

	if ( counter == 'd125_000 )
		begin
		square_out <= ~square_out;
		counter <= 0;
		end
end //always block

endmodule