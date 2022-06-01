module ff_tb();
	reg clk,reset,j,k;        
	
	wire [3:0] q;   
	wire [3:0] q_bar;
	wire nclk;

not(nclk,clk);

counter uut (.Q(q),.Q_not(q_bar),.clk(clk),.reset(reset));
	initial begin
		clk = 1;    
		reset = 1;  
		j = 1;  
		k = 1;

		#100 reset = -0;    
		#4000 $finish;
	end
always #50 clk <= nclk;    
endmodule