module pre_len (
	input en, clk, init,
	input[7:0] data_in,
	output logic done,
	output logic[3:0] pre_length);
 
always @(posedge clk) begin
	if (init) begin
		done <= 0;
		pre_length <= 7;
	end
	if (en) begin
		if (data_in == 8'h5f) begin
			pre_length <= pre_length + 1;
		end
		else begin
			done <= 1;	
		end
	end
end
	


endmodule