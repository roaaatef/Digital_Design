module Clock_Divider #(parameter Width = 16)(
input wire Clk_ref,
input wire RST,
input wire [Width - 1:0]Divisor,
output wire Clk_out
);
//internal signals
wire enable_Divison;
wire is_zero;
wire is_one;
wire is_odd_even;
wire [Width -2 : 0] half_period ;
wire [Width -1 : 0] full_period ;
reg Div_Clk_O;
// counter
reg  [ Width - 1:0 ] Counter ;
//Assignments
assign is_zero = (Divisor == 0)? 1'b1 : 1'b0 ;
assign is_one =  (Divisor == 1)? 1'b1 : 1'b0 ;
assign enable_Divison = (~is_zero) && (~is_one);
assign is_odd_even = Divisor [0];
assign full_period = ((Divisor-1));
assign half_period = ((Divisor >> 1)-1) ;
assign Clk_out = ((!enable_Divison) && (!RST))? Clk_ref : Div_Clk_O ;
//Design functionality
always @(posedge Clk_ref or posedge RST) begin
    if ( RST ) begin
        Counter <= 'b0;
        Div_Clk_O <= 'b0;
    end
    else if (enable_Divison) begin
            if  ((!is_odd_even) && Counter == half_period) 
				begin 
					Div_Clk_O <= ~ Div_Clk_O ;
                    Counter <= 'b0 ;
				end
            else if ((is_odd_even) && (Counter == half_period)) 
                begin
                    Div_Clk_O <= ~ Div_Clk_O ;
                    Counter <= Counter + 'd1;
                end
           else if  ((is_odd_even) && (Counter == full_period))  
                begin
                    Div_Clk_O <= ~ Div_Clk_O ;
                    Counter <= 'b0;
                end
            else 
                begin
                    Counter <= Counter + 'd1;
                end
        end
    else 
        Counter <= 'b0; 
    end
endmodule