module jk_flipflop(j, k, Q, Q_not, clk, reset);

input wire j,k,clk,reset;

wire nQ, nQ_not;

output reg Q,Q_not;

not(nQ,Q);
not(nQ_not,Q_not);
always @(posedge clk or posedge reset) begin

  if(reset)

            begin
            Q=1'b0;
            Q_not=1'b1;
            end 
  else 

    begin
          case({j,k})
            {1'b0,1'b0}: 
		begin Q=Q;Q_not=Q_not; 
		end

            {1'b0,1'b1}: 
		begin Q=1'b0;Q_not=1'b1; 
		end

            {1'b1,1'b0}: 
		begin Q=1'b1;Q_not=1'b0; 
		end

            {1'b1,1'b1}: 
		begin Q=nQ; Q_not=nQ_not; 
		end
          endcase
    end
 end
endmodule