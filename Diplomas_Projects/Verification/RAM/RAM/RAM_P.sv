package RAM_P;
	localparam TESTS=100;
//dynamic array to store random addresses//
 typedef logic [15:0] address_array_t [];
 //dynamic array to  Stores corresponding random data values//
 typedef logic [7:0] data_to_write_array_t [];
  //associative  array : Stores expected data, indexed by address//
  typedef logic [7:0] data_read_expect_assoc_t [int];
//queue to  Stores the actual data read from the RAM //
typedef logic [7:0] data_read_queue_t [$];
endpackage 
