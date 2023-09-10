module CD4017 (
    	input wire clk,   // Clock input
	input wire reset, // Reset input
	input wire clock_en, // clock enable
    	output reg [9:0] outputs, // Outputs Q0-Q9
    	output wire carry_out // Carry Out (CO) signal
);


reg [3:0]temp;
reg tem_carry;
always @(posedge clk or posedge reset ) begin
    if (reset) begin    
        temp = 10'b0;        
    end
    else if(!clock_en) begin
    temp=temp+1; 
    if (temp>9) temp=0;       
    end

end
always @(*) begin
    case (temp)
            4'd0:  outputs = 10'b0000000001; 
            4'd1: outputs = 10'b0000000010;
            4'd2: outputs = 10'b0000000100;
            4'd3: outputs = 10'b0000001000;
            4'd4: outputs = 10'b0000010000;
            4'd5: outputs = 10'b0000100000;
            4'd6: outputs = 10'b0001000000;
            4'd7: outputs = 10'b0010000000;
            4'd8: outputs = 10'b0100000000;
            4'd9: outputs = 10'b1000000000;
            default: outputs = 10'bxxxxxxxxxx;
        endcase
end
always @(*) begin 
   if (temp<5)begin 
        tem_carry=1;  
   end
   else tem_carry=0;
end

assign carry_out=tem_carry;
endmodule

