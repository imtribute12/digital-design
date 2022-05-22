module cont_shifter(clk, signal);

reg [7:0] data;

wire [7:0] dataSwapper;

input [1:0]signal;
input clk;

shifter shift(data, dataSwapper, signal);

initial
	begin 
		data = 8'b01101010;
	end

always @(clk)
	case(signal)
		2'b00: data =  data;
		2'b01: data =  8'b01101010;
		2'b10: data =  8'b10010110;
		2'b11: data =  8'b01010011;
	endcase
endmodule