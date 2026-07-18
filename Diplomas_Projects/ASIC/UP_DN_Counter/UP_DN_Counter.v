module UP_DN_Counter(
input [4:0] IN,
input Load,
input UP,DOWN,
input CLK,
output reg [4:0] COUNTER,
output HIGH,LOW
	);

always @(posedge CLK)
  begin
  	if (Load)
  	begin
  		COUNTER<=IN;
  	end
  	else if (DOWN && !LOW)
  	begin
  		COUNTER<=COUNTER-5'b00001;
  	end
  	else if (UP && !HIGH && !DOWN)
  	begin
  		COUNTER<=COUNTER+5'b00001;
  	end


  end
//low and high  signals logic
assign LOW=(COUNTER==5'b00000)?1:0;
assign HIGH=(COUNTER==5'b11111)?1:0;
endmodule