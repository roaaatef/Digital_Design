import RAM_P::*;
module RAM_TB();
	localparam TESTS=100;
//dynamic array to store random addresses//
 address_array_t address_array ;
 //dynamic array to  Stores corresponding random data values//
 data_to_write_array_t data_to_write_array ;
  //associative  array : Stores expected data, indexed by address//
  data_read_expect_assoc_t data_read_expect_assoc ;
//queue to  Stores the actual data read from the RAM //
data_read_queue_t data_read_queue ;
//////////////////////extra signals/////////////////
reg [7:0] error_count,correct_count;
reg [7:0] value;
reg parity_expected,parity_out;
/*...........................inputs and outputs .....*/
reg clk; 
reg write; 
reg read;
reg [7:0] data_in; 
reg [15:0] address; 
wire [8:0] data_out;
/*...................DUT..............*/
 RAM  dut( clk, write, read, data_in, address, data_out );
/*................clock generation...............*/
initial begin
	clk=0;
	forever #1 clk=~clk;
end
/*..............stimulus generation task..............*/
task stimulus_gen;
////////////address randomization//////////////
	for (int i=0;i<TESTS;i=i+1) begin
		  address_array[i] = $random;
	end
////////////data radomization//////////////////
	for (int i=0;i<TESTS;i=i+1) begin
		 data_to_write_array [i] = $random;
	end
endtask 
/*.........................golden model task................*/
task golden_model;
	///////////////////expected data out //////////////
	for (int i=0;i<TESTS;i=i+1) begin
		data_read_expect_assoc[address_array[i]]=data_to_write_array[i];
		parity_expected=~^data_to_write_array[i];
	end
endtask
/*.................task to check output ............*/
task check9Bits;
@(negedge clk);
if ((data_out[7:0]!=data_read_expect_assoc[address])&(data_out[8]!=parity_expected))
begin
		$display("...................***test case failed***...........................");
		error_count=error_count+1;
	end
	else begin
		$display(".....................***test case passed***..................");
		correct_count=correct_count+1;
	end	
endtask
/*...............initial block implementation...........*/
integer j;
initial begin
	///////intialization/////////
	data_to_write_array=new[TESTS];
	address_array=new[TESTS];
	error_count=0;
	correct_count=0;
	j=0;
	value=0;
parity_expected=0;
/////////////stimulus gen calling//////
	stimulus_gen();
//////////golden model calling//////////
	golden_model();
////////////////////////////////////***write operation***////////////////////////////
//write enable//
@(negedge clk);
write=1;
for (int i=0;i<TESTS;i=i+1) begin
	data_in=data_to_write_array[i];
	address=address_array[i];
	@(negedge clk);
end
//write disable//
write=0;
//////////////////////////***READ operation***/////////////////////////////////////////
//read enable//
read=1;
for (int i=0;i<TESTS;i=i+1) begin
address=address_array[i];
check9Bits();
data_read_queue.push_back(data_out);
end
//read disable//
read=0;
///////////////////////////
j=data_read_queue.size();
////////////////////////***Test completion and Reporting***/////////////////////////
 while (j>0) begin
 	j=j-1;	
      value = data_read_queue.pop_front();   // remove and return first element
      $display("Value of queue index number %d is : %d",TESTS-j-1,value);
    end
$display("error_count value is : %d ...........correct_count value is : %d",error_count,correct_count);
$stop;
end
endmodule