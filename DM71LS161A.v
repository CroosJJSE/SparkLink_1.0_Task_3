module DM71LS161A (Clear, Clock, Load, En_P, En_T, D_in, D_out, Cout);
	// Defining inputs and outputs
	input Clear, Clock, Load, En_P, En_T;
	input [3:0] D_in;
	output wire [3:0] D_out;
	output reg Cout;
    
reg [3:0]count; 
always @(posedge Clock)  begin
    if (!Clear) begin
        count= 4'b0;
    end
    else if (!Load) begin
        count = D_in;
    end
    
end

always @(posedge Clock) begin
    if (En_P & En_T) begin
    if (count==4'b1111) begin count=4'b0; Cout =0; end
    else 
        count=count+1;
        
    end
end

always @(posedge Clock) begin
    if (count==4'b1111) begin
        Cout = 1;
    end
    else Cout=0;
end
assign D_out = count;
endmodule

