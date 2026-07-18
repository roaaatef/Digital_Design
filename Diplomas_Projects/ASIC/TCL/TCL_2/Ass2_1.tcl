puts "****Writing Verilog Block Interface****"
set modname "Up_Dn_Counter"
set in_ports [list IN\
                    Load\
					Up\
					Down\
					CLK]
set in_ports_width [list 4\
                         1\
						 1\
						 1\
						 1]


set out_ports [list High\
                    Counter\
					Low]
set out_ports_width [list 1\
                          4\
						  1]
set fh [open Iinetrface.txt w]
puts $fh "module $modname (\n"
foreach A $in_ports {
puts $fh " input          $A,\n"  
}
foreach B $out_ports {
puts $fh " output          $B,\n"  
}
close $fh
set fh [open Iinetrface.txt r]
set data [read $fh]
close $fh
regsub "input          IN"  $data " input  \[[expr [lindex $in_ports_width 0]-1]:0\]  IN" data
regsub  -all "input" $data "input" data
regsub "output          C"  $data " output  \[[expr [lindex $out_ports_width 1]-1]:0\]   C" data
regsub   "output" $data "output" data
regsub "Low," $data "Low" data
set fh [open Iinetrface.txt w]
puts $fh $data
puts $fh ");"
close $fh
puts "$data"
puts " \n );"
puts "my name is :Roaa Atef"		

